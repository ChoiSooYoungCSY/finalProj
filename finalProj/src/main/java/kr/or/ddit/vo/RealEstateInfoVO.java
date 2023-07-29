package kr.or.ddit.vo;

import lombok.Data;

@Data
public class RealEstateInfoVO {
	private int infoNo;
	private int hshldInfoNo;
	private String frstWrterId;
	private String fsrtWritingTm;
	private String stddeYmd;
	private int lwSllngPc;
	private int avgSllngPc;
	private int hghSllngPc;
	private int lwChrtrPc;
	private int avgChrtrPc;
	private int hghChrtrPc;
	private int deposit;
	private int mnthlyRnt;
	private String lastUpdusrId;
	private String lastUpdtTm;
	private String delYn;
}
