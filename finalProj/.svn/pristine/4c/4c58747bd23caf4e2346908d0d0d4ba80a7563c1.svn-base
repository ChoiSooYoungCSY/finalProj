package kr.or.ddit.emp.fs.mnglibrary;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.util.ArticlePage;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.BookRecomVO;
import kr.or.ddit.vo.BookVO;
import kr.or.ddit.vo.LoanBookVO;
import kr.or.ddit.vo.PicnicRecomVO;
import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;

@Slf4j
@Controller
@RequestMapping("/emp/fs/mnglibrary")
public class EmpLibraryController {

	// DI. IoC (의존성 주입)
	@Inject
	EmpLibraryService empLibraryService;

	@GetMapping("")
	public String empLibrarylist(Model model, Principal principal, BookVO bookVO,
			@RequestParam(value = "size", required = false, defaultValue = "9") int size,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage,
			@RequestParam(value = "cond", required = false, defaultValue = "") String cond,
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword) {

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
		map.put("memId", memId);

		int total = this.empLibraryService.getTotal(map);

		// 위의 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가해서 list구하기
		List<BookVO> data = this.empLibraryService.list(map);
		log.info("data : " + data);

		// 전체 글 수 구하기
		log.info("total : " + total);
		model.addAttribute("data", new ArticlePage<BookVO>(total, currentPage, size, data));

		// AI 도서추천 화면 구현 처리
		BookRecomVO bookRecomVO = new BookRecomVO();
		bookRecomVO.setMemId(memId);

		List<Map<String, Object>> recomData = this.empLibraryService.list(bookRecomVO);
		log.info("recomData : " + recomData);
		model.addAttribute("recomData", recomData);

		return "emp/fs_mng_library";
	}

	@GetMapping("/register")
	public String register() {
		log.info("register");
		return "emp/fs_mng_library_register";
	}

	// 도서관에 도서를 등록
	@PostMapping("/registerPost")
	public String registerPost(BookVO bookVO) {

		log.info("bookVO : " + bookVO);

		int result = this.empLibraryService.registerPost(bookVO);
		log.info("result : " + result);

		return "redirect:/emp/fs/mnglibrary";
	}

	// 도서 상세보기
	@GetMapping("/empBookDetail")
	public String empBookDetail(@ModelAttribute BookVO bookVO, Model model) {

		log.info("bookVO : " + bookVO);

		BookVO bookdata = this.empLibraryService.detailBook(bookVO);

		model.addAttribute("bookdata", bookdata);

		return "emp/fs_mng_library_detail";
	}

	// 도서 수정하기
	@PostMapping("updatePost")
	public String updatePost(BookVO bookVO) {

		log.info("수정할 bookVO : ", bookVO);

		int result = this.empLibraryService.updatePost(bookVO);
		log.info("도서수정 result : " + result);

		//리다이렉트(URI 재요청)
		return "redirect:/emp/fs/mnglibrary/empBookDetail?bookNo="+(bookVO.getBookNo()+"");
	}

	//등록되어 있는 도서를 삭제
	//data : {"bookNo:":"266"}
	@ResponseBody
	@PostMapping("/deletePost")
	public String deletePost(@RequestBody BookVO bookVO) {

		log.info("삭제 할 bookVO : ", bookVO);

		int result = this.empLibraryService.deletePost(bookVO);

		if(result>0) { //삭제 성공
			return "success";
		}else {
			return "fail";
		}
	}

}
