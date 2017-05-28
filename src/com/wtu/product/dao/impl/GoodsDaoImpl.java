package com.wtu.product.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.wtu.product.dao.GoodsDao;
import com.wtu.product.model.Goods;
import com.wtu.product.model.GoodsType;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.ProductDescripe;
import com.wtu.product.model.ProductType;
import com.wtu.product.model.TypeGroup;

public class GoodsDaoImpl extends SqlSessionDaoSupport implements GoodsDao{

	@Override
    public void createGoods(Goods goods) {
        if(goods != null) {
            int id = getSqlSession().insert(Goods.class.getName() + ".createGoods", goods);
            Map<String, Object> parameterMap1 = new HashMap<String, Object>();
            parameterMap1.put("goodsId", goods.getGoodsId());
            parameterMap1.put("descripeValuesId", goods.getValues1());
            System.out.println(parameterMap1);
            getSqlSession().insert(Goods.class.getName() + ".createGoodsDescripeValue", parameterMap1);
            Map<String, Object> parameterMap2 = new HashMap<String, Object>();
            parameterMap2.put("goodsId", goods.getGoodsId());
            parameterMap2.put("descripeValuesId", goods.getValues2());
            System.out.println(parameterMap2);
            getSqlSession().insert(Goods.class.getName() + ".createGoodsDescripeValue", parameterMap2);
            Map<String, Object> parameterMap3 = new HashMap<String, Object>();
            parameterMap3.put("goodsId", goods.getGoodsId());
            parameterMap3.put("descripeValuesId", goods.getValues3());
            System.out.println(parameterMap3);
            getSqlSession().insert(Goods.class.getName() + ".createGoodsDescripeValue", parameterMap3);
        }

    }

    @Override
    public List<Goods> queryAllGoodsByProductType(Pagination pagination,Integer productTypeId) {
    	pagination.setTotalCount(this.getGoodsCount(pagination.getKeyWord()));
        if (pagination.getCurrentPage() > pagination.getPageCount()) {
            pagination.setCurrentPage(pagination.getPageCount());
        }
        Map<String, Object> parameterMap = new HashMap<String, Object>();
        parameterMap.put("keyword", "%" + pagination.getKeyWord() + "%");
        parameterMap.put("offset", pagination.getOffset());
        parameterMap.put("pageSize", pagination.getPageSize());
        parameterMap.put("productTypeId", productTypeId);
        return getSqlSession().selectList(Goods.class.getName() + ".queryAllGoodsByProductType", parameterMap);
    }

    @Override
    public Integer getGoodsCount(String keyword) {
        Integer amount = getSqlSession().selectOne(Goods.class.getName() + ".getGoodsCount");
        return amount;
    }

    @Override
    public List<Goods> queryGoodsByUserId(Pagination pagination, Integer userId) {
        pagination.setTotalCount(this.getGoodsCountByUserId(userId));
//        if (pagination.getCurrentPage() > pagination.getPageCount()) {
//            pagination.setCurrentPage(pagination.getPageCount());
//        }
        Map<String, Object> parameterMap = new HashMap<String, Object>();
        parameterMap.put("offset", 0);
        parameterMap.put("pageSize", 8);
        parameterMap.put("userId", userId);
        return getSqlSession().selectList(Goods.class.getName() + ".queryGoodsByUserId", parameterMap);
    }

    @Override
    public Integer getGoodsCountByUserId(Integer userId) {
        Integer amount = getSqlSession().selectOne(Goods.class.getName() + ".getGoodsCountByUserId");
        return amount;
    }

	@Override
	public List<TypeGroup> getAllTypeGroup() {
		return getSqlSession().selectList(ProductType.class.getName() + ".getTypeGroups");
	}

	@Override
	public List<ProductDescripe> getDescripeByProductType(Integer productTypeId) {
		return getSqlSession().selectList(ProductDescripe.class.getName() + ".getProductDescripe",productTypeId);
	}

	@Override
	public List<GoodsType> getGoodsTypeByUserId(Integer userId) {
		return getSqlSession().selectList(ProductType.class.getName() + ".queryProductTypeByUser",userId);
	}

	@Override
	public List<ProductType> getProductTypeByGoodTypeId(Integer goodTypeId) {
		return getSqlSession().selectList(ProductType.class.getName() + ".getProductTypeByGoodTypeId",goodTypeId);
	}

	@Override
	public Goods getGoodsById(Integer goodsId) {
		return getSqlSession().selectOne(Goods.class.getName() + ".getGoodsById",goodsId);
	}

	@Override
	public List<Goods> getGoodsByUserId(Pagination pagination,Integer userId) {
		pagination.setTotalCount(this.getGoodsCountByUserId(userId));
        if (pagination.getCurrentPage() > pagination.getPageCount()) {
            pagination.setCurrentPage(pagination.getPageCount());
        }
        Map<String, Object> parameterMap = new HashMap<String, Object>();
        parameterMap.put("offset", pagination.getOffset());
        parameterMap.put("pageSize", pagination.getPageSize());
        parameterMap.put("userId", userId);
		return getSqlSession().selectList(Goods.class.getName() + ".queryGoodsByUserId",parameterMap);
	}

	@Override
	public void deleteGoodsById(Integer id) {
		getSqlSession().update(Goods.class.getName() + ".deleteGoodsById",id);
	}


}
