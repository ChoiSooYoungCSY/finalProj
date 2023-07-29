package kr.or.ddit.emp.empaidoran;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.AIMapper;
import kr.or.ddit.vo.MemberVO;

@Service
public class EmpAIDoranServiceImpl implements EmpAIDoranService{

	@Inject
	AIMapper aiMapper;

	@Override
	public MemberVO selectAllGenderCnt() {
		MemberVO memberVO = this.aiMapper.selectAllGenderCnt();
		memberVO.setMemberTotal(memberVO.getFemaleCnt()+memberVO.getMaleCnt());
		return memberVO;
	}

	@Override
	public MemberVO selectAllMemberAgeCnt() {
		return this.aiMapper.selectAllMemberAgeCnt();
	}

}
