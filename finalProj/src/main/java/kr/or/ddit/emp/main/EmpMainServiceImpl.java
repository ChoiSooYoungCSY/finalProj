package kr.or.ddit.emp.main;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.EmpMapper;
import kr.or.ddit.mapper.ScheduleMapper;
import kr.or.ddit.mapper.SmsMapper;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.ScheduleVO;
import kr.or.ddit.vo.SmsVO;


@Service
public class EmpMainServiceImpl implements EmpMainService{


	@Inject
	EmpMapper empMapper;

	@Inject
	SmsMapper smsMapper;

	@Inject
	ScheduleMapper scheduleMapper;

	@Override
	public List<SmsVO> selectMyChat(SmsVO smsVO) {
		return this.smsMapper.selectMyChat(smsVO);
	}


	@Override
	public EmpVO detailEmp(String empId) {
		return this.empMapper.detailEmp(empId);
	}


	@Override
	public List<ScheduleVO> selectAllSchedule(String empId) {
		return this.scheduleMapper.selectAllSchedule(empId);
	}

}
