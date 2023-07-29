package kr.or.ddit.mem.life.golf;

import java.util.List;

import kr.or.ddit.vo.GlfprUseRcordVO;
import kr.or.ddit.vo.PuttingRoomInfoVO;
import kr.or.ddit.vo.ReadrmUseRcordVO;
import kr.or.ddit.vo.SeatInfoVO;

public interface GolfService {

	// 좌석 번호
	public List<PuttingRoomInfoVO> selectRoom(PuttingRoomInfoVO puttingRoomInfoVO);

	// 골프장 예약 가능한 자리
	public List<PuttingRoomInfoVO> useRoom(PuttingRoomInfoVO puttingRoomInfoVO);

	// 예약시 골프장 좌석 현황 변경
	public int useRoomUpdate(PuttingRoomInfoVO puttingRoomInfoVO);

	// 사용자가 골프장 예약
	public int resVationGolfRoom(GlfprUseRcordVO glfprUseRcordVO);

	// 골프장 사용자가 예약 취소했을때
	public int deleteRoom(GlfprUseRcordVO glfprUseRcordVO);

	// 골프룸 사용상태가 'Y'인 상태
	public  List<GlfprUseRcordVO> puttingRoomY(GlfprUseRcordVO glfprUseRcordVO);

}
