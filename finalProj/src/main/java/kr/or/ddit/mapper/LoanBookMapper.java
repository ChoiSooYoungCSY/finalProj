package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.LoanBookVO;
import kr.or.ddit.vo.MemberVO;

public interface LoanBookMapper {

	// 대출 목록 불러오기
	public List<Map<String, Object>> list();

	//대출한 책을 대출 테이블에 등록
	public int insertLoan(LoanBookVO loanBookVO);

	//대출한 책을 반납하면서 상태를 대출중을 반납완료로 수정
	public int updateLoan(LoanBookVO loanBookVO);

	//한 회원의 대출 목록 불러오기
	public List<LoanBookVO> selectByIdLoanBook(MemberVO memberVO);

}
