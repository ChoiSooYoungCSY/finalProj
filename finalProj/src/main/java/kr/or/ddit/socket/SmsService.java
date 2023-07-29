package kr.or.ddit.socket;

import kr.or.ddit.vo.SmsVO;

public interface SmsService {
	public int insertMessage(SmsVO smsVO);
	public int checkUser(String value);
	public int checkMember(String value);
	public int checkEmp(String value);
}
