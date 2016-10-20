package cn.prm.server.api.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.prm.server.bean.CurrUser;
import cn.prm.server.commons.BaseController;
import cn.prm.server.commons.Constants.RESPONSE_CODE;
import cn.prm.server.dto.BaseDto;
import cn.prm.server.exception.BusinessException;
import cn.prm.server.form.UserLoginForm;
import cn.prm.server.form.UserRegisterForm;
import cn.prm.server.service.UserService;

/**
 * 
 * @Title: UserApiController.java
 * @Package: cn.prm.server.api.controller
 * @Description: 关于账户的数据接口
 * @author yyao
 * @date 2016年10月19日 下午5:20:07
 * @version v1.0
 */
@RestController
@RequestMapping("/api/user")
public class UserApiController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(UserApiController.class);

	@Autowired
	UserService userService;

	/**
	 * 
	 * @Title: login 
	 * @Description: 登录
	 * @param request
	 * @param form
	 * @return
	 * @throws
	 */
	@RequestMapping("/login")
	public Object login(HttpServletRequest request, UserLoginForm form) {
		try {
			log.info("email:"+form.getEmail()+" 准备登陆");
			CurrUser currUser = userService.login(form);
			setCurrUser(request, currUser);
			log.info(currUser.getName() + "(" + currUser.getGuid() + ") 登陆成功");
			return new BaseDto(RESPONSE_CODE.CODE_SUCCESS, "登录成功");
		} catch (BusinessException e) {
			e.printStackTrace();
			return new BaseDto(RESPONSE_CODE.CODE_FAILURE, e.getMessage());
		}
	}

	/**
	 * 
	 * @Title: logout 
	 * @Description: 注销
	 * @param request
	 * @return
	 * @throws
	 */
	@RequestMapping("/logout")
	public Object logout(HttpServletRequest request) {
		clearCurrUser(request);
		return new BaseDto(RESPONSE_CODE.CODE_SUCCESS, "注销成功");
	}

	/**
	 * 
	 * @Title: register 
	 * @Description: 注册
	 * @param request
	 * @param form
	 * @return
	 * @throws
	 */
	@RequestMapping("/register")
	public Object register(HttpServletRequest request, UserRegisterForm form) {
		try {
			CurrUser currUser = userService.register(form);
			setCurrUser(request, currUser);
			log.info(currUser.getName() + "(" + currUser.getGuid() + ") 注销成功");
			return new BaseDto(RESPONSE_CODE.CODE_SUCCESS, "注销成功");
		} catch (BusinessException e) {
			return new BaseDto(RESPONSE_CODE.CODE_FAILURE, e.getMessage());
		}
	}
}
