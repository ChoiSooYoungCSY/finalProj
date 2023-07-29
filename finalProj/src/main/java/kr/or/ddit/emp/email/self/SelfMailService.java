package kr.or.ddit.emp.email.self;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.EmailVO;

public interface SelfMailService {

	public int selfTotal(String email);
	public List<EmailVO> selectEmailSelfList(Map<String, String> map);
}
