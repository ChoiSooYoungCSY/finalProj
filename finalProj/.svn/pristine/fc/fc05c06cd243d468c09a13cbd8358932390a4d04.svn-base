package kr.or.ddit.emp.pa.mnginprogressvote;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/pa/mnginprogrsvote")
@Controller
public class MngInProgressVoteController {

	@Inject
	MngInProgressVoteService mngInProgressVoteService;

	// 인사행정 - 전자투표 관리 - 진행 중 투표
	@GetMapping("")
	public String mngInProgressVote() {
		log.info("mngInProgressVote");
		return "emp/pa_mng_in_progress_vote";
	}


	/** 인사행정 - 전자투표 관리 - 진행 중 투표 불러오기 **/
	@ResponseBody
	@GetMapping("/postList")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray postList() {
		log.info("postList");

		return (JSONArray) this.mngInProgressVoteService.voteIng();
	}

}
