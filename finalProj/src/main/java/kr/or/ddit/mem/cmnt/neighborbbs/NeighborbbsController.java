package kr.or.ddit.mem.cmnt.neighborbbs;

import java.security.Principal;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.vo.ReviewVO;
import kr.or.ddit.vo.RstrntRecomVO;
import kr.or.ddit.vo.RstrntVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mem/cmnt/neighborbbs")
@Controller
public class NeighborbbsController {

	@Inject
	NeighborbbsService neighborbbsService;


	// 커뮤니티 - 우리동네
	@GetMapping("")
	public String neighborBoard(Model model, Principal principal) {
		log.info("neighborBoard");
		List<RstrntVO> list = neighborbbsService.selectAllRstrnt();
		ObjectMapper objectMApper = new ObjectMapper();
		try {
			String jsonlist = objectMApper.writeValueAsString(list);

			model.addAttribute("jsonlist", jsonlist);

		} catch (Exception e) {
			log.error("json변환중 에러 발생" + e.getMessage());
		}

		RstrntRecomVO rstrntRecomVO = new RstrntRecomVO();
		rstrntRecomVO.setMemId(principal.getName());
		rstrntRecomVO = this.neighborbbsService.selectRecomBymemID(rstrntRecomVO);
		model.addAttribute("rstrntRecomVO", rstrntRecomVO);
		log.info("rstrntVO" + rstrntRecomVO);
		return "mem/mem_cmnt_neighbor_board";
	}

	// 커뮤니티 - 우리동네
	@ResponseBody
	@GetMapping("/reviews")
	public List<ReviewVO> reviews(@ModelAttribute RstrntVO rstrntVO) {
		log.info("neighborBoard, rstrntVO : " + rstrntVO);
		return this.neighborbbsService.selectReviewsByRstrntId(rstrntVO);
	}

	@ResponseBody
	@PostMapping("/registReview")
	public List<ReviewVO> registReview(@RequestBody ReviewVO reviewVO, Principal principal) {
		log.info("registReview principal.getName() : "+principal.getName());
		reviewVO.setFrstWrterId(principal.getName());
		int cnt = this.neighborbbsService.insertReview(reviewVO);

		log.info("registReview->cnt : " + cnt);

		RstrntVO rstrntVO = new RstrntVO();
		rstrntVO.setRstrntId(reviewVO.getPlaceId());
		if(cnt == 1 ){
			return this.neighborbbsService.selectReviewsByRstrntId(rstrntVO);
		}else {
			return this.neighborbbsService.selectReviewsByRstrntId(rstrntVO);
		}

	}

}
