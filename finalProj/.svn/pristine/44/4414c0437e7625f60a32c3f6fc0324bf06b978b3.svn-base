package kr.or.ddit.socket;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import kr.or.ddit.mapper.SmsMapper;
import kr.or.ddit.vo.SmsVO;

@Service
public class SmsServiceImpl implements SmsService{

	@Inject
	SmsMapper smsMapper;

	@Override
	public int insertMessage(SmsVO smsVO) {
		return smsMapper.insertMessage(smsVO);
	}

	@Override
	public int checkUser(String value) {

		int cnt = this.smsMapper.checkMember(value);
		cnt += this.smsMapper.checkEmp(value);

		return cnt;
	}

	@Override
	public int checkMember(String value) {
		return this.smsMapper.checkMember(value);
	}

	@Override
	public int checkEmp(String value) {
		return this.smsMapper.checkEmp(value);
	}

}
