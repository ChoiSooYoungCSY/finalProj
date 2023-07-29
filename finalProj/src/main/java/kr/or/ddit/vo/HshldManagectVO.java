package kr.or.ddit.vo;

import lombok.Data;

@Data
public class HshldManagectVO {
	private int managectNo;
	private int hshldInfoNo;
	private String frstWrterId;
	private String fsrtWritingTm;
	private String rlvtYm;
	private long managectElcty;
	private long managectGas;
	private long managectWtr;
	private long managectHeat;
	private long managectHotWater;
	private long managectEnergy;
	private long managectAccrue;
	private String lastUpdusrId;
	private String lastUpdtTm;
	private String delYn;
	// 변경된 날짜 형식을 저장할 필드
	private String strYm;
}
