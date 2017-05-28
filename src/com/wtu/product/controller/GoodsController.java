package com.wtu.product.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.wtu.product.model.Goods;
import com.wtu.product.model.GoodsImage;
import com.wtu.product.model.GoodsType;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.ProductDescripe;
import com.wtu.product.model.ProductType;
import com.wtu.product.model.User;
import com.wtu.product.service.GoodsService;
import com.wtu.product.util.ImageUpLoad;
import com.wtu.product.util.StringUtil;

@Controller
@RequestMapping("/page/goods")
public class GoodsController extends BaseController {

    @Autowired
    private GoodsService goodsService;

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ModelAndView submitNews(@RequestParam(value = "goodsName", defaultValue = "") String goodsName,
                                   @RequestParam(value = "price", defaultValue = "") Double price,
                                   @RequestParam(value = "unit", defaultValue = "") String unit,
                                   @RequestParam(value = "types", defaultValue = "") String type,
                                   @RequestParam(value = "values1", defaultValue = "") String values1,
                                   @RequestParam(value = "values2", defaultValue = "") String values2,
                                   @RequestParam(value = "values3", defaultValue = "") String values3,
                                   @RequestParam(value = "file0", required = false) MultipartFile file,
                                   @RequestParam(value = "description", defaultValue = "") String description) {
    	String imagePath = ImageUpLoad.saveImage(file);
        User user = (User)this.getSession("USER");
        if (!StringUtil.isEmpty(imagePath)){
            Goods goods=new Goods();
            goods.setGoodsName(goodsName);
            goods.setPrice(price);
            goods.setUnit(unit);
            goods.setType(type);
            goods.setPicture(imagePath);
            goods.setUserId(user.getUserId());
            goods.setDescription(description);
            if(!values1.isEmpty()) {
            	goods.setValues1(Integer.parseInt(values1));
			}
            if(!values2.isEmpty()) {
            	goods.setValues2(Integer.parseInt(values2));
			}
            if(!values3.isEmpty()) {
            	goods.setValues3(Integer.parseInt(values3));
			}
            goodsService.saveGoods(goods);
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setView(this.getRedirectView("page/home/publish"));
            return modelAndView;
        } else {
            return null;
        }
    }

    @RequestMapping(value = "/products/{typeId}", method = RequestMethod.GET)
    public ModelAndView publishGoods(@PathVariable String typeId) {
	    ModelAndView modelAndView = new ModelAndView();
        List<ProductDescripe> descripeByProductType = goodsService.getDescripeByProductType(Integer.parseInt("1"));
        this.addSession("descripeByProductType", descripeByProductType);
        String currentPageStr = "";
        if (StringUtil.isEmpty(currentPageStr)) {
            currentPageStr = "1";
        }
        Integer currentPage = Integer.parseInt(currentPageStr);
        if (currentPage < 1) {
            currentPage = 1;
        }
        Pagination pagination = new Pagination();
        pagination.setKeyWord("");
        pagination.setCurrentPage(currentPage);
        List<Goods> goodsList = goodsService.getGoodsListByProductType(pagination, Integer.parseInt(typeId));
        this.addSession("allGoodsListByType", goodsList);
        this.addSession("pagination", pagination);
        modelAndView.setViewName("products");
        return modelAndView;
	}
    
    @RequestMapping(value = "/product/{productId}", method = RequestMethod.GET)
    public ModelAndView product(@PathVariable String productId) {
	    ModelAndView modelAndView = new ModelAndView();
	    Goods goods = goodsService.getGoodsById(Integer.parseInt(productId));
	    this.addSession("GOODS", goods);
        modelAndView.setViewName("product");
        return modelAndView;
	}
    
   //跳向发布商品页面
    @RequestMapping(value = "/publish", method = RequestMethod.GET)
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView();
        User user = (User)this.getSession("USER");
        List<GoodsType> goodsType = goodsService.getGoodsTypeByUserId(user.getUserId());
        this.addSession("publishGoodsType", goodsType);
        Integer id = goodsType.get(0).getId();
        List<ProductDescripe> descripeByProductType = goodsService.getDescripeByProductType(id);
        this.addSession("publishGoodsDescripe", descripeByProductType);
        modelAndView.setViewName("publish");
        return modelAndView;
    }
    
    //添加图片
    @RequestMapping(value = "/submit_image", method = RequestMethod.POST)
    @ResponseBody
    public String submitImage(@RequestParam(value = "description", defaultValue = "") String imageDescription,
                              @RequestParam(value = "file0", required = false) MultipartFile iamge) {
    	String imagePath = ImageUpLoad.saveImage(iamge);
        List<GoodsImage> goodsImage = (List<GoodsImage>) this.getSession("GoodsImages");
        if(goodsImage==null){
        	goodsImage = new ArrayList<GoodsImage>();
        	this.addSession("GoodsImages", goodsImage);
        }
        goodsImage.add(new GoodsImage(imageDescription,imagePath));
        return imagePath;
    }
    
    @RequestMapping(value = "/goods-type-change/{goodTypeId}", method = RequestMethod.GET)
	@ResponseBody
    public Map<String, Object> getData(@PathVariable String goodTypeId) {
		Integer typeId = Integer.parseInt(goodTypeId);
		List<ProductType> productType = goodsService.getProductTypeByGoodTypeId(typeId);
		List<ProductDescripe> descripeType = goodsService.getDescripeByProductType(productType.get(0).getId());
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("productType", productType);
		data.put("descripeType", descripeType);
        return data;
    }
    
    @RequestMapping(value = "/get-descripe-by-productType/{productTypeId}", method = RequestMethod.GET)
	@ResponseBody
    public Map<String, Object> getproductType(@PathVariable String productTypeId) {
		Integer typeId = Integer.parseInt(productTypeId);
		List<ProductDescripe> descripeType = goodsService.getDescripeByProductType(typeId);
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("descripeType", descripeType);
        return data;
    }
    
  //跳向我的购物车
    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public ModelAndView cart() {
    	User user = (User)this.getSession("USER");
    	//List<Cart> cart = goodsService.getCartByUserId(user.getUserId());
    	//List<Goods> cartGoods = goodsService.getGoodsById(cart.goodsId);
	    ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("cart");
        return modelAndView;
	}
    
  //跳向我的商品
    @RequestMapping(value = "/mygoods/{currentPage}", method = RequestMethod.GET)
    public ModelAndView myGoods(@PathVariable("currentPage")String currentPage) {
    	String currentPageStr= currentPage;
    	if (StringUtil.isEmpty(currentPageStr)) {
            currentPageStr = "1";
        }
        Integer currentPage1 = Integer.parseInt(currentPageStr);
        if (currentPage1 < 1) {
            currentPage1 = 1;
        }
        Pagination pagination = new Pagination();
        pagination.setCurrentPage(currentPage1);
    	User user = (User)this.getSession("USER");
    	List<Goods> goodsList = goodsService.getGoodsByUserId(pagination, user.getUserId());
	    ModelAndView modelAndView = new ModelAndView();
	    this.addSession("goodsList", goodsList);
	    this.addSession("goodsPagination", pagination);
        modelAndView.setViewName("mygoods");
        return modelAndView;
	}
    
  //跳向我的商品
    @RequestMapping(value = "/product-delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteProduct(@PathVariable("id")String id) {
    	goodsService.deleteProductById(Integer.parseInt(id));
	    Pagination pagination = new Pagination();
        pagination.setCurrentPage(1);
    	User user = (User)this.getSession("USER");
    	List<Goods> goodsList = goodsService.getGoodsByUserId(pagination, user.getUserId());
    	this.addSession("goodsList", goodsList);
	    this.addSession("goodsPagination", pagination);
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.setViewName("mygoods");
        return modelAndView;
	}
    
}
