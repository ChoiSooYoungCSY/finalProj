package kr.or.ddit.vo;

import lombok.Data;

@Data
public class DocFormVO {
	private int docFormNo;
	private String docSeCd;
	private String frstWriterId;
	private String fsrtWritingTm;
	private String docFormSj;
	private String docFormCn;
	private String atchmnflId;
	private String lastUpdusrId;
	private String lastUpdtTm;
	// 문서 구분명
	private String docSeNm;
}
