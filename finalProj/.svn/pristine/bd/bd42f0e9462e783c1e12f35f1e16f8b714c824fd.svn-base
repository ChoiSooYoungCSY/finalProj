package kr.or.ddit.mem.cmnt.cvplbbs;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.vo.CvplBbsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mem/cmnt/cvplbbs")
@Controller
public class CvplBbsController {

	@Inject
	CvplBbsService cvplBbsService;

	@GetMapping("")
	public String list() {
		return "mem/mem_cmnt_cvplbbs_board";
	}

   @ResponseBody
   @GetMapping("/postList")
   @CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
         RequestMethod.PUT, RequestMethod.DELETE })
   public JSONArray postList() {
      log.info("postList");

      return (JSONArray) this.cvplBbsService.selectAll();
   }

}
