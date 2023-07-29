package kr.or.ddit.emp.email.imsi;

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
public class ImsiMailServiceImpl implements ImsiMailService {

	@Inject
	AtchmnflMapper atchmnflMapper;

	@Inject
	EmailMapper emailMapper;

	@Override
	public int imsiTotal(String email) {
		return this.emailMapper.imsiTotal(email);
	}

	@Override
	public List<EmailVO> selectEmailImsiList(Map<String, String> map) {
		return this.emailMapper.selectEmailImsiList(map);
	}

	@Override
	public int updateImsi(EmailVO emailVO) {
		log.info("updateImsi"+emailVO);
		MultipartFile[] attachFiles = emailVO.getAttachFiles();

		String writer = emailVO.getFrstWrterId();
		emailVO.setLastUpdusrId(writer);
		if (attachFiles != null || !attachFiles.equals("")) {
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
		return this.emailMapper.updateImsi(emailVO);
	}



}
