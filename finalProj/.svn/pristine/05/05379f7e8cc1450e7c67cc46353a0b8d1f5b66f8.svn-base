package kr.or.ddit.emp.pa.mnginprogressvote;

import java.util.List;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.VoteBbsMapper;
import kr.or.ddit.vo.VoteBbsVO;

@Service
public class MngInprogressVoteServiceimpl implements MngInProgressVoteService{

	@Autowired
	VoteBbsMapper voteBbsMapper;

	// 진행중 투표 목록
	@Override
	public List<VoteBbsVO> voteIng() {
		JSONArray jsonArr = new JSONArray();
		List<VoteBbsVO> postList = this.voteBbsMapper.voteIng();
		for (VoteBbsVO voteBbsVO : postList) {
			String lastUpdtTm = voteBbsVO.getLastUpdtTm();
			jsonArr.add(voteBbsVO);
		}
		return jsonArr;
	}


}
