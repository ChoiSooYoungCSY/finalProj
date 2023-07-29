package kr.or.ddit.mapper;

import kr.or.ddit.vo.UserVO;

public interface UserMapper {
	//<select id="detailUser" parameterType="String" resultType="userMap">
	//회원/직원 로그인
	public UserVO detailUser(String userId);

	//아이디 찾기
	public String findId(UserVO userVO);

	//비밀번호 찾기에서 회원(직원)인지 확인하는 작업
	public String findPassword(UserVO userVO);

	//회원일까?
	public int findMember(UserVO userVO);

	//직원일까?
	public int findEmp(UserVO userVO);

	//회원 비밀번호 변경
	public int changeMemPassword(UserVO userVO);

	//직원 비밀번호 변경
	public int changeEmpPassword(UserVO userVO);



}

