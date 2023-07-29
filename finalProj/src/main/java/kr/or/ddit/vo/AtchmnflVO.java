package kr.or.ddit.vo;

import java.util.List;

import lombok.Data;

@Data
public class AtchmnflVO {
	private String atchmnflId;
	private String frstWrterId;
	private String frstWrterTm;
	private String delYn;
	private String lastUpdusrId;
	private String lastUpdtTm;

	private List<AtchmnflDetailVO> atchDetailVOList;
}
