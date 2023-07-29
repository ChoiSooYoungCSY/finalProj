package kr.or.ddit.mem.mypg.visit;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.GlfprUseRcordMapper;
import kr.or.ddit.mapper.GymUseRcordMapper;
import kr.or.ddit.mapper.LoanBookMapper;
import kr.or.ddit.mapper.ReadrmUseRcordMapper;
import kr.or.ddit.mapper.SwmplUseRcordMapper;
import kr.or.ddit.mapper.VisitMapper;
import kr.or.ddit.vo.GlfprUseRcordVO;
import kr.or.ddit.vo.GymUseRcordVO;
import kr.or.ddit.vo.LoanBookVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.ReadrmUseRcordVO;
import kr.or.ddit.vo.SwmplUseRcordVO;
import kr.or.ddit.vo.VisitVO;
@Service
public class VisitServiceImpl implements VisitService{

	@Inject
	VisitMapper visitMapper;


	@Override
	public List<VisitVO> selctVisitInfo(String memId) {
		return this.visitMapper.selctVisitInfo(memId);
	}


	@Override
	public int registVisit(VisitVO visitVO) {
		visitVO.setLastUpdusrId(visitVO.getFrstWrterId());
		return this.visitMapper.registVisit(visitVO);
	}


	@Override
	public VisitVO selectMonthCnt(String memId) {
		return this.visitMapper.selectMonthCnt(memId);
	}


	@Override
	public int deleteVisit(VisitVO visitVO) {
		return this.visitMapper.deleteVisit(visitVO);
	}


	@Override
	public int updateVisit(VisitVO visitVO) {
		return this.visitMapper.updateVisit(visitVO);
	}








}
