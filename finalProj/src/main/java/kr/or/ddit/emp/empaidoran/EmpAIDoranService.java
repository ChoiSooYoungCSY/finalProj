package kr.or.ddit.emp.empaidoran;

import kr.or.ddit.vo.MemberVO;

public interface EmpAIDoranService {

	// 가입한 입주민의 남자, 여자 수
	public MemberVO selectAllGenderCnt();

	// 가입한 입주민의 연령통계
	public MemberVO selectAllMemberAgeCnt();
}
