package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.ScndhdBbsVO;
import kr.or.ddit.vo.ScndhdRecomVO;
import kr.or.ddit.vo.SttemntPstVO;

public interface ScndhdBbsMapper {

	// 중고장터 게시판 리스트
	public List<ScndhdBbsVO> selectAll(Map<String, String> map);

	// 페이징 처리
	public int getTotal(Map<String, String> map);

	// 중고장터 게시글 등록
	public int registerPost(ScndhdBbsVO scndhdBbsVO);

	// 중고장터 파일
	public int registerAtch(AtchmnflVO atchmnflVO);

	// 중고장터 이미지 미리보기
	public int registerAtchDetail(AtchmnflDetailVO atchmnflVO);

	// 중고장터 게시글 수정
	public int updatePost(ScndhdBbsVO scndhdBbsVO);

	// 관리자 측 중고장터 게시글 선택 삭제
	public int deletePost(String check);

	// 입주민 측 중고장터 게시글 삭제
	public int deletePostOne(ScndhdBbsVO scndhdBbsVO);

	// 이미지 리스트
	public List<ScndhdBbsVO> imageList();

	// 중고장터 하나의 게시글
	public ScndhdBbsVO selectOne(ScndhdBbsVO scndhdBbsVO);

	// 중고장터 입주민 정보와 중고장터 게시글 클릭 기반 판매 게시글 추천 리스트
	public ScndhdRecomVO selectRecomList(String memId);

	// 파일 MAX
	public AtchmnflVO maxAtchId();

	// 중고장터 판매 게시글 이미지 수정
	public int updateImages(AtchmnflDetailVO atchmnflDetailVO);

	// 중고장터 게시글 조회수
	public boolean plusCnt(ScndhdBbsVO cndhdBbsVO);

	// 신고
	public int deClarPost(SttemntPstVO sttemntPstVO);

	// 신고 게시글 상세 페이지
	public List<SttemntPstVO> sttPost(SttemntPstVO sttemntPstVO);

	// 신고 게시글 카운트
	public int reportCount(SttemntPstVO sttemntPstVO);

	// 신고 리스트
	public List<SttemntPstVO> secondReportList(SttemntPstVO sttemntPstVO);


}
