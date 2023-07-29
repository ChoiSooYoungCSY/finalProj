package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.EmailVO;

public interface EmailMapper {

	// 보낸메일
	public int sendTotal(String email);
	public List<EmailVO> selectEmailSendList(Map<String, String> map);

	// 받은메일
	public int receiveTotal(String email);
	public List<EmailVO> selectEmailReceiveList(Map<String, String> map);

	// 내게 쓴 메일
	public int selfTotal(String email);
	public List<EmailVO> selectEmailSelfList(Map<String, String> map);

	// 삭제한 메일
	public int trashTotal(String email);
	public List<EmailVO> selectEmailTrashList(Map<String, String> map);

	// 임시 저장 메일
	public int imsiTotal(String email);
	public List<EmailVO> selectEmailImsiList(Map<String, String> map);

	// 즐겨찾기 메일
	public int favoriteTotal(String email);
	public List<EmailVO> selectEmailFavoriteList(Map<String, String> map);

	// 이메일 보내기
	public int sendEmail(EmailVO emailVO);

	// 이메일 읽음으로 전환
	public int readUpdateEmail(String check);

	// 이메일 삭제로 전환
	public int delUpdateReveiveEmail(String check);
	public int delUpdateSendEmail(String check);

	// 이메일 즐겨찾기 전환
	public int favoriteUpdateEmail(EmailVO emailVO);

	// 이메일 즐겨찾기 취소
	public int favoritesClear(EmailVO emailVO);

	// 이메일 상세
	public EmailVO emailDetail(EmailVO emailVO);
	// 보낸 이메일영구삭제
	public int clearSendEmail(String check);
	// 받은 이메일영구삭제
	public int clearReceiveEmail(String check);
	// 보낸 이메일 삭제복구
	public int restoreSendEmail(String check);
	// 받은 이메일 삭제복구
	public int restoreReceiveEmail(String check);
	//임시 저장되었던 이메일 업데이트
	public int updateImsi(EmailVO emailVO);

}
