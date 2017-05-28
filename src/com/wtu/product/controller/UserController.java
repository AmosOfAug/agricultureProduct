package com.wtu.product.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wtu.product.common.AppContext;
import com.wtu.product.exception.ParameterException;
import com.wtu.product.exception.ServiceException;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.ShoppingType;
import com.wtu.product.model.User;
import com.wtu.product.service.UserService;
import com.wtu.product.util.MD5Util;
import com.wtu.product.util.RoleMapUtil;
import com.wtu.product.util.StringUtil;

@Controller
@RequestMapping("/page/user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    //登陆验证
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView loginCheck(
                                   @RequestParam(value = "userName", defaultValue = "") String userName,
                                   @RequestParam(value = "password", defaultValue = "") String password,
                                   @RequestParam(value = "queryString", defaultValue = "") String queryString,
                                   @RequestParam(value = "go", defaultValue = "") String go
                                   ) {
        ModelAndView modelAndView = new ModelAndView();
        Map<String,String> message = new HashMap<String, String>();
        try {
            User user = null;
            user = userService.login(userName, password);
            user.setPassword("");
            this.addSession("USER", user);
            if (!StringUtil.isEmpty(queryString)) {
                if (queryString.startsWith("#")) {
                    queryString = queryString.substring(1);
                }
                go = go + "?" + queryString;
            }
            RedirectView redirectView = StringUtil.isEmpty(go) ? this.getRedirectView("page/user/content")
                                                               : new RedirectView(AppContext.getContextPath() + "/" + go);
            modelAndView.setView(redirectView);
        } catch (ParameterException parameterException) {
            message = parameterException.getErrorMessage();
            modelAndView.addObject("TIP_MESSAGE", message);
            modelAndView.setViewName("login");
        } catch (ServiceException serviceException) {
            int errorCode = serviceException.getCode();
            if (errorCode == 1000) {
                message.put("errorNameMessage", serviceException.getExceptionMessage());
            }
            if (errorCode == 1001) {
                message.put("errorPasswordMessage", serviceException.getExceptionMessage());
            }
            modelAndView.addObject("TIP_MESSAGE", message);
            modelAndView.setViewName("login");
        }
        this.removeSession("hiddens");
        return modelAndView;
    }

    //角色判断
    @RequestMapping(value = "/content", method = RequestMethod.GET)
    public ModelAndView checkRoleType() {
        ModelAndView modelAndView = new ModelAndView();
        String roleType = AppContext.getContext().getUser().getRole();
        modelAndView.setView(this.getRedirectView(RoleMapUtil.getPageUri(roleType)));
        return modelAndView;
    }

    //退出登陆
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout() {
        ModelAndView modelAndView = new ModelAndView();
        this.removeSession("USER");
        modelAndView.setView(this.getRedirectView("page/home/init-data"));
        return modelAndView;
    }
    
   //跳向注册页面
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("register");
        return modelAndView;
    }
    
  //用户升级
    @RequestMapping(value = "/upgrade", method = RequestMethod.GET)
    public ModelAndView upgrade() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("upgrade");
        return modelAndView;
    }

    //注册
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView userRegister(
                                    @RequestParam(value = "phone", defaultValue = "") String phone,
                                    @RequestParam(value = "user_name", defaultValue = "") String userName,
                                    @RequestParam(value = "password", defaultValue = "") String password
                                    ) {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        user.setPhone(phone);
        user.setUserName(userName);
        user.setPassword(MD5Util.getEncryptPassword(password));
        user.setRole("1");
        userService.createUser(user);
        this.addSession("FlahMessage", "注册成功!");
        modelAndView.addObject("FlahMessage", "注册成功!");
        modelAndView.setView(this.getRedirectView("page/home/login"));
        return modelAndView;
    }
    
    //保存卖家信息
    @RequestMapping(value = "/save-shopper-information", method = RequestMethod.POST)
    public ModelAndView saveProfile(
                                    @RequestParam(value = "identifyId", defaultValue = "") String identifyId,
                                    @RequestParam(value = "businessAddress", defaultValue = "") String businessAddress,
                                    @RequestParam(value = "businessDescripe", defaultValue = "") String businessDescripe,
                                    @RequestParam(value = "types", defaultValue = "") String[] types
                                    ) {
        System.out.println(identifyId);
        System.out.println(businessAddress);
        System.out.println(businessDescripe);
        //System.out.println(types.toString());
    	ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        user.setRole("2");
        user.setIdentifyId(Integer.parseInt(identifyId));
        user.setBusinessAddress(businessAddress);
        user.setBusinessDescripe(businessDescripe);
        user.setUserId(AppContext.getContext().getUser().getUserId());
        userService.updateBusiness(user);
        System.out.println(1);
        for(int i=0;i<types.length;i++){
        	userService.addBusinessGoodsType(AppContext.getContext().getUser().getUserId(), Integer.parseInt(types[i]));
        }
        user = userService.getUserById(AppContext.getContext().getUser().getUserId());
        this.addSession("USER", user);
        modelAndView.setView(this.getRedirectView("page/home/init-data"));
        return modelAndView;
    }

    //获取所有用户
    @RequestMapping(value = "/all-users/{currentPage}", method = RequestMethod.GET)
    public ModelAndView allUser(@PathVariable("currentPage")String currentPage) {
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
    	List<User> allUser = userService.getAllUser(pagination);
    	this.addSession("allUser", allUser);
    	this.addSession("pagination", pagination);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user_manage");
        return modelAndView;
    }
    
    //删除用户
    @RequestMapping(value = "/delete-user/{id}", method = RequestMethod.GET)
    public ModelAndView deleteUser(@PathVariable String id) {
    	userService.deleteUser(Integer.parseInt(id));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setView(this.getRedirectView("page/user/all-users"));
        return modelAndView;
    }
    
  //跳向个人信息页面
    @RequestMapping(value = "/userinfo", method = RequestMethod.GET)
    public ModelAndView editProfile() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("userinfo");
        return modelAndView;
    }
  //修改个人信息
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView updateProfile(  @RequestParam(value = "user_id", defaultValue = "") String userId,
    									@RequestParam(value = "phone", defaultValue = "") String phone,
            							@RequestParam(value = "user_name", defaultValue = "") String userName,
            							@RequestParam(value = "sex", defaultValue = "") String sex) {
    	User user = new User();
    	user.setUserId(Integer.parseInt(userId));
        user.setPhone(phone);
        user.setUserName(userName);
        user.setSex(sex);
        userService.updateUser(user);
        this.removeSession("USER");
        User newUser = new User();
        newUser = userService.getUserById(user.getUserId());
        newUser.setPassword("");
        this.addSession("USER", newUser);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("userinfo");
        return modelAndView;
    }
    
    //后台跳向个人页面
    @RequestMapping(value = "/user-information/{id}", method = RequestMethod.GET)
    public ModelAndView userProfile(@PathVariable String id) {
    	User user = userService.getUserById(Integer.parseInt(id));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("user", user);
        modelAndView.setViewName("user-info");
        return modelAndView;
    }
    
  //修改个人信息
    @RequestMapping(value = "/updateInfo", method = RequestMethod.POST)
    public ModelAndView updateUserProfile(  @RequestParam(value = "user_id", defaultValue = "") String userId,
    									@RequestParam(value = "role", defaultValue = "") String role,
    									@RequestParam(value = "phone", defaultValue = "") String phone,
            							@RequestParam(value = "user_name", defaultValue = "") String userName,
            							@RequestParam(value = "sex", defaultValue = "") String sex) {
    	User user = new User();
    	user.setUserId(Integer.parseInt(userId));
        user.setPhone(phone);
        user.setRole(role);
        user.setUserName(userName);
        user.setSex(sex);
        userService.updateUser(user);
        User newUser = new User();
        newUser = userService.getUserById(user.getUserId());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("user", newUser);
        modelAndView.setViewName("user-info");
        return modelAndView;
    }

    
}
