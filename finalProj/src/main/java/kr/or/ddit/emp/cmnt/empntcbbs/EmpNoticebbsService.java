package kr.or.ddit.emp.cmnt.empntcbbs;

import java.util.List;

import kr.or.ddit.vo.EmpNtcBbsVO;

public interface EmpNoticebbsService {

	//직원 공지사항 게시판 전체글
		public List<EmpNtcBbsVO> selectAll();
}
