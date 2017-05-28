package com.wtu.product.model;

public class GoodsImage {
    private String  descripe;
    private String imagePath;
	public String getDescripe() {
		return descripe;
	}
	
	public GoodsImage() {
	}

	public GoodsImage(String descripe, String imagePath) {
		this.descripe = descripe;
		this.imagePath = imagePath;
	}
	public void setDescripe(String descripe) {
		this.descripe = descripe;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	@Override
	public String toString() {
		return "GoodsImage [descripe=" + descripe + ", imagePath=" + imagePath + "]";
	}
}
