package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.FreeBbsCmntVO;
import kr.or.ddit.vo.FreeBbsVO;

public interface FreeBbsMapper {

	/**
	 * 자유게시판에 글 등록하기
	 * @param freeBbsVO
	 * @return
	 */
	public int registerPost(FreeBbsVO freeBbsVO);

	/**
	 * 첨부파일 이미지 처리
	 * @param atchmnflVO
	 * @return
	 */
	public int registerAtch(AtchmnflVO atchmnflVO);

	/**
	 * 첨부파일 이미지 처리
	 * @param atchmnflVO
	 * @return
	 */
	public int registerAtchDetail(AtchmnflDetailVO atchmnflVO);

	/**
	 * 첨부파일 이미지 처리
	 * @return
	 */
	public AtchmnflVO maxAtchId();

	/**
	 * 전체 글 수 구하기
	 * @param map
	 * @return
	 */
	public int getTotal(Map<String, String> map);

	/**
	 * 페이징처리 시 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가한 후 목록불러오기
	 * @param map
	 * @return
	 */
	public List<FreeBbsVO> list(Map<String, String> map);

	/**
	 * 자유게시판 게시글 상세보기
	 * @param freeBbsVO
	 * @return
	 */
	public FreeBbsVO freeDetail(FreeBbsVO freeBbsVO);

	/**
	 * 자유게시판 게시글 수정하기
	 * @param freeBbsVO
	 * @return
	 */
	//freeBbsVO : FreeBbsVO(rnum=null, pstId=FRE000040, frstWrterId=dohee, frstWrterTm=null, pstSj=오늘은 목요일입니다222, pstCn=<p>목요일이죠222</p>
	//, rdcnt=0, lastUpdusrId=dohee, lastUpdtTm=null, atchmnflId=null, delYn=null,
	//contentImages=[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@5115b1c],
	//atchmnflDetailList=null, freeBbsCmntList=null, freeBbsEmtList=null)
	public int freeUpdatePost(FreeBbsVO freeBbsVO);

	/**
	 * 자유게시판 게시글 다중이미지 수정하기
	 * @param atchmnflDetailVO
	 * @return
	 */
	public int thirdUpdatePost(AtchmnflDetailVO atchmnflDetailVO);

	/**
	 * 자유게시판 게시글 삭제하기
	 * @param freeBbsVO
	 * @return
	 */
	public int deletePost(FreeBbsVO freeBbsVO);

	/**
	 * 자유게시판 게시글 조회수
	 * @param freeBbsVO
	 * @return
	 */
	public boolean plusCnt(FreeBbsVO freeBbsVO);

	/**
	 * 자유게시판에 게시글 수정하기(단, 이미지 또한 변경 시에만)
	 */
	public int updaterPost(FreeBbsVO freeBbsVO);

	/**
	 * 자유게시판 전체 게시물
	 * @return List<FreeBbsVO>
	 */
	public List<FreeBbsVO> selectAll();

	/**
	 * 게시글 댓글 작성
	 * @param freeBbsCmntVO
	 * @return
	 */
	public int freeCmntRegister(FreeBbsCmntVO freeBbsCmntVO);

	/**
	 * 게시물에 등록된 댓글 불러오기
	 * @param freeBbsCmntVO
	 * @return
	 */
	public List<FreeBbsCmntVO> freeCmntList(FreeBbsCmntVO freeBbsCmntVO);

	/**
	 * 게시물에 등록한 댓글 수정하기
	 * @param freeBbsCmntVO
	 * @return
	 */
	public int freeCmntUpdatePost(FreeBbsCmntVO freeBbsCmntVO);

	/**
	 * 게시물에 등록한 댓글 삭제하기
	 * @param freeBbsCmntVO
	 * @return
	 */
	public int deleteCmntPost(FreeBbsCmntVO freeBbsCmntVO);

	/**
	 * 게시물에 등록된 댓글에 대댓글 등록하기
	 * @param freeBbsCmntVO
	 * @return
	 */
	public int freeReCmntRegister(FreeBbsCmntVO freeBbsCmntVO);

	/**
	 * 댓글에 등록한 대댓글 수정하기
	 * @param freeBbsCmntVO
	 * @return
	 */
	public int freeReCmntUpdate(FreeBbsCmntVO freeBbsCmntVO);



}
