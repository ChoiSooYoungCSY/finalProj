package kr.or.ddit.emp.fs.mnglibrary;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.BookRecomVO;
import kr.or.ddit.vo.BookVO;
import kr.or.ddit.vo.LoanBookVO;

public interface EmpLibraryService {


	//도서관 서비스
	/**
	 * 	책 목록불러오기
	 * @param bookVO
	 * @return
	 */
	public List<BookVO> list(BookVO bookVO);

	/**
	 * 도서 등록하기
	 * @param bookVO
	 * @return
	 */
	public int registerPost(BookVO bookVO);

	/**
	 * 등록 도서 수정하기
	 * @param bookVO
	 * @return
	 */
	public int updatePost(BookVO bookVO);

	/**
	 * 등록된 도서를 삭제
	 * @param bookVO
	 * @return
	 */
	public int deletePost(BookVO bookVO);

	/**
	 * 도서 상세보기
	 * @param bookVO
	 * @return
	 */
	public BookVO detailBook(BookVO bookVO);

	/**
	 * 전체 글 수 구하기
	 * @param map
	 * @return
	 */
	public int getTotal(Map<String, String> map);

	/**
	 * 위의 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가해서 list구하기
	 * @param map
	 * @return
	 */
	public List<BookVO> list(Map<String, String> map);


	//도서 대출 서비스
	/**
	 * 빌린 책 목록
	 * @param loanBookVO
	 * @return
	 */
	List<Map<String, Object>> list(LoanBookVO loanBookVO);

	/**
	 * 대출 테이블에 등록
	 * @param loanBookVO
	 * @return
	 */
	public int insertLoan(LoanBookVO loanBookVO);

	/**
	 * 도서 반납시 상태를 대출중에서 반납완료로 수정
	 * @param loanBookVO
	 * @return
	 */
	public int updateLoan(LoanBookVO loanBookVO);


	//도서 추천 서비스
	/**
	 * 게시글 목록보기
	 * @param bookRecomVO
	 * @return
	 */
	public List<Map<String,Object>> list(BookRecomVO bookRecomVO);


}
