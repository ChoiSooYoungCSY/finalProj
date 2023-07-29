package kr.or.ddit.vo;

import java.util.List;

import lombok.Data;

@Data
public class ScndhdSeVO {
	private String schandSeCd;
	private String schandSeNm;
	private String useYn;
	private List<ScndhdBbsVO> scndhdBbsList;
}
