package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.SmsVO;

public interface SmsMapper {
	public int insertMessage(SmsVO smsVO);
	public int checkMember(String value);
	public int checkEmp(String value);
	public List<SmsVO> myChatList(SmsVO smsVO);

	public List<SmsVO> selectMyChat(SmsVO smsVO);
}
