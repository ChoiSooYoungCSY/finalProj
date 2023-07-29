package kr.or.ddit.mem.cmnt.secondhand;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.ScndhdBbsMapper;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.FreeBbsVO;
import kr.or.ddit.vo.ScndhdBbsVO;
import kr.or.ddit.vo.ScndhdRecomVO;
import kr.or.ddit.vo.SttemntPstVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ScndhsBbsServiceImpl implements ScndhdBbsService{

	@Autowired
	ScndhdBbsMapper scndhdBbsMapper;

	// 중고장터 게시판 리스트
	@Override
	public List<ScndhdBbsVO> selectAll(Map<String, String> map) {
		return this.scndhdBbsMapper.selectAll(map);
	}

	// 총 페이지 수
	@Override
	public int getTotal(Map<String, String> map) {
		return this.scndhdBbsMapper.getTotal(map);
	}

	// 판매 게시글 등록, 파일(UUID)
	@Override
	public int registerPost(ScndhdBbsVO scndhdBbsVO) {
		String uploadFileName = "";
	    AtchmnflVO atchmnflVO = new AtchmnflVO();

	    atchmnflVO.setFrstWrterId(scndhdBbsVO.getFrstWrterId());
	    atchmnflVO.setLastUpdusrId(scndhdBbsVO.getLastUpdusrId());

	    //1
        int cnt = this.scndhdBbsMapper.registerAtch(atchmnflVO);

	    try {
	        MultipartFile[] multipartFile = scndhdBbsVO.getProductImage();
	        File uploadPath = new File(CommonFile.uploadFolder, CommonFile.getFolder()); // upload/2023/07/03

        if (!uploadPath.exists()) {
        	uploadPath.mkdirs();
        }

	        for (MultipartFile attachFile : multipartFile) {
				AtchmnflDetailVO attachDetail = new AtchmnflDetailVO();
				attachDetail.setFrstWrterId(scndhdBbsVO.getFrstWrterId());
				attachDetail.setLastUpdusrId(scndhdBbsVO.getLastUpdusrId());
				attachDetail.setAtchmnflTy(attachFile.getContentType());
				attachDetail.setOrginlAtchmnflNm(attachFile.getOriginalFilename());
				attachDetail.setAtchmnflSize((int) attachFile.getSize());

				uploadFileName = attachFile.getOriginalFilename();
				// =================== UUDI 처리 시작 =======================
//				UUID uuid = UUID.randomUUID();
//				uploadFileName = uuid.toString() + "_" + uploadFileName;
				// ==================== UUDI 처리 끝 ========================
				// 설계
				File saveFile = new File(uploadPath, uploadFileName);
				// 복사 실행
				attachFile.transferTo(saveFile);

				String filepath = CommonFile.getFolder().replace("upload", "");
				// 2023/05/24/asdfasdf_P1237.jpg
				attachDetail.setFlpth("/" + filepath.replace("\\", "/"));
				// 2023/05/05+/+"{setStreFlNm}"
				attachDetail.setStreFlNm(uploadFileName);

				String maxAtchId = this.scndhdBbsMapper.maxAtchId().getAtchmnflId();
				scndhdBbsVO.setAtchmnflId(maxAtchId);
				//N
				this.scndhdBbsMapper.registerAtchDetail(attachDetail);
			}//end for


	    } catch (IllegalStateException | IOException e) {
	    	e.printStackTrace();
	    	return 0;
		}

	    return this.scndhdBbsMapper.registerPost(scndhdBbsVO);
	}

	// 연/월/일 폴더 생성
	public String getFolder() {
		// 간단한 날짜 형식
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// 날짜 객체 생성 (java.util 패키지)
		Date date = new Date();
		// 2023-05-02
		String str = sdf.format(date);

		return str.replace("-", File.separator);
	}

	// 이미지 등록
	@Override
	public int registerAtch(AtchmnflVO atchmnflVO) {
		return this.scndhdBbsMapper.registerAtch(atchmnflVO);
	}

	// 이미지 다중 등록
	@Override
	public int registerAtchDetail(AtchmnflDetailVO atchmnflVO) {
		return this.scndhdBbsMapper.registerAtchDetail(atchmnflVO);
	}

	// 중고장터 게시글 수정
	@Override
	public int updatePost(ScndhdBbsVO scndhdBbsVO) {
		return this.scndhdBbsMapper.updatePost(scndhdBbsVO);
	}

	// 이미지 다중 수정
	@Override
	public int updateImages(AtchmnflDetailVO atchmnflDetailVO) {
		String uploadFileName = "";

	    try {
	        MultipartFile multipartFile = atchmnflDetailVO.getUploadFile();
	        File uploadPath = new File(CommonFile.uploadFolder, CommonFile.getFolder());

        if (!uploadPath.exists()) {
        	uploadPath.mkdirs();
        }
        		atchmnflDetailVO.setAtchmnflTy(multipartFile.getContentType());
        		atchmnflDetailVO.setOrginlAtchmnflNm(multipartFile.getOriginalFilename());
        		atchmnflDetailVO.setAtchmnflSize((int) multipartFile.getSize());

				uploadFileName = multipartFile.getOriginalFilename();
				// =================== UUDI 처리 시작 =======================
				UUID uuid = UUID.randomUUID();
				uploadFileName = uuid.toString() + "_" + uploadFileName;
				// ==================== UUDI 처리 끝 ========================
				// 설계
				File saveFile = new File(uploadPath, uploadFileName);
				// 복사 실행
				multipartFile.transferTo(saveFile);

				String filepath = CommonFile.getFolder().replace("upload", "");

				atchmnflDetailVO.setFlpth("/" + filepath.replace("\\", "/"));

				atchmnflDetailVO.setStreFlNm(uploadFileName);
				log.info("impl->detailPostImage->atchmnflDetailVO : " + atchmnflDetailVO);
				//N
				int result = this.scndhdBbsMapper.updateImages(atchmnflDetailVO);

				log.info("impl->detailPostImage->result : " + result);

				return result;
	    } catch (IllegalStateException | IOException e) {
	    	e.printStackTrace();
	    	return 0;
		}
	}

	// 관리자 측 중고장터 다중 게시글 삭제
	@Override
	public int deletePost(List<String> checkPostList) {
		int cnt = 0;

		for (String check : checkPostList) {
			cnt += this.scndhdBbsMapper.deletePost(check);

		}
		return cnt;
	}

	// 입주민 측 중고장터 판매 게시글 삭제
	@Override
	public int deletePostOne(ScndhdBbsVO scndhdBbsVO) {
		return this.scndhdBbsMapper.deletePostOne(scndhdBbsVO);
	}

	// 이미지 리스트
	@Override
	public List<ScndhdBbsVO> imageList(){
		return this.scndhdBbsMapper.imageList();
	}

	// 중고장터 하나의 게시글
	@Override
	public ScndhdBbsVO selectOne(ScndhdBbsVO cndhdBbsVO) {
		return this.scndhdBbsMapper.selectOne(cndhdBbsVO);
	}

	// 중고장터 게시글 조회수
	@Override
	public boolean plusCnt(ScndhdBbsVO cndhdBbsVO) {
	  return scndhdBbsMapper.plusCnt(cndhdBbsVO);
	}

	// 중고장터 추천 판매 게시글
	@Override
	public ScndhdRecomVO selectRecomList(String memId) {
		return this.scndhdBbsMapper.selectRecomList(memId);
	}

	// 파일 MAX
	@Override
	public AtchmnflVO maxAtchId() {
		return this.scndhdBbsMapper.maxAtchId();
	}

	// 신고
	@Override
	public int deClarPost(SttemntPstVO sttemntPstVO) {
		return this.scndhdBbsMapper.deClarPost(sttemntPstVO);
	}

	// 신고 게시글 카운트
	@Override
	public int reportCount(SttemntPstVO sttemntPstVO) {
		return this.scndhdBbsMapper.reportCount(sttemntPstVO);
	}

}
