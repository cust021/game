package com.game.vo;

public class TestInfoVO {
	private int tiNum;
	private String tiName;
	
	
	public int getTiNum() {
		return tiNum;
	}
	public void setTiNum(int tiNum) {
		this.tiNum = tiNum;
	}
	public String getTiName() {
		return tiName;
	}
	public void setTiName(String tiName) {
		this.tiName = tiName;
	}
	public String getTiDesc() {
		return tiDesc;
	}
	public void setTiDesc(String tiDesc) {
		this.tiDesc = tiDesc;
	}
	private String tiDesc;


	@Override
	public String toString() {
		return "TestInfoVO [tiNum=" + tiNum + ", tiName=" + tiName + ", tiDesc=" + tiDesc + "]";
	}
	
	
}
