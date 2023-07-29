package kr.or.ddit.vo;

import lombok.Data;

@Data
public class DscntProdVO {
	private int dscntNo;
	private String martId;
	private String prodSeCd;
	private String discPeriod;
	private String prodNm;
	private int prodCost;
	private int discCost;
	private int discRate;
	private String delYn;
}
