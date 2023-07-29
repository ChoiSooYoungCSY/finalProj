package kr.or.ddit.emp.pa.mnghmnrsrcs;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.DclzMapper;
import kr.or.ddit.mapper.EmpMapper;
import kr.or.ddit.mapper.MemberMapper;
import kr.or.ddit.mapper.PaidlvMapper;
import kr.or.ddit.mapper.UserMapper;
import kr.or.ddit.mem.main.MemMainServiceImpl;
import kr.or.ddit.vo.AcntSttsVO;
import kr.or.ddit.vo.AuthoritiesVO;
import kr.or.ddit.vo.BankVO;
import kr.or.ddit.vo.BlacklistVO;
import kr.or.ddit.vo.DclzVO;
import kr.or.ddit.vo.DeptVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.FamilyVO;
import kr.or.ddit.vo.GivePaidlvVO;
import kr.or.ddit.vo.JobGradeVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PaidlvSectionVO;
import kr.or.ddit.vo.PaidlvVO;
import kr.or.ddit.vo.PaidlyRcordVO;
import kr.or.ddit.vo.SttemntVO;
import lombok.extern.slf4j.Slf4j;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Slf4j
@Service
public class MngHumanResourcesServiceImpl implements MngHumanResourcesService {

	@Autowired
	DclzMapper dclzMapper;

	@Autowired
	PaidlvMapper paidlvMapper;

	//DB에서 근태 데이터 불러오기
	public List<DclzVO> getDclzData(String date) {
		JSONArray jsonArr = new JSONArray();

		List<DclzVO> dataList =  this.dclzMapper.getDclzData(date);

		for (DclzVO data : dataList) {
			jsonArr.add(data);

		}
		return jsonArr;
	}

	//특정 직원 근태 정보 불러오기
	@Override
	public List<DclzVO> selectEmpDclz(DclzVO dclzVO) {
		return this.dclzMapper.selectEmpDclz(dclzVO);
	}

	//특정 직원 근태 정보 업데이트
	@Override
	public int updateEmpDclz(DclzVO dclzVO) {
		return this.dclzMapper.updateEmpDclz(dclzVO);
	}

	//DB에서 기간 근태 데이터 불러오기
	@Override
	public List<DclzVO> getDclzPeriodData(String startDate, String endDate) {
		JSONArray jsonArr = new JSONArray();

		List<DclzVO> dataList =  this.dclzMapper.getDclzPeriodData(startDate, endDate);

		for (DclzVO data : dataList) {
			jsonArr.add(data);

		}
		return jsonArr;
	}






	//DB에서 연차 데이터 불러오기
	@Override
	public List<PaidlvVO> getPaidlvData(String date) {
		JSONArray jsonArr = new JSONArray();

		List<PaidlvVO> dataList =  this.paidlvMapper.getPaidlvData(date);

		for (PaidlvVO data : dataList) {
			jsonArr.add(data);

		}
		return jsonArr;
	}

	//특정 직원 연차 지급내역 불러오기
	@Override
	public List<GivePaidlvVO> selectEmpGivePaidlv(GivePaidlvVO givePaidlvVO) {
		return this.paidlvMapper.selectEmpGivePaidlv(givePaidlvVO);
	}

	//DB에서 연차 구분 코드 불러오기
	@Override
	public List<PaidlvSectionVO> selectPaidlvSection() {
		return this.paidlvMapper.selectPaidlvSection();
	}

	//특정 직원 지급 연차 정보 업데이트
	@Override
	public int updateGivePaidlv(GivePaidlvVO givePaidlvVO) {
		return this.paidlvMapper.updateGivePaidlv(givePaidlvVO);
	}

	//특정 직원 지급 연차 정보 삭제
	@Override
	public int deleteGivePaidlv(GivePaidlvVO givePaidlvVO) {
		return this.paidlvMapper.deleteGivePaidlv(givePaidlvVO);
	}

	//특정 직원 연차 사용내역 불러오기
	@Override
	public List<PaidlyRcordVO> selectPaidlyRcord(PaidlyRcordVO paidlyRcordVO) {
		return this.paidlvMapper.selectPaidlyRcord(paidlyRcordVO);
	}

	//특정 직원 연차 사용정보 업데이트
	@Override
	public int updatePaidlyRcord(PaidlyRcordVO paidlyRcordVO) {
		return this.paidlvMapper.updatePaidlyRcord(paidlyRcordVO);
	}

	//특정 직원 사용 연차 정보 삭제
	@Override
	public int deletePaidlyRcord(GivePaidlvVO givePaidlvVO) {
		return this.paidlvMapper.deletePaidlyRcord(givePaidlvVO);
	}

}
