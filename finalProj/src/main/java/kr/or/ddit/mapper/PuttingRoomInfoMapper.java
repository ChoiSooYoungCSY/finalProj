package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.PuttingRoomInfoVO;


public interface PuttingRoomInfoMapper {

	// 좌석 번호
	public List<PuttingRoomInfoVO> selectRoom(PuttingRoomInfoVO puttingRoomInfoVO);

	// 골프장 예약 가능한 자리
	public List<PuttingRoomInfoVO> useRoom(PuttingRoomInfoVO puttingRoomInfoVO);

	// 예약시 골프장 좌석 현황 변경
	public int useRoomUpdate(PuttingRoomInfoVO puttingRoomInfoVO);


}
