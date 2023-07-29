package kr.or.ddit.emp.cmnt.empntcbbs;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.EmpNtcBbsMapper;
import kr.or.ddit.vo.EmpNtcBbsVO;
import kr.or.ddit.vo.MemberVO;
@Service
public class EmpNoticebbsServiceImpl implements EmpNoticebbsService{

	@Inject
	EmpNtcBbsMapper empNtcBbsMapper;

	//직원 공지사항 게시판 전체글
	@Override
	public List<EmpNtcBbsVO> selectAll() {
		JSONArray jsonArr = new JSONArray();
		List<EmpNtcBbsVO> postList = this.empNtcBbsMapper.selectAll();
		for (EmpNtcBbsVO empNtcBbsVO : postList) {
			jsonArr.add(empNtcBbsVO);
		}
		return jsonArr;
	}


}
