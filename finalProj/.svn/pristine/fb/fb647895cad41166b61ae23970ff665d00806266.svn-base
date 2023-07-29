package kr.or.ddit.emp.email;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.mapper.AtchmnflDetailMapper;
import kr.or.ddit.mapper.AtchmnflMapper;
import kr.or.ddit.mapper.EmailMapper;
import kr.or.ddit.util.CommonFile;
import kr.or.ddit.vo.AtchmnflDetailVO;
import kr.or.ddit.vo.AtchmnflVO;
import kr.or.ddit.vo.EmailVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class EmailServiceImpl implements EmailService {

	@Inject
	AtchmnflMapper atchmnflMapper;
	@Inject
	EmailMapper emailMapper;

	@Inject
	AtchmnflDetailMapper atchmnflDetailMapper;

	@Transactional
	@Override
	public int sendEmail(EmailVO emailVO) {
		MultipartFile[] attachFiles = emailVO.getAttachFiles();
		log.info("detialsls"+attachFiles[0].getOriginalFilename());
		String writer = emailVO.getFrstWrterId();
		emailVO.setLastUpdusrId(writer);
		if (!(attachFiles[0].getOriginalFilename().equals(""))) {
			AtchmnflVO atchmnflVO = new AtchmnflVO();
			atchmnflVO.setFrstWrterId(writer);
			atchmnflVO.setLastUpdusrId(writer);
			int cnt = atchmnflMapper.registerAtch(atchmnflVO);
			if (cnt == 1) {
				AtchmnflVO maxAtchId = atchmnflMapper.maxAtchId();
				emailVO.setAtchmnflId(maxAtchId.getAtchmnflId());
				String uploadFileName = "";
				try {
					File uploadPath = new File(CommonFile.uploadFolder, CommonFile.getFolder()); // upload/2023/07/03

					if (!uploadPath.exists()) {
						uploadPath.mkdirs();
					}

					for (MultipartFile attachFile : attachFiles) {
						AtchmnflDetailVO attachDetail = new AtchmnflDetailVO();
						attachDetail.setFrstWrterId(emailVO.getFrstWrterId());
						attachDetail.setLastUpdusrId(emailVO.getLastUpdusrId());
						attachDetail.setAtchmnflTy(attachFile.getContentType());
						attachDetail.setOrginlAtchmnflNm(attachFile.getOriginalFilename());
						attachDetail.setAtchmnflSize((int) attachFile.getSize());

						uploadFileName = attachFile.getOriginalFilename();
						// =================== UUDI 처리 시작 =======================
						UUID uuid = UUID.randomUUID();
						uploadFileName = uuid.toString() + "_" + uploadFileName;
						// ==================== UUDI 처리 끝 ========================
						// 설계
						File saveFile = new File(uploadPath, uploadFileName);
						// 복사 실행
						attachFile.transferTo(saveFile);

						String filepath = CommonFile.getFolder().replace("upload", "");
						// 2023/05/24/asdfasdf_P1237.jpg
						attachDetail.setFlpth("/" + filepath.replace("\\", "/"));
						// 2023/05/05+/+"{setStreFlNm}"
						attachDetail.setStreFlNm(uploadFileName);

						// N
						this.atchmnflMapper.registerAtchDetail(attachDetail);
					} // end for

				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
					return 0;
				}
			}
		}
		return this.emailMapper.sendEmail(emailVO);
	}

	// 자기 자신이 받은 이메일 총 갯수 (삭제메일 제외)
	@Override
	public int receiveTotal(String email) {
		return this.emailMapper.receiveTotal(email);
	}

	@Override
	public List<EmailVO> selectEmailReceiveList(Map<String, String> map) {
		return this.emailMapper.selectEmailReceiveList(map);
	}

	@Override
	public int readUpdateEmail(String[] checkEmailList) {
		int cnt = 0;
		for (String check : checkEmailList) {
			cnt += this.emailMapper.readUpdateEmail(check);

		}
		return cnt;
	}


	@Override
	public int favoriteUpdateEmail(EmailVO emailVO) {

		return this.emailMapper.favoriteUpdateEmail(emailVO);
	}

	@Override
	public int favoritesClear(EmailVO emailVO) {

		return this.emailMapper.favoritesClear(emailVO);
	}

	@Override
	public EmailVO emailDetail(EmailVO emailVO) {
		//확인한 이메일 읽음 처리
		this.emailMapper.readUpdateEmail(emailVO.getEmlId());
		//이메일 정보 가져오기
		emailVO = this.emailMapper.emailDetail(emailVO);
		//이메일 정보에서 첨부파일 ID 가져오기
		String atchmnflId = emailVO.getAtchmnflId();

		AtchmnflDetailVO atchmnflDetailVO = new AtchmnflDetailVO();
		atchmnflDetailVO.setAtchmnflId(atchmnflId);


		List<AtchmnflDetailVO> attachDetailList = this.attachDetail(atchmnflDetailVO);
		emailVO.setAttachFileDetailList(attachDetailList);

		return emailVO;
	}

	@Override
	public List<AtchmnflDetailVO> attachDetail(AtchmnflDetailVO atchmnflDetailVO) {
		return this.atchmnflDetailMapper.attachDetail(atchmnflDetailVO);
	}


	@Override
	public int delUpdateReveiveEmail(String check) {
		return this.emailMapper.delUpdateReveiveEmail(check);
	}

	@Override
	public int delUpdateSendEmail(String check) {
		return this.emailMapper.delUpdateSendEmail(check);
	}

	@Override
	public int delUpdateSelfEmail(String check) {
		int cnt = 0;
		cnt += this.emailMapper.delUpdateReveiveEmail(check);
		cnt += this.emailMapper.delUpdateSendEmail(check);

		if(cnt == 2) {
			return 1;
		}
		return 0;
	}



}
