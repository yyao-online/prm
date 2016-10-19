package cn.prm.server.page.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.prm.server.bean.CurrUser;
import cn.prm.server.commons.BaseController;
import cn.prm.server.commons.MAVHelper;

/**
 * @Title: OrderController.java
 * @Package: cn.prm.server.page.controller
 * @Description:
 * @author yyao
 * @date 2016年10月19日 下午5:42:33
 * @version v1.0
 */
@Controller
@RequestMapping("order")
public class OrderController extends BaseController {

	@Autowired
	private MAVHelper mavHelper;

	/** 
	 * @Title: index 
	 * @Description: 
	 * @param request
	 * @return
	 * @throws 
	 */
	@RequestMapping({ "", "/index" })
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		CurrUser currUser = getCurrUser(request);
		if (currUser == null) {
			mav.setViewName("redirect:/login");
			return mav;
		}
		mav.setViewName("order");
		mavHelper.withUserName(mav, currUser.getName());
		return mav;
	}

}
