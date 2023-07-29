package kr.or.ddit.emp.pa.mngcmnt.memfreebbs;

import java.util.List;

import kr.or.ddit.vo.FreeBbsVO;

public interface MngMemFreebbsService {


	/**
	 * 입주민 자유게시판 전체 게시물
	 * @return List<FreeBbsVO>
	 */
	public List<FreeBbsVO> selectAll();

	/**
	 * 입주민 자유게시판 게시물 삭제하기
	 * @param freeBbsVO
	 * @return
	 */
	public int deletePost(FreeBbsVO freeBbsVO);

}
