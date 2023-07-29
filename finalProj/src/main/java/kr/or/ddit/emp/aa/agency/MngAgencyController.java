package kr.or.ddit.emp.aa.agency;

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
@RequestMapping("/emp/aa/mngagency")
@Controller
public class MngAgencyController {

	@Inject
	MngAgencyService mngAgencyService;

	@GetMapping("")
	public String mngAgency() {
		log.info("mngAgency");
		return "emp/aa_mng_agency";
	}


	/**외주업체 목록 게시물 불러오기 **/
	@ResponseBody
	@GetMapping("/agencyList")
	@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST,
			RequestMethod.PUT, RequestMethod.DELETE })
	public JSONArray postList() {
		log.info("postList");

		return (JSONArray) this.mngAgencyService.selectAll();
	}

}
