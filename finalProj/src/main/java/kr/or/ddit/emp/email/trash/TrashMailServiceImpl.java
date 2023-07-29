package kr.or.ddit.emp.email.trash;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.EmailMapper;
import kr.or.ddit.vo.EmailVO;
import lombok.extern.slf4j.Slf4j;

@Service
public class TrashMailServiceImpl implements TrashMailService {

	@Inject
	EmailMapper emailMapper;

	@Override
	public int trashTotal(String email) {
		return this.emailMapper.trashTotal(email);
	}

	@Override
	public List<EmailVO> selectEmailTrashList(Map<String, String> map) {
		return this.emailMapper.selectEmailTrashList(map);
	}


	@Override
	public EmailVO emailDetail(EmailVO emailVO) {
		return this.emailMapper.emailDetail(emailVO);
	}

	@Override
	public int clearSendEmail(String check) {
		return this.emailMapper.clearSendEmail(check);
	}

	@Override
	public int clearReceiveEmail(String check) {
		return this.emailMapper.clearReceiveEmail(check);
	}

	@Override
	public int restoreSendEmail(String check) {
		return this.emailMapper.restoreSendEmail(check);
	}

	@Override
	public int restoreReceiveEmail(String check) {
		return this.emailMapper.restoreReceiveEmail(check);
	}

	@Override
	public int clearSelfMail(String check) {
		int cnt = 0;
		cnt += this.emailMapper.clearReceiveEmail(check);
		cnt += this.emailMapper.clearSendEmail(check);
		if(cnt == 2 ) {
			return 1;
		}
		return 0;
	}

	@Override
	public int restoreSelfMail(String check) {
		int cnt = 0;
		cnt += this.emailMapper.restoreReceiveEmail(check);
		cnt += this.emailMapper.restoreSendEmail(check);
		if(cnt == 2 ) {
			return 1;
		}
		return 0;
	}



}
