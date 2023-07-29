package kr.or.ddit.mem.life.reading;

import java.util.List;

import kr.or.ddit.vo.ReadrmUseRcordVO;
import kr.or.ddit.vo.SeatInfoVO;

public interface ReadingRoomService {

	// 독서실 좌석 번호
	public List<SeatInfoVO> selectSeat(SeatInfoVO seatInfoVO);

	// 독서실 예약 가능한 자리
	public List<SeatInfoVO> useSeat(SeatInfoVO seatInfoVO);

	// 에약시 독서 좌석 현황 변경
	public int useSeatUpdate(SeatInfoVO seatInfoVO);

	//입주민 사용자가 독서실 예약 등록
	public int resVationReadingRoom(ReadrmUseRcordVO readrmUseRcordVO);

	// 입주민 사용자가 예약 취소
	public int deleteSeat(ReadrmUseRcordVO readrmUseRcordVO);

}
