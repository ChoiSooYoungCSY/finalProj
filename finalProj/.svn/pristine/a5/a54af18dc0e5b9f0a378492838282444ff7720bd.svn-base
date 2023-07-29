package kr.or.ddit.mem.vote;

import java.util.List;


import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.VoteBbsMapper;
import kr.or.ddit.vo.VoteBbsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class VoteBbsServiceImpl implements VoteBbsService{

	@Autowired
	VoteBbsMapper voteBbsMapper;

	// 투표 목록
	@Override
	public List<VoteBbsVO> selectAllList() {
		JSONArray jsonArr = new JSONArray();
		List<VoteBbsVO> postList = this.voteBbsMapper.selectAllList();
		for (VoteBbsVO voteBbsVO : postList) {
			jsonArr.add(voteBbsVO);
		}

		return jsonArr;
	}
}
