package kr.or.ddit.mem.vote;


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
@RequestMapping("/mem/vote")
@Controller
public class VoteBbsController {

	@Inject
	VoteBbsService voteBbsService;

	// 전자 투표 목록
	@GetMapping("/votelist")
	public String voteList() {
		log.info("voteList");
		return "mem/mem_vote_list";
	}

	// 투표 목록
	@ResponseBody
	@GetMapping("/postList")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray postList() {
		log.info("postList");

		return (JSONArray) this.voteBbsService.selectAllList();
   }



	// 전자투표 - 진행 중 투표
	@GetMapping("/inprogrsvote")
	public String inProgressVote() {
		log.info("inProgressVote");
		return "mem/mem_vote_in_progress_vote";
	}

	// 전자 투표 상세
	@GetMapping("/inprogrsvote/detail")
	public String inProgressVoteDetail() {
		log.info("inProgressVoteDetail");
		return "mem/mem_vote_in_progress_vote_detail";
	}

	// 전자투표 - 진행 중 투표
	@GetMapping("/inprogrsvote/finish")
	public String voteFinish() {
		log.info("voteFinish");
		return "mem/mem_vote_in_progress_vote_finish";
	}


}
