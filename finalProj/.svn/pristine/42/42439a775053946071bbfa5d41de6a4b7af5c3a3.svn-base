package kr.or.ddit.mem.cmnt.secondhand;

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


public interface ScndhdBbsService {

	// 중고장터 게시판 리스트
	public List<ScndhdBbsVO> selectAll(Map<String, String> map);

	// 총 페이지 수
	public int getTotal(Map<String, String> map);

	// 판매 게시글 등록, 파일(UUID
	public int registerPost(ScndhdBbsVO scndhdBbsVO);

	// 이미지 등록
	public int registerAtch(AtchmnflVO atchmnflVO);

	// 이미지 다중
	public int registerAtchDetail(AtchmnflDetailVO atchmnflDetailVO);

	// 중고장터 게시글 수정
	public int updatePost(ScndhdBbsVO scndhdBbsVO);

	// 관리자 측 중고장터 게시글 삭제
	public int deletePost(List<String> checkPostList);

	// 중고장터 게시글 삭제
	public int deletePostOne(ScndhdBbsVO scndhdBbsVO);

	// 이미지 리스트
	public List<ScndhdBbsVO> imageList();

	// 중고장터 하나의 게시글
	public ScndhdBbsVO selectOne(ScndhdBbsVO cndhdBbsVO);

	// 중고장터 게시글 조회수
	public boolean plusCnt(ScndhdBbsVO cndhdBbsVO);

	// 중고장터 추천 판매 게시글
	public ScndhdRecomVO selectRecomList(String memId);

	public AtchmnflVO maxAtchId();

	// 이미지 다중 수정
	public int updateImages(AtchmnflDetailVO atchmnflDetailVO);

	//신고
	public int deClarPost(SttemntPstVO sttemntPstVO);

	//신고 카운트
	public int reportCount(SttemntPstVO sttemntPstVO);




}
