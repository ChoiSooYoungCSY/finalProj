package kr.or.ddit.vo;


import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import lombok.Data;

@Data
public class EmailVO{
	private String emlId;
	private String frstWrterId;
	private String empNm;
	private String fsrtWritingTm;
	private String dsptchEml;
	private String rcptnEml;
	private String emlCn;
	private String sndptySttsCd;
	private String rcvrSttsCd;
	private String atchmnflId;
	private String lastUpdusrId;
	private String lastUpdtTm;
	private String emlTitle;
	private String emlCcId;


	private MultipartFile[] attachFiles;

	//파일 다운로드를 위한 첨부파일 정보
	private List<AtchmnflDetailVO> attachFileDetailList;

}
