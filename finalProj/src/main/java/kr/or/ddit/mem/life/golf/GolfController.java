package kr.or.ddit.mem.life.golf;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.vo.GlfprUseRcordVO;
import kr.or.ddit.vo.PuttingRoomInfoVO;
import kr.or.ddit.vo.ReadrmUseRcordVO;
import kr.or.ddit.vo.SeatInfoVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mem//life/glfpr")
public class GolfController {

	// DI. IoC (의존성 주입)
	@Inject
	GolfService golfService;

	@GetMapping("")
	public String selectSeat(Model model, PuttingRoomInfoVO puttingRoomInfoVO) {
		log.info("puttingRoomInfoVO" + puttingRoomInfoVO);

		// 좌석 번호 리스트
		List<PuttingRoomInfoVO> selectRoom = this.golfService.selectRoom(puttingRoomInfoVO);
		log.info("selectRoom: " + selectRoom);

		model.addAttribute("selectRoom", selectRoom);

		// 골프장 예약 가능한 자리
		List<PuttingRoomInfoVO> useRoom = this.golfService.selectRoom(puttingRoomInfoVO);
		log.info("useRoom: " + useRoom);

		model.addAttribute("useRoom", useRoom);

		// 예약시 골프장 좌석 현황 변경
		int updateRoom = this.golfService.useRoomUpdate(puttingRoomInfoVO);
		log.info("updateRoom: " + updateRoom);

		model.addAttribute("updateRoom", updateRoom);

		return "mem/mem_life_golf_practive_range";
	}

	// 골프장 좌석 예약 등록
	@PostMapping("/resVationGolfRoom")
	public String registerRoom(GlfprUseRcordVO glfprUseRcordVO) {
		log.info("register -> glfprUseRcordVO : " + glfprUseRcordVO);

		String useYmd = glfprUseRcordVO.getUseYmd().replace("-", "");
		glfprUseRcordVO.setUseYmd(useYmd);

		int result = this.golfService.resVationGolfRoom(glfprUseRcordVO);
		log.info("result : " + result);

		return "redirect:/mem/life/glfpr";
	}

	// 골프장 좌석 예약 취소
	@PostMapping("/deleteRoom")
	public String deleteSeatUse(GlfprUseRcordVO glfprUseRcordVO) {
		log.info("delete -> glfprUseRcordVO : " + glfprUseRcordVO);

		int result = this.golfService.deleteRoom(glfprUseRcordVO);

		if(result>0) {
			return "succes";
		} else {
			return "fail";
		}
	}

	@GetMapping("/tableList")
	@ResponseBody
	public List<GlfprUseRcordVO> puttingRoomY(GlfprUseRcordVO glfprUseRcordVO) {

		List<GlfprUseRcordVO> tableList = golfService.puttingRoomY(glfprUseRcordVO);

		return tableList;


	}
}
