package kr.or.ddit.mem.cmnt.freebbs;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.FreeBbsMapper;
import kr.or.ddit.mem.cmnt.freebbs.FreeBbsService;
import kr.or.ddit.mem.cmnt.secondhand.ScndhsBbsServiceImpl;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.FreeBbsCmntVO;
import kr.or.ddit.vo.FreeBbsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class FreeBbsServiceImpl implements FreeBbsService {

	@Inject
	FreeBbsMapper freeBbsMapper;

	/**
	 * 자유게시판에 게시글 등록하기
	 */
	@Override
	public int registerPost(FreeBbsVO freeBbsVO) {
		String uploadFileName = "";
	    AtchmnflVO atchmnflVO = new AtchmnflVO();
	  //freeUpdatePost->freeBbsVO : FreeBbsVO(rnum=null, pstId=FRE000050, frstWrterId=dohee, frstWrterTm=null, pstSj=오늘은 목요일입니다2225050505050
	    //, pstCn=<p>목요일이죠2225050505050</p>
	    //, rdcnt=0, lastUpdusrId=dohee, lastUpdtTm=null, atchmnflId=null, delYn=null,
	    //contentImages=[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@2b1b1412, org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@4a8736fb]
	    //, atchmnflDetailList=null, freeBbsCmntList=null, freeBbsEmtList=null)
	    atchmnflVO.setFrstWrterId(freeBbsVO.getFrstWrterId());	//dohee
	    atchmnflVO.setLastUpdusrId(freeBbsVO.getLastUpdusrId());	//dohee

		//1)
        int cnt = this.freeBbsMapper.registerAtch(atchmnflVO);

	    try {
	    	//contentImages=[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@5115b1c],
	        MultipartFile[] multipartFile = freeBbsVO.getContentImages();
	        File uploadPath = new File(CommonFile.uploadFolder, CommonFile.getFolder()); // upload/2023/07/03

        if (!uploadPath.exists()) {
        	uploadPath.mkdirs();
        }

	        for (MultipartFile attachFile : multipartFile) {
				AtchmnflDetailVO attachDetail = new AtchmnflDetailVO();
				attachDetail.setFrstWrterId(freeBbsVO.getFrstWrterId());
				attachDetail.setLastUpdusrId(freeBbsVO.getLastUpdusrId());
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

				String maxAtchId = this.freeBbsMapper.maxAtchId().getAtchmnflId();
				freeBbsVO.setAtchmnflId(maxAtchId);
				//N
				this.freeBbsMapper.registerAtchDetail(attachDetail);
			}//end for


	    } catch (IllegalStateException | IOException e) {
	    	e.printStackTrace();
	    	return 0;
		}

	    return this.freeBbsMapper.registerPost(freeBbsVO);

	}
	/**
	 * 자유게시판에 게시글 수정하기(단, 이미지 또한 변경 시에만)
	 */
	@Override
	public int updaterPost(FreeBbsVO freeBbsVO) {
		String uploadFileName = "";
		AtchmnflVO atchmnflVO = new AtchmnflVO();
		//freeUpdatePost->freeBbsVO : FreeBbsVO(rnum=null, pstId=FRE000050, frstWrterId=dohee, frstWrterTm=null, pstSj=오늘은 목요일입니다2225050505050
		//, pstCn=<p>목요일이죠2225050505050</p>
		//, rdcnt=0, lastUpdusrId=dohee, lastUpdtTm=null, atchmnflId=null, delYn=null,
		//contentImages=[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@2b1b1412, org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@4a8736fb]
		//, atchmnflDetailList=null, freeBbsCmntList=null, freeBbsEmtList=null)
		atchmnflVO.setFrstWrterId(freeBbsVO.getFrstWrterId());	//dohee
		atchmnflVO.setLastUpdusrId(freeBbsVO.getLastUpdusrId());	//dohee

		//1)atchmnflId이 null이 ATT001159 식으로 채워짐
		int cnt = this.freeBbsMapper.registerAtch(atchmnflVO);

		try {
			//contentImages=[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@5115b1c],
			MultipartFile[] multipartFile = freeBbsVO.getContentImages();
			File uploadPath = new File(CommonFile.uploadFolder, CommonFile.getFolder()); // upload/2023/07/03

			if (!uploadPath.exists()) {
				uploadPath.mkdirs();
			}

			for (MultipartFile attachFile : multipartFile) {
				AtchmnflDetailVO attachDetail = new AtchmnflDetailVO();
				attachDetail.setFrstWrterId(freeBbsVO.getFrstWrterId());
				attachDetail.setLastUpdusrId(freeBbsVO.getLastUpdusrId());
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

				String maxAtchId = this.freeBbsMapper.maxAtchId().getAtchmnflId();
				freeBbsVO.setAtchmnflId(maxAtchId);
				//N
				this.freeBbsMapper.registerAtchDetail(attachDetail);
			}//end for


		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			return 0;
		}

		freeBbsVO.setAtchmnflId(atchmnflVO.getAtchmnflId());

		return this.freeBbsMapper.updaterPost(freeBbsVO);

	}

	/**
	 * 연/월/일 폴더 생성
	 * @return
	 */
	public String getFolder() {
		// 간단한 날짜 형식
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// 날짜 객체 생성 (java.util 패키지)
		Date date = new Date();
		// 2023-05-02
		String str = sdf.format(date);

		return str.replace("-", File.separator);
	}

	/**
	 * 첨부파일 이미지 처리
	 */
	@Override
	public int registerAtch(AtchmnflVO atchmnflVO) {
		return this.freeBbsMapper.registerAtch(atchmnflVO);
	}

	/**
	 * 첨부파일 이미지 처리
	 */
	@Override
	public int registerAtchDetail(AtchmnflDetailVO atchmnflVO) {
		return this.freeBbsMapper.registerAtchDetail(atchmnflVO);
	}

	/**
	 * 첨부파일 이미지 처리
	 */
	@Override
	public AtchmnflVO maxAtchId() {
		return this.freeBbsMapper.maxAtchId();
	}

	/**
	 * 전체 글 수 구하기
	 */
	@Override
	public int getTotal(Map<String, String> map) {
		return this.freeBbsMapper.getTotal(map);
	}

	/**
	 * 페이징 처리 시 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가해서 list구하기
	 */
	@Override
	public List<FreeBbsVO> list(Map<String, String> map) {
		return this.freeBbsMapper.list(map);
	}

	/**
	 * 자유게시판 게시글 상세보기
	 */
	@Override
	public FreeBbsVO freeDetail(FreeBbsVO freeBbsVO) {
		return this.freeBbsMapper.freeDetail(freeBbsVO);
	}

	/**
	 * 자유게시판 게시글 수정하기
	 */
	@Override
	public int freeUpdatePost(FreeBbsVO freeBbsVO) {
		//1) 이미지는 변경이 없음
		//freeUpdatePost->freeBbsVO : FreeBbsVO(rnum=null, pstId=FRE000040, frstWrterId=dohee, frstWrterTm=null, pstSj=오늘은 목요일입니다222, pstCn=<p>목요일이죠222</p>
		//, rdcnt=0, lastUpdusrId=dohee, lastUpdtTm=null, atchmnflId=null, delYn=null,
		//contentImages=[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@5115b1c],
		//atchmnflDetailList=null, freeBbsCmntList=null, freeBbsEmtList=null)
		//2) 이미지에 변경이 있음
		//freeUpdatePost->freeBbsVO : FreeBbsVO(rnum=null, pstId=FRE000050, frstWrterId=dohee, frstWrterTm=null, pstSj=오늘은 목요일입니다22250, pstCn=<p>목요일이죠22250</p>
		//, rdcnt=0, lastUpdusrId=dohee, lastUpdtTm=null, atchmnflId=null, delYn=null
		//, contentImages=[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@2f1fb13d, org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@2b203006]
		//, atchmnflDetailList=null, freeBbsCmntList=null, freeBbsEmtList=null)
		log.info("freeUpdatePost->freeBbsVO : " + freeBbsVO);

		MultipartFile[] testFiles = freeBbsVO.getContentImages();

		int imageCounter = 0;

		for(MultipartFile test : testFiles) {
			log.info("test : " + test.getOriginalFilename());

			if(test.getOriginalFilename().length()>0) {
				imageCounter++;
			}
		}


		//1) 이미지가 없는 게시물 + 이미지 변경 없음 imageCounter : 0
		//2) 이미지가 있는 게시물 + 이미지 변경 없음 => imageCounter : 0
		//3) 이미지가 있는 게시물 + 이미지 변경 있음 => imageCounter : 변경이미지수
		log.info("imageCounter : " + imageCounter);

		//해당 글에 첨부파일이 있는지 가져옴
		List<AtchmnflDetailVO> attachList = freeBbsVO.getAtchmnflDetailList();

		int result = 0;

		if(attachList==null || attachList.size() == 0) {  // 첨부파일이 없을 때(이미지는 변경이 없음)
			log.info("왔다1");
			 result += this.freeBbsMapper.freeUpdatePost(freeBbsVO);

			 //이미지 변경이 있을 때에만 첨부파일 처리(imageCounter : 변경이미지수)
			 if(imageCounter>0) {
				 result = updaterPost(freeBbsVO);
			 }
		}else {				// 처음부터 첨부 파일이 있을 때. 첨부파일이 3개라면 3번 반복(이미지 변경이 있을 떄)
			log.info("왔다2");
			for(AtchmnflDetailVO attVo : attachList) {
				result += thirdUpdatePost( attVo );
			}

		}


		log.info("업로드 파일 결과 result ==> " + result);

		//여기서 글을 수정
		return result;
	}

	/**
	 * 자유게시판 게시글 다중이미지 수정하기
	 */
	@Override
	public int thirdUpdatePost(AtchmnflDetailVO atchmnflDetailVO) {
		String uploadFileName = "";

	    try {
	        MultipartFile multipartFile = atchmnflDetailVO.getUploadFile();
	        File uploadPath = new File(CommonFile.uploadFolder, CommonFile.getFolder()); // upload/2023/07/03

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
				// 2023/05/24/asdfasdf_P1237.jpg
				atchmnflDetailVO.setFlpth("/" + filepath.replace("\\", "/"));
				// 2023/05/05+/+"{setStreFlNm}"
				atchmnflDetailVO.setStreFlNm(uploadFileName);
				//AtchmnflDetailVO(atchmnflNo=1117, atchmnflId=null, frstWrterTm=null, frstWrterId=null, flpth=/2023/07/11
				//, streFlNm=1acffbc3-6523-4ef1-ae97-e2e110af6439_165426561_1_1636765401_w292.jpg, atchmnflSize=10298
				//, atchmnflTy=image/jpeg, orginlAtchmnflNm=165426561_1_1636765401_w292.jpg, lastUpdusrId=null,
				//lastUpdtTm=null, delYn=null,
				//uploadFile=org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@54010833)
				log.info("impl->thirdUpdatePost->atchmnflDetailVO : " + atchmnflDetailVO);
				//N
				int result = this.freeBbsMapper.thirdUpdatePost(atchmnflDetailVO);

				log.info("impl->thirdUpdatePost->result : " + result);

				return result;
	    } catch (IllegalStateException | IOException e) {
	    	e.printStackTrace();
	    	return 0;
		}
	}

	/**
	 * 자유게시판 게시글 삭제하기
	 */
	@Override
	public int deletePost(FreeBbsVO freeBbsVO) {
		return this.freeBbsMapper.deletePost(freeBbsVO);
	}

	/**
	 * 자유게시판 게시글 조회수
	 */
	@Override
	public boolean plusCnt(FreeBbsVO freeBbsVO) {
	  return freeBbsMapper.plusCnt(freeBbsVO);
	}

	/**
	 * 게시물 댓글 등록
	 */
	@Override
	public int freeCmntRegister(FreeBbsCmntVO freeBbsCmntVO) {
		return freeBbsMapper.freeCmntRegister(freeBbsCmntVO);
	}

	/**
	 * 게시물에 등록한 댓글 리스트 출력
	 */
	@Override
	public List<FreeBbsCmntVO> freeCmntList(FreeBbsCmntVO freeBbsCmntVO) {
		return freeBbsMapper.freeCmntList(freeBbsCmntVO);
	}

	/**
	 * 게시물에 등록한 댓글 수정
	 */
	@Override
	public int freeCmntUpdatePost(FreeBbsCmntVO freeBbsCmntVO) {
		return freeBbsMapper.freeCmntUpdatePost(freeBbsCmntVO);
	}

	/**
	 * 게시물에 등록한 댓글 삭제하기
	 */
	@Override
	public int deleteCmntPost(FreeBbsCmntVO freeBbsCmntVO) {
		return freeBbsMapper.deleteCmntPost(freeBbsCmntVO);
	}

	/**
	 * 게시물에 등록된 댓글에 대댓글 등록하기
	 */
	@Override
	public int freeReCmntRegister(FreeBbsCmntVO freeBbsCmntVO) {
		return freeBbsMapper.freeReCmntRegister(freeBbsCmntVO);
	}

	/**
	 * 댓글에 등록한 대댓글 수정하기
	 */
	@Override
	public int freeReCmntUpdate(FreeBbsCmntVO freeBbsCmntVO) {
		return this.freeBbsMapper.freeReCmntUpdate(freeBbsCmntVO);
	}
}
