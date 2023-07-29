package kr.or.ddit.mem.mypg.visit;

import java.util.List;

import kr.or.ddit.vo.GlfprUseRcordVO;
import kr.or.ddit.vo.GymUseRcordVO;
import kr.or.ddit.vo.LoanBookVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.ReadrmUseRcordVO;
import kr.or.ddit.vo.SwmplUseRcordVO;
import kr.or.ddit.vo.VisitVO;

public interface VisitService {

	public List<VisitVO> selctVisitInfo(String memId);

	public int registVisit(VisitVO visitVO);

	public VisitVO selectMonthCnt(String memId);

	public int deleteVisit(VisitVO visitVO);
	public int updateVisit(VisitVO visitVO);
}
