package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.BookVO;

public interface BookMapper {


	// 책 목록 불러오기
	public List<BookVO> list();

	// 도서 등록하기
	public int registerPost(BookVO bookVO);

	// 도서 상세보기
	public BookVO detailBook(BookVO bookVO);

	// 등록 도서 수정하기
	public int updatePost(BookVO bookVO);

	// 등록 도서 삭제하기
	public int deletePost(BookVO bookVO);

	// 전체 글 개수
	public int getTotal(Map<String, String> map);

	//페이징처리 시 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가해서 list구하기
	public List<BookVO> list(Map<String, String> map);


}
