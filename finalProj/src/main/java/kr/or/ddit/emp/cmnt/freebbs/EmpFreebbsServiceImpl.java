package kr.or.ddit.emp.cmnt.freebbs;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.EmpBbsMapper;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.EmpBbsVO;
import kr.or.ddit.vo.EmpNtcBbsVO;

@Service
public class EmpFreebbsServiceImpl implements EmpFreebbsService {

	@Inject
	EmpBbsMapper empBbsMapper;

	// 직원 공지사항 게시판 전체글
	@Override
	public List<EmpBbsVO> selectAll() {
		JSONArray jsonArr = new JSONArray();
		List<EmpBbsVO> postList = this.empBbsMapper.selectAll();
		for (EmpBbsVO empBbsVO : postList) {
			String lastUpdtTm = empBbsVO.getLastUpdtTm();
			jsonArr.add(empBbsVO);
		}
		return jsonArr;
	}

	/**
	 * 직원 자유게시판 게시글 등록하기
	 */
	@Override
	public int registerPost(EmpBbsVO empBbsVO) {
		String uploadFileName = "";
	    AtchmnflVO atchmnflVO = new AtchmnflVO();
	  //freeUpdatePost->freeBbsVO : FreeBbsVO(rnum=null, pstId=FRE000050, frstWrterId=dohee, frstWrterTm=null, pstSj=오늘은 목요일입니다2225050505050
	    //, pstCn=<p>목요일이죠2225050505050</p>
	    //, rdcnt=0, lastUpdusrId=dohee, lastUpdtTm=null, atchmnflId=null, delYn=null,
	    //contentImages=[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@2b1b1412, org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@4a8736fb]
	    //, atchmnflDetailList=null, freeBbsCmntList=null, freeBbsEmtList=null)
	    atchmnflVO.setFrstWrterId(empBbsVO.getFrstWrterId());	//dohee
	    atchmnflVO.setLastUpdusrId(empBbsVO.getLastUpdusrId());	//dohee

		//1)
        int cnt = this.empBbsMapper.registerAtch(atchmnflVO);

	    try {
	    	//contentImages=[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@5115b1c],
	        MultipartFile[] multipartFile = empBbsVO.getContentImages();
	        File uploadPath = new File(CommonFile.uploadFolder, CommonFile.getFolder()); // upload/2023/07/03

        if (!uploadPath.exists()) {
        	uploadPath.mkdirs();
        }

	        for (MultipartFile attachFile : multipartFile) {
				AtchmnflDetailVO attachDetail = new AtchmnflDetailVO();
				attachDetail.setFrstWrterId(empBbsVO.getFrstWrterId());
				attachDetail.setLastUpdusrId(empBbsVO.getLastUpdusrId());
				attachDetail.setAtchmnflTy(attachFile.getContentType());
				attachDetail.setOrginlAtchmnflNm(attachFile.getOriginalFilename());
				attachDetail.setAtchmnflSize((int) attachFile.getSize());

				uploadFileName = attachFile.getOriginalFilename();
				// =================== UUDI 처리 시작 =======================
				UUID uuid = UUID.randomUUID();
				uploadFileName = uuid.toString() + "_" + uploadFileName;
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

				String maxAtchId = this.empBbsMapper.maxAtchId().getAtchmnflId();
				empBbsVO.setAtchmnflId(maxAtchId);
				//N
				this.empBbsMapper.registerAtchDetail(attachDetail);
			}//end for


	    } catch (IllegalStateException | IOException e) {
	    	e.printStackTrace();
	    	return 0;
		}

	    return this.empBbsMapper.registerPost(empBbsVO);

	}


	/**
	 * 첨부파일 이미지 처리
	 */
	@Override
	public int registerAtch(AtchmnflVO atchmnflVO) {
		return this.empBbsMapper.registerAtch(atchmnflVO);
	}

	/**
	 * 첨부파일 이미지 처리
	 */
	@Override
	public int registerAtchDetail(AtchmnflDetailVO atchmnflVO) {
		return this.empBbsMapper.registerAtchDetail(atchmnflVO);
	}

	/**
	 * 첨부파일 이미지 처리
	 */
	@Override
	public AtchmnflVO maxAtchId() {
		return this.empBbsMapper.maxAtchId();
	}

	/**
	 * 게시글 상세보기
	 */
	@Override
	public EmpBbsVO freeDetail(EmpBbsVO empBbsVO) {
		return this.empBbsMapper.freeDetail(empBbsVO);
	}

	/**
	 * 자유게시판 게시글 조회수
	 */
	@Override
	public boolean plusCnt(EmpBbsVO empBbsVO) {
	  return empBbsMapper.plusCnt(empBbsVO);
	}

}
