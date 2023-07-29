package kr.or.ddit.emp.pa.mngcmnt.mngscndhandbbs;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.FreeBbsVO;
import kr.or.ddit.vo.RstrntVO;
import kr.or.ddit.vo.ScndhdBbsVO;
import kr.or.ddit.vo.ScndhdRecomVO;
import kr.or.ddit.vo.SttemntPstVO;


public interface MngScndhandBbsService {

	public List<SttemntPstVO> secondReportList(SttemntPstVO sttemntPstVO);

	// 관리자 측 중고장터 게시글 삭제
	public int deletePost(List<String> checkPostList);

	// 신고 게시글 상세페이지
	public List<SttemntPstVO> sttPost(SttemntPstVO sttemntPstVO);

	// 신고 리스트
	public List<SttemntPstVO> reportPost(SttemntPstVO sttemntPstVO);

	// 입주민 게시글 상세페이지
	public ScndhdBbsVO selectOne(ScndhdBbsVO cndhdBbsVO);

	// 게시글 신고당한 횟수
	public SttemntPstVO reportCnt(SttemntPstVO sttemntPstVO);

	// 관리자 신고 게시글 상세페이지에서 삭제
	public int deletePostOne(SttemntPstVO sttemntPstVO);




}
