package kr.or.ddit.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class AtchmnflDetailVO {
	private int atchmnflNo;
	private String atchmnflId;
	private String frstWrterTm;
	private String frstWrterId;
	private String flpth;
	private String streFlNm;
	private int    atchmnflSize;
	private String atchmnflTy;
	private String orginlAtchmnflNm;
	private String lastUpdusrId;
	private String lastUpdtTm;
	private String delYn;

	private MultipartFile uploadFile;
}
