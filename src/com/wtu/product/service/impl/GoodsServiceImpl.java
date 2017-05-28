package com.wtu.product.service.impl;

import java.util.List;

import com.wtu.product.dao.GoodsDao;
import com.wtu.product.model.Goods;
import com.wtu.product.model.GoodsType;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.ProductDescripe;
import com.wtu.product.model.ProductType;
import com.wtu.product.model.TypeGroup;
import com.wtu.product.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {

	private GoodsDao goodsDao;

    public void setGoodsDao(GoodsDao goodsDao) {
        this.goodsDao = goodsDao;
    }



    @Override
    public void saveGoods(Goods goods) {
        goodsDao.createGoods(goods);

    }


    @Override
    public List<Goods> getGoodsListByUserId(Pagination pagination, Integer userId) {
        List<Goods> goodsList = goodsDao.queryGoodsByUserId(pagination, userId);
        return goodsList;
    }


	@Override
	public List<TypeGroup> getAllTypeGroup() {
		return goodsDao.getAllTypeGroup();
	}


	@Override
	public List<ProductDescripe> getDescripeByProductType(Integer productTypeId) {
		return goodsDao.getDescripeByProductType(productTypeId);
	}


	@Override
	public List<GoodsType> getGoodsTypeByUserId(Integer userId) {
		return goodsDao.getGoodsTypeByUserId(userId);
	}

	@Override
	public List<Goods> getGoodsByUserId(Pagination pagination, Integer userId) {
		List<Goods> goodsList = goodsDao.getGoodsByUserId(pagination, userId);
		return goodsList;
	}
	
	@Override
	public List<ProductType> getProductTypeByGoodTypeId(Integer goodTypeId) {
		return goodsDao.getProductTypeByGoodTypeId(goodTypeId);
	}

	@Override
	public void deleteProductById(Integer id) {
		goodsDao.deleteGoodsById(id);
		
	}
	
	@Override
	public List<Goods> getGoodsListByProductType(Pagination pagination,Integer productTypeId) {
		List<Goods> goodsList = goodsDao.queryAllGoodsByProductType(pagination,productTypeId);
		return goodsList;
	}

	@Override
	public List<Goods> getGoodsList(Pagination pagination) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Goods getGoodsById(Integer goodsId) {
		return goodsDao.getGoodsById(goodsId);
	}

}
