package com.wtu.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wtu.product.model.Goods;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.TypeGroup;
import com.wtu.product.model.User;
import com.wtu.product.service.GoodsService;

@Controller
@RequestMapping("/page/home")
public class HomeController extends BaseController {

	@Autowired
    private GoodsService goodsService;

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    //初始化首页面
	@RequestMapping(value = "/init-data", method = RequestMethod.GET)
    public ModelAndView getInitData() {
	    List<Goods> goodsList = null;
		Pagination pagination = new Pagination();
		goodsList = goodsService.getGoodsListByUserId(pagination, 3);
		List<TypeGroup> allTypeGroup = goodsService.getAllTypeGroup();
		this.addSession("TypeGroup", allTypeGroup);
		this.addSession("GOODSLIST", goodsList);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

	@RequestMapping(value = "/publish", method = RequestMethod.GET)
    public ModelAndView publishGoods() {
	    ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("publish");
        return modelAndView;
	}
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
    public ModelAndView products() {
	    ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("products");
        return modelAndView;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {
	    ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
	}
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
    public ModelAndView product() {
	    ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("product");
        return modelAndView;
	}
}
