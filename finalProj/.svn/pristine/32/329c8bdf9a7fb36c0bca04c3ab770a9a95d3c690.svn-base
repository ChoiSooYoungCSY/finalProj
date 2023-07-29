package kr.or.ddit.mem.memaidoran;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.AIMapper;
import kr.or.ddit.mapper.BookRecomMapper;
import kr.or.ddit.mapper.RstrntMapper;
import kr.or.ddit.mapper.RstrntRecomMapper;
import kr.or.ddit.mapper.ScndhdBbsMapper;
import kr.or.ddit.vo.BookRecomVO;
import kr.or.ddit.vo.ReviewVO;
import kr.or.ddit.vo.RstrntRecomVO;
import kr.or.ddit.vo.RstrntVO;
import kr.or.ddit.vo.ScndhdBbsVO;
import kr.or.ddit.vo.ScndhdRecomVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemAIDoranServiceImpl implements MemAIDoranService {

	@Inject
	RstrntRecomMapper rstrntRecomMapper;

	@Inject
	AIMapper aiMapper;

	@Inject
	RstrntMapper rstrntMapper;

	@Inject
	BookRecomMapper bookRecomMapper;

	@Inject
	ScndhdBbsMapper scndhdBbsMapper;

	//식당 추천
	@Override
	public RstrntVO rstrntCount() {
		return this.aiMapper.rstrntCount();
	}

	@Override
	public List<RstrntVO> rstrntCntBySe() {
		return this.aiMapper.rstrntCntBySe();
	}


	@Override
	public RstrntVO rstrntReviewCnt() {
		return this.aiMapper.rstrntReviewCnt();
	}

	@Override
	public List<RstrntVO> bestReviewCntRstrnt() {
		return this.aiMapper.bestReviewCntRstrnt();
	}

	@Override
	public List<RstrntVO> selectRecomBymemID(RstrntRecomVO rstrntRecomVO) {
		List<RstrntVO> rstrntRecomList = new ArrayList();

		RstrntRecomVO rstrntVO = this.rstrntRecomMapper.selectRecomBymemID(rstrntRecomVO);

		String firstRecom = rstrntVO.getFirst();
		String secondRecom = rstrntVO.getSecond();
		String thirdRecom = rstrntVO.getThird();

		rstrntRecomList.add(this.rstrntMapper.selectOneRstrnt(firstRecom));
		rstrntRecomList.add(this.rstrntMapper.selectOneRstrnt(secondRecom));
		rstrntRecomList.add(this.rstrntMapper.selectOneRstrnt(thirdRecom));

		return rstrntRecomList;

	}

	@Override
	public List<ReviewVO> selectReviewCountByGender(String rstrntId) {
		return this.aiMapper.selectReviewCountByGender(rstrntId);
	}


	// 도서 추천 서비스
	// 게시글 목록보기
	@Override
	public List<Map<String, Object>> list(BookRecomVO bookRecomVO) {
		return this.bookRecomMapper.list(bookRecomVO);
	}

	//중고장터 게시글 추천
	@Override
	public List<ScndhdBbsVO> selectRecomList(String memId) {
		ScndhdRecomVO scndhdRecomVO = this.scndhdBbsMapper.selectRecomList(memId);
		log.info("scndhdRecomVO : " + scndhdRecomVO);

		String scndhdId = scndhdRecomVO.getScndhdId();
		String[] scndhdIdArr = scndhdId.split(",");

		List<ScndhdBbsVO> scndhdBbsVOList = new ArrayList<>();

		for (String recomScndhdId : scndhdIdArr) {
			ScndhdBbsVO scndhdBbsVO = new ScndhdBbsVO();
			scndhdBbsVO.setPstId(recomScndhdId);

			scndhdBbsVOList.add(this.scndhdBbsMapper.selectOne(scndhdBbsVO));
		}
		log.info("scndhdBbsVOList : " + scndhdBbsVOList);

		return scndhdBbsVOList;
	}

	//중고장터 카테고리별 게시글 등록 수
	@Override
	public List<ScndhdBbsVO> bestCateGoryCount(ScndhdBbsVO scndhdBbsVO) {
		return this.aiMapper.bestCateGoryCount(scndhdBbsVO);
	}

	//최근 한달동안 카테고리별 등록 판매게시글 best10
	public List<ScndhdBbsVO> oneMonthBest(ScndhdBbsVO scndhdBbsVO){
		return this.aiMapper.oneMonthBest(scndhdBbsVO);
	}

	//중고장터 금일 최다 조회수 best5
	@Override
	public List<ScndhdBbsVO> todayBest(ScndhdBbsVO scndhdBbsVO) {
		return this.aiMapper.todayBest(scndhdBbsVO);
	}

	//중고장터 카테고리 총 게시글의 수
	@Override
	public ScndhdBbsVO cateTotalCnt(ScndhdBbsVO scndhdBbsVO) {
		return this.aiMapper.cateTotalCnt(scndhdBbsVO);
	}

	//최근 한달동안 카테고리별 등록 판매게시글 best10 총 합
	@Override
	public ScndhdBbsVO oneMonthBestCnt(ScndhdBbsVO scndhdBbsVO) {
		return this.aiMapper.oneMonthBestCnt(scndhdBbsVO);
	}






}
