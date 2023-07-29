package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.SeatInfoVO;

public interface SeatInfoMapper {

	// 좌석 번호
	public List<SeatInfoVO> selectSeat(SeatInfoVO seatInfoVO);

	// 독서실 예약 가능한 자리
	public List<SeatInfoVO> useSeat(SeatInfoVO seatInfoVO);

	// 예약시 독서 좌석 현황 변경
	public int useSeatUpdate(SeatInfoVO seatInfoVO);
}
