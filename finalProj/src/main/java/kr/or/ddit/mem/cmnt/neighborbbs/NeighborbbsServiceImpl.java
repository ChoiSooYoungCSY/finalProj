package kr.or.ddit.mem.cmnt.neighborbbs;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.ReviewMapper;
import kr.or.ddit.mapper.RstrntMapper;
import kr.or.ddit.mapper.RstrntRecomMapper;
 import kr.or.ddit.vo.ReviewVO;
import kr.or.ddit.vo.RstrntRecomVO;
import kr.or.ddit.vo.RstrntVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class NeighborbbsServiceImpl implements NeighborbbsService{



	@Inject
	ReviewMapper reviewMapper;

	@Inject
	RstrntRecomMapper rstrntRecomMapper;

	@Inject
	RstrntMapper rstrntMapper;

	@Override
	public List<ReviewVO> selectReviewsByRstrntId(RstrntVO rstrntVO) {
		return this.reviewMapper.selectReviewsByRstrntId(rstrntVO);
	}

	@Override
	public int insertReview(ReviewVO reviewVO) {
		reviewVO.setLastUpdusrId(reviewVO.getFrstWrterId());
		String visitYmd = reviewVO.getVisitYmd();
		visitYmd = visitYmd.replaceAll("-", "");
		reviewVO.setVisitYmd(visitYmd);
		return this.reviewMapper.insertReview(reviewVO);
	}

	@Override
	public RstrntRecomVO selectRecomBymemID(RstrntRecomVO rstrntRecomVO) {
		return this.rstrntRecomMapper.selectRecomBymemID(rstrntRecomVO);
	}

	@Override
	public List<RstrntVO> selectAllRstrnt() {
		return this.rstrntMapper.selectAllRstrnt();
	}

	@Override
	public int registRstrnt(RstrntVO rstrntVO) {

		String wrterId = rstrntVO.getFrstWrterId();
		rstrntVO.setLastUpdusrId(wrterId);

		String uploadFileName = "";
		MultipartFile multipartFile = rstrntVO.getMultipartfile();
		File uploadPath = new File("C:\\eGovFrameDev-4.1.0-64bit\\workspace\\finalProj\\src\\main\\webapp\\resources\\images\\restaurant");
		if (!uploadPath.exists()) {
        	uploadPath.mkdirs();
        }
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + multipartFile.getOriginalFilename();
		log.info("registRstrnt Service :" +uploadFileName);
		// 설계
		File saveFile = new File(uploadPath, uploadFileName);
		try {
			multipartFile.transferTo(saveFile);
		} catch (IllegalStateException | IOException e) {
			log.error("맛집 사진 저장 중 에러 발생 "+e.getMessage());
		}
		rstrntVO.setRstrntImg(uploadFileName);
		return this.rstrntMapper.registRstrnt(rstrntVO);
	}

	@Override
	public List<ReviewVO> selectAllReviews(Map<String, String> map) {
		return this.reviewMapper.selectAllReviews(map);
	}

	@Override
	public int getTotal(Map<String, String> map) {
		return this.reviewMapper.getTotal(map);
	}

	@Override
	public int deleteReview(int reviewNo) {
		return this.reviewMapper.deleteReview(reviewNo);
	}



}
