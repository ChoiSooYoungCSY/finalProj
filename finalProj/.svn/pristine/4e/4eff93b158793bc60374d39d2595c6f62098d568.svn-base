package kr.or.ddit.emp.pa.mngaccnt;


import java.util.List;

import org.json.simple.JSONArray;

import kr.or.ddit.vo.AcntSttsVO;
import kr.or.ddit.vo.AuthoritiesVO;
import kr.or.ddit.vo.BankVO;
import kr.or.ddit.vo.BlacklistVO;
import kr.or.ddit.vo.DeptVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.JobGradeVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.SttemntVO;

public interface MngAccountService {
	//직원 리스트 받아오기
	public List<EmpVO> selectAllEmp();

	//특정 직원 정보 보기
	public EmpVO selectEmp(String empId);

	//직원 등록 시 아이디 중복확인
	public int checkEmpId(String empId);

	//직원 등록 시 부서 정보 DB에서 가져오기
	public List<DeptVO> selectDept();

	//직원 등록 시 직급 정보 DB에서 가져오기
	public List<JobGradeVO> selectJbgd();

	//직원 등록 시 은행 정보 DB에서 가져오기
	public List<BankVO> selectBank();

	//직원 등록하기
	public int registerEmp(EmpVO empVO);

	//직원 패스워드 문자보내기
	public void sendPassword(String empPhoneNo, String empNm, String empId, String password);

	//직원정보 수정하기
	public int editEmpInfo(EmpVO empVO);

	//직원 퇴직처리 하기
	public int deleteEmp(EmpVO empVO);

	/////////////////////////////////////////////////////////////////////////////////////////

	//회원 리스트 받아오기
	public List<MemberVO> selectAllMem();

	//승인대기중인 회원 리스트 받아오기
	public List<MemberVO> selectAwaitingApprovalMem();

	//승인대기중인 회원이 몇명인지
	public int awaitingApprovalNum();

	//블랙리스트 회원 리스트 받아오기
	public List<BlacklistVO> selectBlacklistMem();

	//블랙리스트 회원이 몇명인지
	public int blacklistNum();

	//블랙리스트 회원 신고 내역 받아오기
	public List<SttemntVO> selectMemSttemnt(MemberVO memVO);

	//특정 회원계정 블랙리스트 만들기
	public int blacklistMem(BlacklistVO blacklistVO);

	//특정 회원계정 블랙리스트 해제하기
	public int blacklistMemClear(MemberVO memVO);

	//회원정보 수정
	public MemberVO selectMem(String memId);

	//회원 상태 가져오기
	public List<AcntSttsVO> selectAcntStts();

	//회원정보 수정하기
	public int editMemInfo(MemberVO memVO);

	//회원 탈퇴상태로 바꾸기
	public int deleteMem(MemberVO memVO);

	//승인대기중인 회원 승인하기
	public int approvalMem(MemberVO memVO);

	//승인대기중인 회원 완전 삭제하기
	public int approvalMemDelete(MemberVO memVO);







}

