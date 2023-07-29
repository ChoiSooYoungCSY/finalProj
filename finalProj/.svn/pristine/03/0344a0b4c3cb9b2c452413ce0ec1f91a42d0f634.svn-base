package kr.or.ddit.emp.pa.mngcmnt.mngscndhandbbs;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import freemarker.core.ParseException;
import kr.or.ddit.mem.cmnt.secondhand.ScndhdBbsService;
import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.vo.ScndhdBbsVO;
import kr.or.ddit.vo.ScndhdRecomVO;
import kr.or.ddit.vo.SttemntPstVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/pa/mngscndhandbbs")
@Controller
public class MngScndhandBbsController {

	@Inject
	MngScndhandBbsService mngScndhandBbsService;
	@Inject
	ScndhdBbsService scndhdBbsService;

	// 인사행정 - 커뮤니티 관리 - 중고장터 게시판
	@GetMapping("")
	public String secondReportList(Model model, Principal principal
			, @RequestParam(value="size", 		 required=false, defaultValue="12") int size
			, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage
			, @RequestParam(value="cond", 		 required=false, defaultValue="")  String cond
			, @RequestParam(value="keyword", 	 required=false, defaultValue="")  String keyword) {
		log.info("secondReportList");
		log.info("scndhdBoard");
		log.info("principal"+principal);
		 Map<String, String> map = new HashMap<>();
			map.put("size"		 , String.valueOf(size));
			map.put("currentPage", String.valueOf(currentPage));
			map.put("cond"		 , cond);
			map.put("keyword"	 , keyword);

			log.info("scndhdBoard - map : " + map);


			List<ScndhdBbsVO> postlist = scndhdBbsService.selectAll(map);
			log.info("scndhdBoard - postlist : " + postlist);


			int total = this.scndhdBbsService.getTotal(map);
			log.info("total : ", total);

			model.addAttribute("data", new ArticlePage<ScndhdBbsVO>(total, currentPage, size, postlist));

		return "emp/pa_mng_secondhand_board";
	}

	// 신고 게시글 디테일
	@GetMapping("/detail")
	public String sttPost(Model model, SttemntPstVO sttemntPstVO){
		log.info("sttPost :" + sttemntPstVO);

		List<SttemntPstVO> sttPostDetail = this.mngScndhandBbsService.sttPost(sttemntPstVO);
		log.info("sttPostDetail : " + sttPostDetail);

		model.addAttribute("sttPostDetail", sttPostDetail);

		SttemntPstVO sttCnt = this.mngScndhandBbsService.reportCnt(sttemntPstVO);
		log.info("sttCnt : " + sttCnt);

		model.addAttribute("sttCnt", sttCnt);

		return "emp/pa_mng_secondhand_detail";
	}

	// 판매게시글 상세 페이지
	@GetMapping("/memdetail")
	public String secondDetail(Model model, ScndhdBbsVO scndhdBbsVO) throws ParseException, java.text.ParseException {
		log.info("scndhdBbsDetailVO :" + scndhdBbsVO);

		scndhdBbsVO = this.scndhdBbsService.selectOne(scndhdBbsVO);
		log.info("memdetail : " + scndhdBbsVO);

		// DB에 저장된 날짜의 형식을 변경
	    SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyyMMddHHmmss");
	    SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	    Date fsrtWritingDate = sourceFormat.parse(scndhdBbsVO.getFsrtWritingTm());
		String formattedDate = targetFormat.format(fsrtWritingDate);
		scndhdBbsVO.setFsrtWritingTm(formattedDate);

		model.addAttribute("detailOne", scndhdBbsVO);

		//게시글 조회수 증가
		scndhdBbsService.plusCnt(scndhdBbsVO);

		return "emp/pa_mng_secondhand_memdetail";
	}

	// 신고 게시글 다중 삭제
	@ResponseBody
	@PostMapping("/deletePost")
	public int secondDeletePost(@RequestBody String[] checkPostList) {
		log.info("checkPostList");
		List<String> postList = new ArrayList<String>();
		for (String checkPost : checkPostList) {
			log.info("checkPost"+checkPost);
			postList.add(checkPost);
		}
		log.info("check->postList : " + postList);
		return this.mngScndhandBbsService.deletePost(postList);
	}

	// 관리자 신고 상세 게시글에서 삭제
	@ResponseBody
	@PostMapping("/reportDetailDelete")
	public String secondDeletePost(@RequestBody SttemntPstVO sttemntPstVO) {
		log.info("DEL_YN -> Y" , sttemntPstVO);

		int result = this.mngScndhandBbsService.deletePostOne(sttemntPstVO);

		if(result>0) { //삭제 성공
			return "success";
		}else {
			return "fail";
		}
	}

	// 신고 리스트
	@GetMapping("/reportPost")
	public String reportPost(Model model, SttemntPstVO sttemntPstVO){
		log.info("reportPost");

		List<SttemntPstVO> reportPostList = this.mngScndhandBbsService.reportPost(sttemntPstVO);
		log.info("reportPost : " + reportPostList);

		model.addAttribute("reportPostList",reportPostList);
		return "emp/pa_mng_secondhand_board";

	}
}
