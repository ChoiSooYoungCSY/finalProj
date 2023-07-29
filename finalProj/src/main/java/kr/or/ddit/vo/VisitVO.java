package kr.or.ddit.vo;

import lombok.Data;

@Data
public class VisitVO {
	private int visitNo;
	private String frstWrterId;
	private String fsrtWritingTm;
	private String visitCarNo;
	private String visitYmd;
	private String lastUpdusrId;
	private String lastUpdtTm;
	private String delYn;

	private int monthCnt;
}
