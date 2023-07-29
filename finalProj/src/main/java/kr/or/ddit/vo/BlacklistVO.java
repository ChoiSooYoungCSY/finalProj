package kr.or.ddit.vo;

import java.util.List;

import lombok.Data;

@Data
public class BlacklistVO {
	private String registYmd;
	private String endYmd;
	private String memId;
	private String memNm;
	private List<SttemntVO> list;
}
