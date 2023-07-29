package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.VoteBbsVO;


public interface VoteBbsMapper {

	// 투표 목록
	public List<VoteBbsVO> selectAllList();

	// 진행 중 투표 목록
	public List<VoteBbsVO> voteIng();
}
