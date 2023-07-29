package kr.or.ddit.mem.notice;

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

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import freemarker.core.ParseException;
import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.ClubRecomVO;
import kr.or.ddit.vo.ClubVO;
//import kr.or.ddit.service.ScndhdRecomService;
import kr.or.ddit.vo.ScndhdBbsVO;
import kr.or.ddit.vo.ScndhdRecomVO;
//import kr.or.ddit.vo.ScndhdRecomVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mem/ntcbbs")
@Controller
public class NtcBbsController {

	@Inject
	NtcBbsService ntcBbsService;

	// 공지사항
	@GetMapping("")
	public String noticeBoard() {
		log.info("noticeBoard");
		return "mem/mem_notice_board";
	}

	   @ResponseBody
	   @GetMapping("/postList")
	   @CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
	         RequestMethod.PUT, RequestMethod.DELETE })
	   public JSONArray postList() {
	      log.info("postList");

	      return (JSONArray) this.ntcBbsService.selectAll();
	   }


}
