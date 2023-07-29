package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.EmpNtcBbsVO;

public interface EmpNtcBbsMapper {

	//직원 공지사항 게시판 전체글
	public List<EmpNtcBbsVO> selectAll();


}
