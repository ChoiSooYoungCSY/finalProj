package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.EmpBbsVO;

public interface EmpBbsMapper {

	/**
	 * 직원 게시판 전체 게시글
	 * @return
	 */
	public List<EmpBbsVO> selectAll();

	/**
	 * 직원 자유게시판에 글 등록하기
	 * @param empBbsVO
	 * @return
	 */
	public int registerPost(EmpBbsVO empBbsVO);

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
	 * 게시글 상세보기
	 * @param empBbsVO
	 * @return
	 */
	public EmpBbsVO freeDetail(EmpBbsVO empBbsVO);

	/**
	 * 게시글 조회수 조회하기
	 * @param empBbsVO
	 * @return
	 */
	public boolean plusCnt(EmpBbsVO empBbsVO);


}
