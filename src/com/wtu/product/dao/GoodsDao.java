package com.wtu.product.dao;

import java.util.List;

import com.wtu.product.model.Goods;
import com.wtu.product.model.GoodsType;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.ProductDescripe;
import com.wtu.product.model.ProductType;
import com.wtu.product.model.TypeGroup;

public interface GoodsDao {
	public void createGoods(Goods Goods);
	public List<Goods> queryAllGoodsByProductType(Pagination pagination,Integer productTypeId);
	public List<Goods> queryGoodsByUserId(Pagination pagination, Integer userId);
	public Integer getGoodsCount(String keyword);
	public Integer getGoodsCountByUserId(Integer userId);
	public List<TypeGroup> getAllTypeGroup();
	public List<ProductDescripe> getDescripeByProductType(Integer productTypeId);
	public List<GoodsType> getGoodsTypeByUserId(Integer userId);
	public Goods getGoodsById(Integer goodsId);
	public List<Goods> getGoodsByUserId(Pagination pagination, Integer userId);
	public void deleteGoodsById(Integer id);
	List<ProductType> getProductTypeByGoodTypeId(Integer goodTypeId);
}
