package kr.or.ddit.mem.mypg.personalInfo;


import kr.or.ddit.vo.MemberVO;

public interface PersonalInfoService {
	//회원정보수정 진입시 패스워드 확인
	public int passwordConfirm(MemberVO memberVO);

	//회원정보수정
	public int editMemInfo(MemberVO memberVO);

	//얼굴인식 로그인 등록
	public int registerFace(MemberVO memberVO);

}

