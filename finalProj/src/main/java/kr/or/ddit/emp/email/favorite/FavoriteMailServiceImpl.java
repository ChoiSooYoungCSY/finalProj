package kr.or.ddit.emp.email.favorite;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.AtchmnflMapper;
import kr.or.ddit.mapper.EmailMapper;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.EmailVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class FavoriteMailServiceImpl implements FavoriteMailService {

	@Inject
	EmailMapper emailMapper;

	@Override
	public int favoriteTotal(String email) {
		return this.emailMapper.favoriteTotal(email);
	}

	@Override
	public List<EmailVO> selectEmailFavoriteList(Map<String, String> map) {
		return this.emailMapper.selectEmailFavoriteList(map);
	}



}
