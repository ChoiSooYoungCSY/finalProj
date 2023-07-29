package kr.or.ddit.mem.mypg.commonFacility.useInfo;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.GlfprUseRcordMapper;
import kr.or.ddit.mapper.GymUseRcordMapper;
import kr.or.ddit.mapper.LoanBookMapper;
import kr.or.ddit.mapper.ReadrmUseRcordMapper;
import kr.or.ddit.mapper.SwmplUseRcordMapper;
import kr.or.ddit.vo.GlfprUseRcordVO;
import kr.or.ddit.vo.GymUseRcordVO;
import kr.or.ddit.vo.LoanBookVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.ReadrmUseRcordVO;
import kr.or.ddit.vo.SwmplUseRcordVO;
@Service
public class UseInfoServiceImpl implements UseInfoService{

	@Inject
	LoanBookMapper loanBookMapper;

	@Inject
	GlfprUseRcordMapper glfprUseRcordMapper;

	@Inject
	GymUseRcordMapper gymUseRcordMapper;

	@Inject
	ReadrmUseRcordMapper readrmUseRcordMapper;

	@Inject
	SwmplUseRcordMapper swmplUseRcordMapper;



	@Override
	public List<LoanBookVO> selectByIdLoanBook(MemberVO memberVO) {
		return this.loanBookMapper.selectByIdLoanBook(memberVO);
	}

	@Override
	public List<GlfprUseRcordVO> selectByIdGlfpr(MemberVO memberVO) {
		return this.glfprUseRcordMapper.selectByIdGlfpr(memberVO);
	}

	@Override
	public List<GymUseRcordVO> selectByIdGym(MemberVO memberVO) {
		return this.gymUseRcordMapper.selectByIdGym(memberVO);
	}

	@Override
	public List<ReadrmUseRcordVO> selectByIdReadrm(MemberVO memberVO) {
		return this.readrmUseRcordMapper.selectByIdReadrm(memberVO);
	}

	@Override
	public List<SwmplUseRcordVO> selectByIdSwmpl(MemberVO memberVO) {
		return this.swmplUseRcordMapper.selectByIdSwmpl(memberVO);
	}








}
