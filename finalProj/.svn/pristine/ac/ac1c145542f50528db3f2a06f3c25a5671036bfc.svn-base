package kr.or.ddit.mem.cmnt.freebbs;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.ddit.mem.main.MemMainController;
import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.mem.cmnt.freebbs.FreeBbsService;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.FreeBbsCmntVO;
import kr.or.ddit.vo.FreeBbsVO;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mem/cmnt/freebbs")
public class FreeBbsController {


	//DI. IoC (의존성 주입)
	@Autowired
	FreeBbsService freeBbsService;

	@GetMapping("")
	public String freeBoard(Model model, Principal principal, FreeBbsVO freeBbsVO,
			@RequestParam(value = "size", required = false, defaultValue = "10") int size,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			@RequestParam(value = "cond", required = false, defaultValue = "") String cond,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword) throws ParseException, java.text.ParseException {

		log.info("freeBoard");

		// 로그인 한 아이디
		String memId = principal.getName();
		// list->memId : 멤버아이디명
		log.info("list->memId : " + memId);
		log.info("cond : " + cond);
		log.info("keyword : " + keyword);

		// Map에 cond, keyword를 넣어서 해당 조건에 맞는 레코드수를 구하기
		Map<String, String> map = new HashMap<String, String>();

		map.put("size", String.valueOf(size));
		map.put("currentPage", Integer.toString(currentPage));
		map.put("cond", cond);
		map.put("keyword", keyword);

		int total = this.freeBbsService.getTotal(map);

		// 위의 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가해서 list구하기
		List<FreeBbsVO> data = this.freeBbsService.list(map);
		log.info("data : " + data);

		//데이터 베이스에 varchar2형식으로 저장되어 있는 날짜를 변환해서 나타냄
		SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd");

		for (FreeBbsVO vo : data) {
		    Date fsrtWritingDate = sourceFormat.parse(vo.getFrstWrterTm());
		    String formattedDate = targetFormat.format(fsrtWritingDate);
		    vo.setFrstWrterTm(formattedDate);
		    log.info("formattedDate : " + formattedDate);
		}

		/**
		 * 페이징 처리를 위하 전체 글 수 구하기
		 */
		log.info("total : " + total);
		model.addAttribute("data", new ArticlePage<FreeBbsVO>(total, currentPage, size, data));


		return "mem/mem_cmnt_free_board";
		}

	/**
	 * 게시글 등록
	 * @return
	 */
	@GetMapping("/register")
	public String register() {
		log.info("register");
		return "mem/mem_cmnt_free_board_register";
	}

	/**
	 * 자유게시판 게시글 등록
	 * @param freeBbsVO
	 * @return
	 */
	@PostMapping("/registerPost")
	public String registerPost(@ModelAttribute("FreeBbsVO") FreeBbsVO freeBbsVO) {
		log.info("registerPost freeBbsVO => " + freeBbsVO);

		int result = this.freeBbsService.registerPost(freeBbsVO);
		log.info("등록 result : " + result);

		return "redirect:/mem/cmnt/freebbs";
	}

	/**
	 * 자유게시판 게시글 상세보기
	 * @param freeBbsVO
	 * @param model
	 * @return
	 * @throws ParseException
	 */
	@GetMapping("/freedetail")
	public String freeDetail(@ModelAttribute FreeBbsVO freeBbsVO, Model model) throws ParseException {

		log.info("freeBbsVO : " + freeBbsVO);

		FreeBbsVO freebbsdata = this.freeBbsService.freeDetail(freeBbsVO);
		log.info("상세보기 freebbsdata : " + freebbsdata);

		//데이터 베이스에 varchar2형식으로 저장되어 있는 날짜를 변환해서 나타냄
		SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyyMMddHHmmss");
	    SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Date lstWritingDate = sourceFormat.parse(freebbsdata.getLastUpdtTm());
        String formattedDate = targetFormat.format(lstWritingDate);
        freebbsdata.setLastUpdtTm(formattedDate);
        log.info("formattedDate : " + formattedDate);

		model.addAttribute("freebbsdata", freebbsdata);

		//게시글 조회수 증가
		freeBbsService.plusCnt(freeBbsVO);


		return "mem/mem_cmnt_free_board_detail";
	}

	/**
	 * 게시글 수정하기
	 * @param model
	 * @param freeBbsVO
	 * @return
	 * @throws ParseException
	 */
	@GetMapping("/freeupdate")
	public String freeUpdate(Model model, FreeBbsVO freeBbsVO) throws ParseException {

		log.info("freeBbsVO : " + freeBbsVO);

		FreeBbsVO freebbsdata = this.freeBbsService.freeDetail(freeBbsVO);
		log.info("상세보기 freebbsdata : " + freebbsdata);

		//데이터 베이스에 varchar2형식으로 저장되어 있는 날짜를 변환해서 나타냄
		SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyyMMddHHmmss");
	    SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Date lstWritingDate = sourceFormat.parse(freebbsdata.getLastUpdtTm());
        String formattedDate = targetFormat.format(lstWritingDate);
        freebbsdata.setLastUpdtTm(formattedDate);
        log.info("formattedDate : " + formattedDate);

		model.addAttribute("freeUpdate", freebbsdata);

		return "mem/mem_cmnt_free_board_update";
	}

	/**
	 * 게시글 수정하기
	 * @param model
	 * @param freeBbsVO
	 * @return
	 *
	 */
	@PostMapping("/freeupdatePost")
	public String freeUpdatePost(Model model, @ModelAttribute("FreeBbsVO") FreeBbsVO freeBbsVO) {
		log.info("freeBbsVO : " + freeBbsVO);

		int result = this.freeBbsService.freeUpdatePost(freeBbsVO);
		log.info("freeUpdate : " + freeBbsVO);


		model.addAttribute("freeUpdate", freeBbsVO);

		return "redirect:/mem/cmnt/freebbs/freedetail?pstId="+(freeBbsVO.getPstId()+"");
	}

	/**
	 * 게시글 다중이미지 수정하기
	 * @param atchmnflDetailVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/thirdUpdatePost")
	public int thirdUpdatePost(AtchmnflDetailVO atchmnflDetailVO) {
		//thirdUpdatePost->atchmnflDetailVO : AtchmnflDetailVO(
		//atchmnflNo=1117, atchmnflId=null, frstWrterTm=null
		//, frstWrterId=null, flpth=null, streFlNm=null, atchmnflSize=0, atchmnflTy=null, orginlAtchmnflNm=null,
		//lastUpdusrId=null, lastUpdtTm=null, delYn=null,
		//uploadFile=org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@59ba72e3)
		log.info("thirdUpdatePost->atchmnflDetailVO : " + atchmnflDetailVO);

		int result = this.freeBbsService.thirdUpdatePost(atchmnflDetailVO);

		log.info("controller->thirdUpdatePost : " + result);


		return result;
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

		int result = this.freeBbsService.deletePost(freeBbsVO);

		if(result>0) { //삭제 성공
			return "success";
		}else {
			return "fail";
		}
	}

	/**
	 * 게시글에 댓글 등록
	 * @param freeBbsCmntVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/freeCmntRegister")
	public String freeCmntRegister(@RequestBody FreeBbsCmntVO freeBbsCmntVO, Principal principal ) {
		log.info("freeCmntRegister freeBbsCmntVO : " + freeBbsCmntVO);

		String memId = principal.getName();
		//memId : 멤버아이디명
		log.info("로그인한 memId : " + memId);

		int result = freeBbsService.freeCmntRegister(freeBbsCmntVO);
		log.info("freeCmntRegister result : " + result);

		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	/**
	 * 등록된 댓글 불러오기
	 * @param freeBbsCmntVO
	 * @return
	 * @throws ParseException
	 */
	@ResponseBody
	@GetMapping("/freeCmntList")
	public List<FreeBbsCmntVO> freeCmntList(FreeBbsCmntVO freeBbsCmntVO) throws ParseException {
		log.info("freeCmntList 댓글리스트 : " + freeBbsCmntVO);

		List<FreeBbsCmntVO> cmntList = this.freeBbsService.freeCmntList(freeBbsCmntVO);
		log.info("cmntList : " + cmntList);

		//데이터 베이스에 varchar2형식으로 저장되어 있는 날짜를 변환해서 나타냄
		SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		for (FreeBbsCmntVO vo : cmntList) {
		    Date lastUpdtTm = sourceFormat.parse(vo.getLastUpdtTm());
		    String formattedDate = targetFormat.format(lastUpdtTm);
		    vo.setLastUpdtTm(formattedDate);

		    log.info("formattedDate : " + formattedDate);
		}

		return cmntList;
	}

	/**
	 * 등록한 댓글 수정하기
	 * @param freeBbsCmntVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/freeCmntUpdatePost")
	public String freeCmntUpdatePost(@RequestBody FreeBbsCmntVO freeBbsCmntVO) {
		log.info("freeCmntUpdatePost 댓글수정 : " + freeBbsCmntVO);

		int result = this.freeBbsService.freeCmntUpdatePost(freeBbsCmntVO);
		log.info("수정 댓글 : " + freeBbsCmntVO);

		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	/**
	 * 등록한 댓글 삭제하기
	 * @param freeBbsCmntVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/deleteCmntPost")
	public String deleteCmntPost(@RequestBody FreeBbsCmntVO freeBbsCmntVO) {

		log.info("삭제 할 freeBbsCmntVO : ", freeBbsCmntVO);

		int result = this.freeBbsService.deleteCmntPost(freeBbsCmntVO);

		if(result>0) { //삭제 성공
			return "success";
		}else {
			return "fail";
		}
	}


	/**
	 * 등록된 댓글에 대댓글 등록
	 * @param freeBbsCmntVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/freeReCmntRegister")
	public String freeReCmntRegister(@RequestBody FreeBbsCmntVO freeBbsCmntVO, Principal principal ) {
		log.info("freeReCmntRegister freeBbsCmntVO : " + freeBbsCmntVO);

		String memId = principal.getName();
		//memId : 멤버아이디명
		log.info("로그인한 memId : " + memId);

		int result = freeBbsService.freeReCmntRegister(freeBbsCmntVO);
		log.info("freeReCmntRegister result : " + result);

		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}

	/**
	 * 등록한 대댓글 수정하기
	 * @param freeBbsCmntVO
	 * @return
	 */
	@ResponseBody
	@PostMapping("/freeReCmntUpdate")
	public String freeReCmntUpdate(@RequestBody FreeBbsCmntVO freeBbsCmntVO) {
		log.info("freeCmntUpdatePost 댓글수정 : " + freeBbsCmntVO);

		int result = this.freeBbsService.freeReCmntUpdate(freeBbsCmntVO);
		log.info("수정 댓글 : " + freeBbsCmntVO);

		if (result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}

}
