package kr.or.ddit.mem.cmnt.secondhand;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import freemarker.core.ParseException;
import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.ScndhdBbsVO;
import kr.or.ddit.vo.ScndhdRecomVO;
import kr.or.ddit.vo.SttemntPstVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mem/cmnt/secondhandbbs")
@Controller
public class ScndhdBbsController {

	@Inject
	ScndhdBbsService scndhdBbsService;

	// Principal 입주민 정보 보안
	// 중고장터 게시판 리스트
	@GetMapping("")
	public String scndhdBoard(Model model, Principal principal
			, @RequestParam(value="size", 		 required=false, defaultValue="12") int size
			, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage
			, @RequestParam(value="cond", 		 required=false, defaultValue="")  String cond
			, @RequestParam(value="keyword", 	 required=false, defaultValue="")  String keyword) {

		log.info("scndhdBoard");
		log.info("principal"+principal);
		 Map<String, String> map = new HashMap<>();
			map.put("size"		 , String.valueOf(size));
			map.put("currentPage", String.valueOf(currentPage));
			map.put("cond"		 , cond);
			map.put("keyword"	 , keyword);

			log.info("scndhdBoard - map : " + map);



		List<ScndhdBbsVO> postlist = scndhdBbsService.selectAll(map);
		//scndhdBoard - postlist : [ScndhdBbsVO(rnum=1, pstId=SCN000846, frstWrterId=chayles10, fsrtWritingTm=20230601001255, pstSj=놀자곰 일러스트 엽서, pstCn=<p>2</p>
		//, rdcnt=165, delYn=N, scndhandPc=10002, schandSeCd=SDHD43, schandSeNm=예술작품, atchmnflId=ATT000846, lastUpdusrId=dohee, lastUpdtTm=20230706212207, ntslStts=판매중, flpth=null, streFlNm=null, stte
		log.info("scndhdBoard - postlist : " + postlist);


		int total = this.scndhdBbsService.getTotal(map);
		log.info("total : ", total);

		model.addAttribute("data", new ArticlePage<ScndhdBbsVO>(total, currentPage, size, postlist));



		// 중고장터 판매게시글 추천
		ScndhdRecomVO scndhdRecomVO = this.scndhdBbsService.selectRecomList(principal.getName());
		log.info("scndhdRecomVO : " + scndhdRecomVO);

		String scndhdId = scndhdRecomVO.getScndhdId();
		String[] scndhdIdArr = scndhdId.split(",");

		List<ScndhdBbsVO> scndhdBbsVOList = new ArrayList<>();

		for (String recomScndhdId : scndhdIdArr) {
			ScndhdBbsVO scndhdBbsVO = new ScndhdBbsVO();
			scndhdBbsVO.setPstId(recomScndhdId);

			scndhdBbsVOList.add(this.scndhdBbsService.selectOne(scndhdBbsVO));
		}
		log.info("scndhdBbsVOList : " + scndhdBbsVOList);

		model.addAttribute("scndhdBbsVOList",scndhdBbsVOList);
		return "mem/mem_cmnt_secondhand_board";
	}

	// 판패 게시글 등록 URL
	@GetMapping("/register")
	public String secondRegister() {
		log.info("secondRegister");

		return "mem/mem_cmnt_secondhand_register";
		}

	// 중고장터 판매 게시글 등록
	@PostMapping("/registerPost")
	public String secondRegisterPost(ScndhdBbsVO scndhdBbsVO) {

		log.info("scndhdBbsVO : " + scndhdBbsVO);
		int result = this.scndhdBbsService.registerPost(scndhdBbsVO);
		log.info("result : " + result);

		return "redirect:/mem/cmnt/secondhandbbs";
	}

	// 게시글 신고
	@PostMapping("/declarpost")
	public String secondeClarPost(SttemntPstVO sttemntPstVO) {
		log.info("sttemntPstVO : " + sttemntPstVO);

		int cnt = this.scndhdBbsService.reportCount(sttemntPstVO);
		log.info("cnt : " + cnt);
		if(cnt == 0) {
			int result = this.scndhdBbsService.deClarPost(sttemntPstVO);
			log.info("result : " + result);
		}
		return "redirect:/mem/cmnt/secondhandbbs";
	}



	// 판매게시글 상세 페이지
	@GetMapping("/detail")
	public String secondDetail(Model model, ScndhdBbsVO scndhdBbsVO) throws ParseException, java.text.ParseException {
		log.info("scndhdBbsDetailVO :" + scndhdBbsVO);

		scndhdBbsVO = this.scndhdBbsService.selectOne(scndhdBbsVO);
		log.info("detail : " + scndhdBbsVO);

		// DB에 저장된 날짜의 형식을 변경
	    SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyyMMddHHmmss");
	    SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	    Date fsrtWritingDate = sourceFormat.parse(scndhdBbsVO.getFsrtWritingTm());
		String formattedDate = targetFormat.format(fsrtWritingDate);
		scndhdBbsVO.setFsrtWritingTm(formattedDate);

		model.addAttribute("detailOne", scndhdBbsVO);

		//게시글 조회수 증가
		scndhdBbsService.plusCnt(scndhdBbsVO);

		return "mem/mem_cmnt_secondhand_detail";
	}

	// 중고장터 게시판 수정 URL
	@GetMapping("/update")
	public String secondUpdate(Model model, ScndhdBbsVO scndhdBbsVO) {
		log.info("secondUpdateVO : " + scndhdBbsVO);

		scndhdBbsVO = this.scndhdBbsService.selectOne(scndhdBbsVO);
		log.info("updateOne : " + scndhdBbsVO);


		model.addAttribute("updateOne", scndhdBbsVO);

			return "mem/mem_cmnt_secondhand_update";
		}

	// 중고장터 게시판 수정 페이지
	@PostMapping("/updatePost")
	public String secondUpdatePost(ScndhdBbsVO scndhdBbsVO) {
		log.info("updatePostVO" + scndhdBbsVO);

		int result = this.scndhdBbsService.updatePost(scndhdBbsVO);
		log.info("updatePost : " + result);

		String pstId = scndhdBbsVO.getPstId();

		return "redirect:/mem/cmnt/secondhandbbs/detail?pstId="+pstId ;
	}


	// 등록된 이미지 다중 수정 선택사항(원하는 이미지 변경)
	@ResponseBody
	@PostMapping("/updateImages")
	public int updateImages(AtchmnflDetailVO atchmnflDetailVO) {
		log.info("thirdUpdatePost->atchmnflDetailVO : " + atchmnflDetailVO);

		int result = this.scndhdBbsService.updateImages(atchmnflDetailVO);

		log.info("controller->thirdUpdatePost : " + result);


		return result;
	}

	// 중고장터 게시판 삭제
	@ResponseBody
	@PostMapping("/deletePost")
	public String secondDeletePost(@RequestBody ScndhdBbsVO scndhdBbsVO) {
		log.info("DEL_YN -> Y" , scndhdBbsVO);

		int result = this.scndhdBbsService.deletePostOne(scndhdBbsVO);

		if(result>0) { //삭제 성공
			return "success";
		}else {
			return "fail";
		}
	}

	// 커뮤니티 - 중고장터
	@GetMapping("/cmnt/secondhandbbs")
	public String secondhandBoard() {
		log.info("secondhandBoard");
		return "mem/mem_cmnt_secondhand_board";
	}

}
