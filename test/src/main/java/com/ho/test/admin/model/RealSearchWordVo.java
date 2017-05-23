package com.ho.test.admin.model;

public class RealSearchWordVo {
	private int rank;
	private String word;
	
	public RealSearchWordVo() {

	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	@Override
	public String toString() {
		return "RealSearchWordVo [rank=" + rank + ", word=" + word + "]";
	}
	
	
}
