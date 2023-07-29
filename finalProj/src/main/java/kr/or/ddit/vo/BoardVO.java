package kr.or.ddit.vo;

import lombok.Data;

@Data
public class BoardVO {

	public int seq;
	public String title;
	public String writer;
	public String date;
	public int hits;

	public BoardVO(int seq, String title, String writer, String date, int hits) {
		this.seq = seq;
		this.title = title;
		this.writer = writer;
		this.date = date;
		this.hits = hits;
	}
}
