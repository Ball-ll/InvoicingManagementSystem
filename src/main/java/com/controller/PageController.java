package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	/**
	 * 前端页面测试
	 * @return
	 */
	@RequestMapping("/index")
	public String index(){
		return "page/index";
	}
	/**
	 * 访问首页
	 * @return
	 */
	@RequestMapping("/shouye")
	public String shouye(){
		return "page/shouye";
	}
	/**
	 * 前端表单测试
	 * @return
	 */
	@RequestMapping("/forms")
	public String forms(){
		return "page/forms";	
	}

	/**
	 * 前端物料页面
	 * @return
	 */
	@RequestMapping("/wuliao")
	public String wuliao(){
		return "page/wuliao";	
	}
	/**
	 * 前端供应商页面
	 * @return
	 */
	@RequestMapping("/gongying")
	public String gongying(){
		return "page/gongyingshang";	
	}
	/**
	 * 前端地址页面三级联动
	 * @return
	 */
	@RequestMapping("/address")
	public String address(){
		return "page/address";	
	}
	/**
	 * 前端物料（bootstrap版本）
	 * @return
	 */
	@RequestMapping("/wuliao-table")
	public String wuliao_table(){
		return "page/wuliao-table";	
	}
	/**
	 * 前端供应商（boostrap版本）
	 * @return
	 */
	@RequestMapping("/gongyin-table")
	public String gongyin(){
		return "page/gongyinshang-table";	
	}
	/**
	 * 前端申请采购
	 * @return
	 */
	@RequestMapping("/subchaigoushenhei")
	public String chaigoushenhei(){
		return "page/subchaigoushenhei";	
	}
	/**
	 * 前端采购审核页面
	 * @return
	 */
	@RequestMapping("/caigoushenhei")
	public String shopcaigou(){
		return "page/caigoushenhei";	
	}
	/**
	 * 前端商品采购
	 * @return
	 */
	@RequestMapping("/caigou")
	public String caigou(){
		return "page/caigou";	
	}
	/**
	 * 前端仓库信息
	 * @return
	 */
	@RequestMapping("/cangku")
	public String cangku(){
		return "page/cangku";	
	}
	/**
	 * 前端出库记录
	 * @return
	 */
	@RequestMapping("/shop_out_info")
	public String shop_out(){
		return "page/outInfo";
	}
	/**
	 * 前端销售记录
	 * @return
	 */
	@RequestMapping("/salesinfo")
	public String salesinfo(){
		return "page/salesinfo";
	}
	/**
	 * 前端页商品信息页面
	 * @return
	 */
	@RequestMapping("/shop_show_info")
	public String shop_show(){
		return "page/shopinfo";
	}
	/**
	 * 前端用用户注册
	 * @return
	 */
	@RequestMapping("/register")
	public String register(){
		return "page/register";
	}
	/**
	 * 前端用户登录页面
	 * @return
	 */
	@RequestMapping("/login")
	public String login(){
		return "page/login";
	}
	/**
	 * 前端用户跟人信息页
	 * @return
	 */
	@RequestMapping("/userInfo")
	public String userInfo(){
		return "page/userInfo";
	}
	
	
	
}
