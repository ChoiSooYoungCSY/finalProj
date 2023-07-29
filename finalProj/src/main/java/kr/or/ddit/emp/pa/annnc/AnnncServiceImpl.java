package kr.or.ddit.emp.pa.annnc;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.AnnncMapper;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.AnnncVO;
import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;

@Slf4j
@Service
public class AnnncServiceImpl implements AnnncService {

	//DI(의존성 주입), IoC(제어의 역전)
	@Inject
	AnnncMapper annncMapper;


	/**
	 * 안내방송 리스트 불러오기
	 */
	@Override
	public List<AnnncVO> list(Map<String, String> map) {
		return this.annncMapper.list(map);
	}


	/**
	 * 전체 글 수 구하기
	 */
	@Override
	public int getTotal(Map<String, String> map) {
		return this.annncMapper.getTotal(map);
	}


	/**
	 * 안내방송 등록하기
	 */
	@Override
	public int registerPost(AnnncVO annncVO) {
		return this.annncMapper.registerPost(annncVO);
	}

	/**
	 * 안내방송 삭제하기
	 */
	@Override
	public int deletePost(AnnncVO annncVO) {
		return this.annncMapper.deletePost(annncVO);
	}

	/**
	 * 예약방송 등록하기
	 */
	@Override
	public int resvRegister(AnnncVO annncVO) {
		return this.annncMapper.resvRegister(annncVO);
	}


	/**
	 * 예약방송 삭제하기
	 */
	@Override
	public int deleteResvPost(AnnncVO annncVO) {
		return this.annncMapper.deleteResvPost(annncVO);
	}

}
