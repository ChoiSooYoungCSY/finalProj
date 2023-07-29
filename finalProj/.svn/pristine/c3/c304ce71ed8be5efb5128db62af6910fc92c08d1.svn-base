package kr.or.ddit.emp.fs.mnglibrary;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.BookMapper;
import kr.or.ddit.mapper.BookRecomMapper;
import kr.or.ddit.mapper.LoanBookMapper;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.BookRecomVO;
import kr.or.ddit.vo.BookVO;
import kr.or.ddit.vo.LoanBookVO;
import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;

@Slf4j
@Service
public class EmpLibraryServiceImpl implements EmpLibraryService {

	//DI(의존성 주입), IoC(제어의 역전)
	@Inject
	BookMapper bookMapper;

	@Inject
	LoanBookMapper loanBookMapper;

	@Inject
	BookRecomMapper bookRecomMapper;



	//도서관 서비스
	//책 목록불러오기
	@Override
	public List<BookVO> list(BookVO bookVO){
		return this.bookMapper.list();
	}

	//도서 등록하기
	public int registerPost(BookVO bookVO) {

		log.info("bookVO : " + bookVO);

		// 파일 업로드 시작
		File uploadPath = new File(CommonFile.uploadFolder, CommonFile.getFolder()); // upload/2023/07/06

		// 만약에 연/월/일 해당 폴더가 없으면 새로 생성
		if (uploadPath.exists() == false) {
			uploadPath.mkdir();
		}

		MultipartFile picture = bookVO.getPicture();
		String uploadFileName = picture.getOriginalFilename();

		// 파일명 중복방지
		// java.util.UUID => 랜덤값을 만들어줌
		UUID uuid = UUID.randomUUID();
		// 원래의 파일 이름과 구분하기 위해서 uuid값_원본파일명
		uploadFileName = uuid.toString() + "_" + uploadFileName;

		// 설계
		try {
			// 설계
			File saveFile = new File(uploadPath, uploadFileName);
			// 복사 실행
			picture.transferTo(saveFile);
			// ===================== 파일 업로드 끝 =====================

			// /2023/05/24/asdfasdf_P1237.jpg
			bookVO.setBookImg("/" + CommonFile.getFolder().replace("\\", "/") + "/" + uploadFileName);
			log.info("등록할 bookVO : " + bookVO);

			// insert 실행
			int result = this.bookMapper.registerPost(bookVO);
			log.info("책 등록 result : " + result);

			return result;

		} catch (IllegalStateException | IOException e) {
			log.error(e.getMessage());

			return 0;
		}

	}

	//도서 상세보기
	@Override
	public BookVO detailBook(BookVO bookVO) {
		return this.bookMapper.detailBook(bookVO);
	}

	//등록도서 수정하기
	@Override
	public int updatePost(BookVO bookVO) {

		log.info("수정할 bookVO : ", bookVO);

		int bookNo = bookVO.getBookNo();

		// 수정할 때 이미지를 업로드하면 다시 보정해주자
		bookVO.setBookImg("");

		// 이미지도 같이 변경 시 처리 시작
		MultipartFile picture = bookVO.getPicture();

		// 파일 업로드 시작
		File uploadPath = new File(CommonFile.uploadFolder, CommonFile.getFolder());

		// 연월일 폴더
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}

		// 원래 파일명
		String uploadFileName = "";
		uploadFileName = picture.getOriginalFilename();

		// 이미지가 있을 때에만 처리
		if (uploadFileName.length() > 0) {
			// UUID 처리
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString() + "_" + uploadFileName;

			// 설계(연월일폴더 + uuid파일명)
			File saveFile = new File(uploadPath, uploadFileName);
			try {
				// 복사실행
				picture.transferTo(saveFile);

				// 썸네일
				if (CommonFile.checkImageType(saveFile)) {
					// 설계
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
					// 실행
					Thumbnailator.createThumbnail(picture.getInputStream(), thumbnail, 100, 100);
					thumbnail.close();
				}

				bookVO.setBookImg("/" + CommonFile.getFolder().replace("\\", "/") + "/" + uploadFileName);
			} catch (IllegalStateException | IOException e) {
				log.error(e.getMessage());
			}
		}

		//이미지도 함께 변경 시 처리 끝///////////////////

		int result = this.bookMapper.updatePost(bookVO);
		log.info("도서수정 result : " + result);

		return result;
	}

	//등록된 도서를 삭제
	@Override
	public int deletePost(BookVO bookVO) {
		return this.bookMapper.deletePost(bookVO);
	}

	//	전체 글 수 구하기
	@Override
	public int getTotal(Map<String, String> map) {
		return this.bookMapper.getTotal(map);
	}

	//페이징처리 시 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가해서 list구하기
	@Override
	public List<BookVO> list(Map<String, String> map) {
		return this.bookMapper.list(map);
	}


	// 도서 대출 서비스
	//도서 목록
	@Override
	public List<Map<String, Object>> list(LoanBookVO loanBookVO) {
		return this.loanBookMapper.list();
	}

	//대출한 책 등록
	@Override
	public int insertLoan(LoanBookVO loanBookVO) {
		return this.loanBookMapper.insertLoan(loanBookVO);
	}

	//대출한 책을 반납하며 상태를 반납완료 상태로 수정
	@Override
	public int updateLoan(LoanBookVO loanBookVO) {
		return this.loanBookMapper.updateLoan(loanBookVO);
	}


	//도서 추천 서비스
	// 게시글 목록보기
	@Override
	public List<Map<String,Object>> list(BookRecomVO bookRecomVO) {
		return this.bookRecomMapper.list(bookRecomVO);
	}





}
