package kr.or.ddit.emp.pa.mngcmnt;

import java.lang.annotation.Repeatable;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mem.cmnt.neighborbbs.NeighborbbsService;
import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.vo.ClubVO;
import kr.or.ddit.vo.ReviewVO;
import kr.or.ddit.vo.RstrntVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/pa/mngneighborbbs")
@Controller
public class MngNeighborController {


	@Inject
	NeighborbbsService neighborbbsService;



	// 인사행정 - 커뮤니티 관리 - 우리동네 게시판
	@GetMapping("")
	public String mngNeighborBoard() {
		log.info("mngNeighborBoard");
		return "emp/pa_mng_neighbor_board";
	}
	@ResponseBody
	@PostMapping("/registPlace")
	public String registPlace(@ModelAttribute RstrntVO rstrntVO, Principal principal) {

		log.info("registPlace, rstrntVO"+rstrntVO);
		rstrntVO.setFrstWrterId(principal.getName());
		int cnt = this.neighborbbsService.registRstrnt(rstrntVO);
		return String.valueOf(cnt);
	}
	@ResponseBody
	@GetMapping("/allRstrnt")
	public List<RstrntVO> allRstrnt(){
		return this.neighborbbsService.selectAllRstrnt();
	}


	@ResponseBody
	@GetMapping("/reviews")
	public ArticlePage<ReviewVO> reviewsById(Model model
			, @RequestParam(value="size", 		 required=false, defaultValue="5") int size
			, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage
			, @RequestParam(value="cond", 		 required=false, defaultValue="")  String cond
			, @RequestParam(value="keyword", 	 required=false, defaultValue="")  String keyword
			, @RequestParam(value="placeId", 	 required=false, defaultValue="")  String placeId
			) {

		Map<String, String> map = new HashMap<>();

		map.put("size"		 , String.valueOf(size));
		map.put("currentPage", String.valueOf(currentPage));
		map.put("cond"		 , cond);
		map.put("keyword"	 , keyword);
		map.put("placeId"	 , placeId);

		List<ReviewVO> reviewVOList = this.neighborbbsService.selectAllReviews(map);
		// 전체 글 수 구하기
		int total = this.neighborbbsService.getTotal(map);
		log.info("reviewsById - total : " + total);

		return new ArticlePage<ReviewVO>(total, currentPage, size, reviewVOList);
	}

	@ResponseBody
	@PostMapping("/deleteReview")
	public int deleteReview(@RequestBody int reviewNo) {
		log.info("deleteReview"+reviewNo);
		return this.neighborbbsService.deleteReview(reviewNo);
	}


}
