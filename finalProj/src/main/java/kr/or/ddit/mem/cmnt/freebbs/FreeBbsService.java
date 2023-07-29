package kr.or.ddit.mem.cmnt.freebbs;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.FreeBbsCmntVO;
import kr.or.ddit.vo.FreeBbsVO;


public interface FreeBbsService {

	/**
	 * 게시글 등록하기
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
	 * @param atchmnflDetailVO
	 * @return
	 */
	public int registerAtchDetail(AtchmnflDetailVO atchmnflDetailVO);

	/**
	 * 첨부파일 이미지 처리
	 * @return
	 */
	public AtchmnflVO maxAtchId();

	/**
	 * 전체 글의 수 구하기
	 * @param map
	 * @return
	 */
	public int getTotal(Map<String, String> map);

	/**
	 * 위의 Map에 currentPage와 size(한페이지에 보여줄 개수)를 추가해서 list구하기
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
	public int freeUpdatePost(FreeBbsVO freeBbsVO);

	/**
	 * 자유게시판 게시글 다중이미지 수정하기
	 * @param atchmnflDetailVO
	 * @return
	 */
	public int thirdUpdatePost(AtchmnflDetailVO atchmnflDetailVO);

	/**
	 * 자유게시판에 게시글 수정하기(단, 이미지 또한 변경 시에만)
	 */
	public int updaterPost(FreeBbsVO freeBbsVO);

	/**
	 * 자유게시판 게시글 삭제하기
	 * @param freeBbsVO
	 * @return
	 */
	public int deletePost(FreeBbsVO freeBbsVO);

	/**
	 * 게시글 조회수
	 * @param freeBbsVO
	 * @return
	 */
	public boolean plusCnt(FreeBbsVO freeBbsVO);

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
	 * 등록된 댓글에 대댓글 등록하기
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
