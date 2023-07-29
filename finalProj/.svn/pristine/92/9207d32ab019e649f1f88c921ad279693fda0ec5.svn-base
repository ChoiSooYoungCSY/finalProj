package kr.or.ddit.emp.email;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.EmailVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/emp/mail/inbox")
@Controller
public class EmailController{

	@Inject
	EmailService emailService;

	@GetMapping("")
	public String mailInbox(Principal principal, Model model,
			@RequestParam(value = "size", required = false, defaultValue = "10") int size,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			@RequestParam(value = "cond", required = false, defaultValue = "") String cond,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword) {
		log.info("mailInbox");

		Map<String, String> map = new HashMap<>();
		String empId =  principal.getName();
		String email = empId.toLowerCase() + "@dorandoran.com";

		map.put("email", email);
		map.put("size", String.valueOf(size));
		map.put("currentPage", String.valueOf(currentPage));
		map.put("cond", cond);
		map.put("keyword", keyword);


		List<EmailVO> data = this.emailService.selectEmailReceiveList(map);
		// 전체 글 수 구하기

		int total = this.emailService.receiveTotal(email);
		log.info("mailInbox" + data);

		model.addAttribute("data", new ArticlePage<EmailVO>(total, currentPage, size, data));
		return "emp/emp_mail_inbox";
	}

	@GetMapping("/mailDetail")
	public String mailDetail(Model model, EmailVO emailVO) {
		log.info("mailDetail" + emailVO);
		EmailVO emailData = this.emailService.emailDetail(emailVO);
		model.addAttribute("emailData", emailData);
		return "emp/emp_mail_detail";
	}


	@GetMapping("/writeEmail")
	public String writeEmail(Model model,
				@RequestParam(value = "emlId", required = false, defaultValue = "") String emlId) {
		log.info("writeEmail");
		if(!emlId.equals("")) {
			EmailVO emailVO = new EmailVO();
			emailVO.setEmlId(emlId);
			emailVO = this.emailService.emailDetail(emailVO);
			model.addAttribute("emailVO",emailVO);
		}
		return "emp/emp_mail_writeEmail";
	}

	@PostMapping("/sendEmail")
	public String sendEmail(Model model, EmailVO emailVO) {
		log.info("sendEmail" + emailVO);

		int result = this.emailService.sendEmail(emailVO);


		if (result == 1) {
			if(emailVO.getSndptySttsCd().equals("ESMS05")) {
				model.addAttribute("result", "imsi");
			}else {
				model.addAttribute("result", "success");
			}
		} else {
			model.addAttribute("result", "failed");

		}
		return "emp/emp_mail_send_result";
	}

	@ResponseBody
	@PostMapping("/readEmailList")
	public int readEmailList(@RequestBody String[] checkMailList) {
		log.info("readEmailList");
		return this.emailService.readUpdateEmail(checkMailList);
	}

	@ResponseBody
	@PostMapping("/delEmailList")
	public int delEmailList(@RequestBody String[] checkMailList, Principal principal) {
		log.info("delEmailList");
		int cnt = 0;
		String empId =  principal.getName();
		String email = empId.toLowerCase() + "@dorandoran.com";
		for (String string : checkMailList) {
			EmailVO emailVO = new EmailVO();
			emailVO.setEmlId(string);
			emailVO = this.emailService.emailDetail(emailVO);
			if(email.equals(emailVO.getRcptnEml()) && email.equals(emailVO.getDsptchEml())) {
				cnt += this.emailService.delUpdateSelfEmail(string);
			}else if(email.equals(emailVO.getDsptchEml())) {
				cnt += this.emailService.delUpdateSendEmail(string);
			}else {
				cnt += this.emailService.delUpdateReveiveEmail(string);
			}
		}
		return cnt;
	}

	@ResponseBody
	@PostMapping("/favoritesMail")
	public int favoritesMail(@RequestBody EmailVO emlId) {
		log.info("favoritesMail");
		log.info("favoritesMail" + emlId);

		return this.emailService.favoriteUpdateEmail(emlId);
	}

	@ResponseBody
	@PostMapping("/favoritesClear")
	public int favoritesClear(@RequestBody EmailVO emlId) {
		log.info("favoritesMail");
		log.info("favoritesMail" + emlId);

		return this.emailService.favoritesClear(emlId);
	}




	/**
	 * 파일 다운로드를 위한 컨트롤러
	 * @return
	 * @throws IOException
	 */
	@ResponseBody
	@GetMapping("/download")
	public ResponseEntity<byte[]> downloadFile(@RequestParam("fileInfo") String fileInfo) throws IOException {

		log.info("downloadFile");

		// 001110101110111011100101100000100
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;

		HttpHeaders headers = new HttpHeaders();

		try {
			in = new FileInputStream("C:\\eGovFrameDev-4.1.0-64bit\\workspace\\finalProj\\src\\main\\webapp\\resources\\upload" + fileInfo);

			// OCTET : 8 bit로 자름
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			headers.add("Content-Disposition", "attachment;filename=\"" +
						new String(fileInfo.getBytes("UTF-8"),"ISO-8859-1") + "\"");

			entity = new ResponseEntity<>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		return entity;
	}

}
