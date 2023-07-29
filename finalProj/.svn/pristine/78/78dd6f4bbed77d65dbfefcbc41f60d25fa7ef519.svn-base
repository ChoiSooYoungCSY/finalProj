package kr.or.ddit.mem.life.reading;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.ReadrmUseRcordMapper;
import kr.or.ddit.mapper.SeatInfoMapper;
import kr.or.ddit.vo.ReadrmUseRcordVO;
import kr.or.ddit.vo.SeatInfoVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ReadingRoomServiceImpl implements ReadingRoomService {

	// 좌석 정보
	@Inject
	SeatInfoMapper seatInfoMapper;

	// 좌석 정보 현황
	@Inject
	ReadrmUseRcordMapper readrmUseRcordMapper;

	// 좌석 번호
	@Override
	public List<SeatInfoVO> selectSeat(SeatInfoVO seatInfoVO){
		return this.seatInfoMapper.selectSeat(seatInfoVO);
	}

	// 독서실 예약 가능한 자리
	@Override
	public List<SeatInfoVO> useSeat(SeatInfoVO seatInfoVO) {
		return this.seatInfoMapper.useSeat(seatInfoVO);
	}

	// 예약시 독서 좌석 현황 변경
	@Override
	public int useSeatUpdate(SeatInfoVO seatInfoVO) {
		return this.seatInfoMapper.useSeatUpdate(seatInfoVO);
	}

	//입주민 사용자가 독서실 예약 등록
	@Override
	public int resVationReadingRoom(ReadrmUseRcordVO readrmUseRcordVO) {
		return this.readrmUseRcordMapper.resVationReadingRoom(readrmUseRcordVO);
	}

	// 입주민 사용자가 예약 취소
	@Override
	public int deleteSeat(ReadrmUseRcordVO readrmUseRcordVO) {
		return this.readrmUseRcordMapper.deleteSeat(readrmUseRcordVO);
	}
}
