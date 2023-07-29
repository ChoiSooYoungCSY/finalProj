package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.SttemntPstVO;

public interface SttemntPstMapper {
	public List<SttemntPstVO> reportPost(SttemntPstVO sttemntPstVO);

	// 게시글 신고 횟수
	public SttemntPstVO reportCnt(SttemntPstVO sttemntPstVO);

	// 관리자 신고 게시글 상세페이지 게시글 삭제
	public int deletePostOne(SttemntPstVO sttemntPstVO);

}
