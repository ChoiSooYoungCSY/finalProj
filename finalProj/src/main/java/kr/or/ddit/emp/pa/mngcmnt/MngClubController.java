package kr.or.ddit.emp.pa.mngcmnt;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.mem.cmnt.club.ClubService;
import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.vo.ClubVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @Class Name : MngClubController.java
 * @Description : MngClubController Class
 * @Modification Information
 * @
 * @   수정일        수정자                  수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2023.07.05          최초생성
 *
 * @author 임경빈
 * @since 2023.07.05
 * @version 1.0
 * @see
 */

@Slf4j
@RequestMapping("/emp/pa/mngclubbbs")
@Controller
public class MngClubController {

	@Autowired
	ClubService clubService;

	/** 인사행정 - 커뮤니티 관리 - 소모임 게시판 */
	@GetMapping("")
	public String mngMemClubBoard(Model model
			, @RequestParam(value="size", 		 required=false, defaultValue="5") int size
			, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage
			, @RequestParam(value="cond", 		 required=false, defaultValue="confmY")  String cond
			, @RequestParam(value="keyword", 	 required=false, defaultValue="")  String keyword) {

		log.info("mngMemClubBoard");

		Map<String, String> map = new HashMap<>();
		map.put("size"		 , String.valueOf(size));
		map.put("currentPage", String.valueOf(currentPage));
		map.put("cond"		 , cond);
		map.put("keyword"	 , keyword);

		log.info("clubBoard - map : " + map);

		// 전체 글 목록 구하기
		List<ClubVO> clubVOList = this.clubService.selectAll(map);

		// 전체 글 수 구하기
		int total = this.clubService.getTotal(map);
		log.info("clubBoard - total : " + total);

		model.addAttribute("data",
				new ArticlePage<ClubVO>(total, currentPage, size, clubVOList));

		return "emp/pa_mng_club_board";
	}

	/** 소모임 승인, 승인취소 */
	@ResponseBody
	@GetMapping("/confirm")
	public String confirm(String clbId) {
		log.info("clbId : " + clbId);

		int result = this.clubService.confirm(clbId);
		log.info("result : " + result);

		return String.valueOf(result);
	}

	/** 소모임 전체 승인 */
	@ResponseBody
	@GetMapping("/confirmall")
	public String confirmAll() {

		int result = this.clubService.confirmAll();
		log.info("result : " + result);

		return String.valueOf(result);
	}

}















