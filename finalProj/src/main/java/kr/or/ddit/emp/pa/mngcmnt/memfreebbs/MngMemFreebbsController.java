package kr.or.ddit.emp.pa.mngcmnt.memfreebbs;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.vo.FreeBbsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/pa/mngmemfreebbs")
@Controller
public class MngMemFreebbsController {

	@Inject
	MngMemFreebbsService mngMemFreebbsService;

	// 인사행정 - 커뮤니티 관리 - 자유게시판
	@GetMapping("")
	public String mngMemFreeBoard() {
		log.info("mngMemFreeBoard");
		return "emp/pa_mng_mem_free_board";
	}

	/** 입주민 자유 게시물 불러오기 **/
	@ResponseBody
	@GetMapping("/postList")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray postList() {
		log.info("postList");
		return (JSONArray) this.mngMemFreebbsService.selectAll();
	}

	/**
	 * 등록된 게시글을 삭제
	 * @param freeBbsVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/deletePost")
	public String deletePost(@RequestBody FreeBbsVO freeBbsVO) {

		log.info("삭제 할 freeBbsVO : ", freeBbsVO);

		int result = this.mngMemFreebbsService.deletePost(freeBbsVO);

		if(result>0) { //삭제 성공
			return "success";
		}else {
			return "fail";
		}
	}
}
