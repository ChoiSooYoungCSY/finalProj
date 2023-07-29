package kr.or.ddit.emp.aa.agency;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.AgencyMapper;
import kr.or.ddit.vo.AgencyVO;
import kr.or.ddit.vo.EmpNtcBbsVO;

@Service
public class MngAgencyServiceImpl implements MngAgencyService{

	@Inject
	AgencyMapper agencyMapper;

	@Override
	public List<AgencyVO> selectAll() {
		JSONArray jsonArr = new JSONArray();
		List<AgencyVO> postList = this.agencyMapper.selectAll();
		for (AgencyVO empNtcBbsVO : postList) {
			jsonArr.add(empNtcBbsVO);
		}
		return jsonArr;
	}


}
