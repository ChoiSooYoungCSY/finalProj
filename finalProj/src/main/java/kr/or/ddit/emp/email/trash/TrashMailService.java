package kr.or.ddit.emp.email.trash;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.EmailVO;

public interface TrashMailService {

	// 내게 쓴 메일
	public int trashTotal(String email);

	public List<EmailVO> selectEmailTrashList(Map<String, String> map);

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

	// 자기자신에게 쓴 이메일 삭제 or 복구
	public int clearSelfMail(String check);
	public int restoreSelfMail(String check);
}
