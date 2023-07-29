package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.AcntSttsVO;
import kr.or.ddit.vo.AuthoritiesVO;
import kr.or.ddit.vo.BankVO;
import kr.or.ddit.vo.BlacklistVO;
import kr.or.ddit.vo.DeptVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.JobGradeVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.SttemntVO;

public interface EmpMapper {
	//직원 다 불러오기
	public List<EmpVO> selectAllEmp();

	//특정 직원 상세정보
	public EmpVO detailEmp(String empId);

	//직원등록시 아이디 중복체크
	public int checkEmpId(String empId);

	//부서정보 불러오기
	public List<DeptVO> selectDept();

	//직급정보 불러오기
	public List<JobGradeVO> selectJbgd();

	//은행정보 불러오기
	public List<BankVO> selectBank();

	//직원 등록하기
	public int registerEmp(EmpVO empVO);

	//직원 권한 등록하기
	public int registerEmpAuth(AuthoritiesVO authoritiesVO);

	//직원 정보 수정하기
	public int editEmpInfo(EmpVO empVO);

	//직원 권한 삭제하기
	public void deleteEmpAuth(AuthoritiesVO authoritiesVO);

	//특정 직원 삭제하기(비활성화)
	public int deleteEmp(EmpVO empVO);

	//회원 다 불러오기
	public List<MemberVO> selectAllMem();



	//승인대기중인 회원 불러오기
	public List<MemberVO> selectAwaitingApprovalMem();

	//승인대기중인 회원이 몇명인지
	public int awaitingApprovalNum();



	//블랙리스트 회원 불러오기
	public List<BlacklistVO> selectBlacklistMem();

	//블랙리스트 회원이 몇명인지
	public int blacklistNum();

	//블랙리스트 회원 신고내역 받아오기
	public List<SttemntVO> selectMemSttemnt(MemberVO memVO);

	//특정 회원계정 블랙리스트 만들기(상태변경)
	public int blacklistMem(BlacklistVO blacklistVO);

	//특정 회원계정 블랙리스트 테이블에 추가하기
	public int blacklistMemAdd(BlacklistVO blacklistVO);

	//블랙리스트 추가시 STTEMNT_CMNT테이블에서 Y로 바꾸기
	public int sttemntCmntDel(int no);

	//블랙리스트 추가시 STTEMNT_PST테이블에서 Y로 바꾸기
	public int sttemntPstDel(int no);

	//블랙리스트 추가시 STTEMNT_SMS테이블에서 Y로 바꾸기
	public int sttemntSmsDel(int no);

	//특정 회원계정 블랙리스트 해제하기(상태변경)
	public int blacklistMemClear(MemberVO memVO);

	//특정 회원계정 블랙리스트 테이블에서 지우기
	public int blacklistMemDelete(MemberVO memVO);



	//특정 회원 상세정보
	public MemberVO detailMem(String memId);

	//회원 상태 가져오기
	public List<AcntSttsVO> selectAcntStts();

	//회원 정보 수정하기
	public int editMemInfo(MemberVO memVO);

	//회원 탈퇴상태로 바꾸기
	public int deleteMem(MemberVO memVO);

	//승인대기중인 회원 승인하기
	public int approvalMem(MemberVO memVO);

	//승인대기중인 회원 완전 삭제하기
	public int approvalMemDelete(MemberVO memVO);














}
