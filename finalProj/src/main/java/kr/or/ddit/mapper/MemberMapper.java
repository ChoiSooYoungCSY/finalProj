package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.FamilyVO;
import kr.or.ddit.vo.MemberVO;

public interface MemberMapper {
	//회원 정보 입력
	//<insert id="registerMember" parameterType="memberVO">
	public int registerMember(MemberVO memberVO);

	//아이디 중복 체크
	//<select id="checkMemId" parameterType="memberVO" resultType="int">
	public int checkMemId(String memId);

	//회원상세정보
	//<select id="detailMember" parameterType="memberVO" resultMap="memberMap">
	public MemberVO detailMember(MemberVO memberVO);

	//회원정보 수정 비밀번호 확인
	public int passwordConfirm(MemberVO memberVO);

	//회원 가입신청
	public int signUpMember(MemberVO memberVO);

	//회원 가족등록
	public int insertMemberFamily(FamilyVO familyVO);

	//회원 가족정보 가져오기
	public List<FamilyVO> detailmemFamily(String username);

	//회원 가족정보 삭제
	public int deleteMemFamily(MemberVO memberVO);

	//회원정보 수정
	public int editMemInfo(MemberVO memberVO);

	//얼굴인식 등록
	public int faceRegister(MemberVO memberVO);
}

