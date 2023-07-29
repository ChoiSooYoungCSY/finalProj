package kr.or.ddit.mem.life.library;

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
public class LibraryServiceImpl implements LibraryService {

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

	//도서 상세보기
	@Override
	public BookVO detailBook(BookVO bookVO) {
		return this.bookMapper.detailBook(bookVO);
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
