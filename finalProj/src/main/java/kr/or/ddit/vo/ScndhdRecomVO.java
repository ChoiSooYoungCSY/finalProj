package kr.or.ddit.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ScndhdRecomVO {
	private int srecomNo;
	private String scndhdId;

	private MultipartFile[] productImage;

	private List<AtchmnflDetailVO> atchmnflDetailList;
}
