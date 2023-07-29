package kr.or.ddit.emp.email;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.EmailVO;

public interface EmailService {
	public int sendEmail(EmailVO emailVO);

	public int receiveTotal(String email);
	public List<EmailVO> selectEmailReceiveList(Map<String, String> map);

	public int readUpdateEmail(String[] checkEmailList);

	// 이메일 삭제로 전환
	public int delUpdateReveiveEmail(String check);
	public int delUpdateSendEmail(String check);
	public int delUpdateSelfEmail(String check);
	public int favoriteUpdateEmail(EmailVO emailVO);
	public int favoritesClear(EmailVO emailVO);

	public EmailVO emailDetail(EmailVO emailVO);
	public List<AtchmnflDetailVO> attachDetail(AtchmnflDetailVO atchmnflDetailVO);


}
