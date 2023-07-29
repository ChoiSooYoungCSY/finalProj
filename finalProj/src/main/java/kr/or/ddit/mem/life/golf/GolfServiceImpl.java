package kr.or.ddit.mem.life.golf;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.mapper.GlfprUseRcordMapper;
import kr.or.ddit.mapper.PuttingRoomInfoMapper;
import kr.or.ddit.mapper.ReadrmUseRcordMapper;
import kr.or.ddit.mapper.SeatInfoMapper;
import kr.or.ddit.vo.GlfprUseRcordVO;
import kr.or.ddit.vo.PuttingRoomInfoVO;
import kr.or.ddit.vo.ReadrmUseRcordVO;
import kr.or.ddit.vo.SeatInfoVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class GolfServiceImpl implements GolfService {

	@Inject
	PuttingRoomInfoMapper puttingRoomInfoMapper;

	@Inject
	GlfprUseRcordMapper glfprUseRcordMapper;

	// 좌석 번호
	@Override
	public List<PuttingRoomInfoVO> selectRoom(PuttingRoomInfoVO puttingRoomInfoVO){
		return puttingRoomInfoMapper.selectRoom(puttingRoomInfoVO);
	}

	// 골프장 예약 가능한 자리
	@Override
	public List<PuttingRoomInfoVO> useRoom(PuttingRoomInfoVO puttingRoomInfoVO){
		return puttingRoomInfoMapper.useRoom(puttingRoomInfoVO);
	}

	// 예약시 골프장 좌석 현황 변경
	@Override
	public int useRoomUpdate(PuttingRoomInfoVO puttingRoomInfoVO) {
		return puttingRoomInfoMapper.useRoomUpdate(puttingRoomInfoVO);
	}

	// 사용자가 골프장 예약
	@Transactional
	@Override
	public int resVationGolfRoom(GlfprUseRcordVO glfprUseRcordVO) {

	    // glfprUseRcordVO로부터 방 번호를 가져온다고 가정합니다.
	    int roomNo = glfprUseRcordVO.getRoomNo();

	    // 방 번호를 사용하여 PuttingRoomInfoVO 객체를 생성하고, USE_YN 값을 'Y'로 설정합니다.
	    PuttingRoomInfoVO puttingRoomInfoVO = new PuttingRoomInfoVO();
	    puttingRoomInfoVO.setRoomNo(roomNo);
	    puttingRoomInfoVO.setUseYn("Y");

	    // PUTTING_ROOM_INFO 테이블에서 해당 방 번호의 USE_YN 값을 'Y'로 업데이트합니다.
	    int updateRoom = this.puttingRoomInfoMapper.useRoomUpdate(puttingRoomInfoVO);

	    log.info("updateRoom : " + updateRoom);

	    // glfprUseRcordMapper를 통해 예약 정보를 등록하거나 업데이트합니다.
	    return glfprUseRcordMapper.resVationGolfRoom(glfprUseRcordVO);
	}

	// 골프장 사용자가 예약 취소했을때
	@Override
	public int deleteRoom(GlfprUseRcordVO glfprUseRcordVO) {
		return glfprUseRcordMapper.deleteRoom(glfprUseRcordVO);
	}

	// 골프룸 사용상태가 'Y'인 상태
	@Override
	public  List<GlfprUseRcordVO> puttingRoomY(GlfprUseRcordVO glfprUseRcordVO) {
		return glfprUseRcordMapper.puttingRoomY(glfprUseRcordVO);
	}

}
