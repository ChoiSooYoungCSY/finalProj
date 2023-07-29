package kr.or.ddit.emp.pa.mngcmnt.mngscndhandbbs;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.ScndhdBbsMapper;
import kr.or.ddit.mapper.SttemntPstMapper;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.FreeBbsVO;
import kr.or.ddit.vo.ScndhdBbsVO;
import kr.or.ddit.vo.ScndhdRecomVO;
import kr.or.ddit.vo.SttemntPstVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MngScndhandBbsServiceImpl implements MngScndhandBbsService{

	@Autowired
	ScndhdBbsMapper scndhdBbsMapper;

	@Autowired
	SttemntPstMapper sttemntPstMapper;
	// 신고 리스트
	@Override
	public List<SttemntPstVO> secondReportList(SttemntPstVO sttemntPstVO) {
		return this.scndhdBbsMapper.secondReportList(sttemntPstVO);
	}

	// 관리자 측 중고장터 게시글 삭제
	@Override
	public int deletePost(List<String> checkPostList) {
		int cnt = 0;
		int cnt2 = 0;

		// 관리자측에서 신고된게시글을 삭제시 중고장터 게시판에서도 삭제
		ScndhdBbsVO scndbbsVO = new ScndhdBbsVO();
		for (String check : checkPostList) {
			scndbbsVO.setPstId(check);
			cnt2 = this.scndhdBbsMapper.deletePost(check);
			if(cnt2>0) {
				cnt += this.scndhdBbsMapper.deletePostOne(scndbbsVO);
			}
		}
		return cnt;
	}

	// 신고 게시글 상세 페이지 에서 삭제
	@Transactional
	@Override
	public int deletePostOne(SttemntPstVO sttemntPstVO) {

		int cnt = 0;
		ScndhdBbsVO scndhdBbsVO = new ScndhdBbsVO();
		scndhdBbsVO.setPstId(sttemntPstVO.getPstId());

		cnt = this.sttemntPstMapper.deletePostOne(sttemntPstVO);
		cnt += this.scndhdBbsMapper.deletePostOne(scndhdBbsVO);

		return cnt;
	}

	// 신고 게시글 상세 페이지
	@Override
	public List<SttemntPstVO> sttPost(SttemntPstVO sttemntPstVO) {
		return this.scndhdBbsMapper.sttPost(sttemntPstVO);
	}

	// 입주민 게시글 상세 페이지
	@Override
	public ScndhdBbsVO selectOne(ScndhdBbsVO cndhdBbsVO) {
		return this.scndhdBbsMapper.selectOne(cndhdBbsVO);
	}


	// 신고리스트 메소드명 바꿔줄 예정
	@Override
	public List<SttemntPstVO> reportPost(SttemntPstVO sttemntPstVO) {
		return this.sttemntPstMapper.reportPost(sttemntPstVO);
	}

	// 게시글 신고당한 횟수
	@Override
	public SttemntPstVO reportCnt(SttemntPstVO sttemntPstVO) {
		return this.sttemntPstMapper.reportCnt(sttemntPstVO);
	}

}
