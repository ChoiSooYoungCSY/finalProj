package kr.or.ddit.mem.life.reading;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.vo.ReadrmUseRcordVO;
import kr.or.ddit.vo.SeatInfoVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mem/life/readingroom")
public class ReadingRoomController {

	// DI. IoC (의존성 주입)
	@Inject
	ReadingRoomService readingRoomService;

	@GetMapping("")
	public String selectSeat(Model model, SeatInfoVO seatInfoVO, ReadrmUseRcordVO readrmUseRcordVO) {
		log.info("seatInfoVO" + seatInfoVO);

		// 좌석 번호 리스트
		List<SeatInfoVO> seatList = this.readingRoomService.selectSeat(seatInfoVO);
		log.info("seatList: " + seatList);

		model.addAttribute("seatList", seatList);

		// 예약 가능한 좌석 번호
		List<SeatInfoVO> useSeatList = this.readingRoomService.useSeat(seatInfoVO);
		log.info("useSeatList: " + useSeatList);

		model.addAttribute("useSeatList", useSeatList);

		// 예약시 독서 좌석 현황 변경
		int updateSeat = this.readingRoomService.useSeatUpdate(seatInfoVO);
		log.info("updateSeat: " + updateSeat);

		model.addAttribute("updateSeat", updateSeat);

		return "mem/mem_life_readingroom";
	}


	// 독서실 좌석 예약 등록
	@PostMapping("/resVationReadingRoom")
	public String registerSeat(ReadrmUseRcordVO readrmUseRcordVO) {

		log.info("readrmUseRcordVO : " + readrmUseRcordVO);
		int result = this.readingRoomService.resVationReadingRoom(readrmUseRcordVO);
		log.info("result : " + result);

		return "redirect:/mem/life/readingroom";
	}
	// 독서실 좌석 예약 취소
	@PostMapping("/deleteRoom")
	public String deleteRoomUse(ReadrmUseRcordVO readrmUseRcordVO) {

		int result = this.readingRoomService.deleteSeat(readrmUseRcordVO);

		if(result>0) {
			return "succes";
		} else {
			return "fail";
		}
	}
}
