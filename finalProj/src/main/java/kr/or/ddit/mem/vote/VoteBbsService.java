package kr.or.ddit.mem.vote;

import java.util.List;


import kr.or.ddit.vo.VoteBbsVO;


public interface VoteBbsService {

	// 투표 목록
	public List<VoteBbsVO> selectAllList();
}
