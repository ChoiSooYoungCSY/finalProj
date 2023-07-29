package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.GlfprUseRcordVO;
import kr.or.ddit.vo.MemberVO;

public interface GlfprUseRcordMapper {

	public List<GlfprUseRcordVO> selectByIdGlfpr(MemberVO memberVO);

	// 사용자가 골프장 예약
	public int resVationGolfRoom(GlfprUseRcordVO glfprUseRcordVO);

	// 골프장 사용자가 예약 취소했을때
	public int deleteRoom(GlfprUseRcordVO glfprUseRcordVO);

	// 골프룸 사용상태가 'Y'인 상태
	public List<GlfprUseRcordVO> puttingRoomY(GlfprUseRcordVO glfprUseRcordVO);
}
