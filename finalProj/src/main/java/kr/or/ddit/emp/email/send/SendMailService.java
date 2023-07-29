package kr.or.ddit.emp.email.send;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.EmailVO;

public interface SendMailService {

	public int sendTotal(String email);
	public List<EmailVO> selectEmailSendList(Map<String, String> map);
}
