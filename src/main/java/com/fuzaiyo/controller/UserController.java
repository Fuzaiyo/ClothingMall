package com.fuzaiyo.controller;

import com.fuzaiyo.domain.User;
import com.fuzaiyo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired //按类型注入
    private UserService userService;

    //一些中间跳转请求方法
    @RequestMapping("/toLogin")
    public String jumpLogin() throws Exception {
        return "redirect:/login.jsp";
    }

    @RequestMapping("/toRecharge")
    public String jumpRecharge() throws Exception {
        return "Recharge";
    }

    @RequestMapping("/toAccount")
    public String jumpAccount(HttpSession session) throws Exception {
        return "account";
    }

    @RequestMapping("/login")
    public ModelAndView userLogin(String username, String password, HttpSession session) {

        ModelAndView modelAndView = new ModelAndView();

        User user = userService.userLogin(username, password);

        if (user != null) {  //登录成功
            session.setAttribute("user", user);
            //请求跳转到控制器
            modelAndView.setViewName("forward:/clothes/toIndex");

            return modelAndView;
        } else {  //登录失败

            modelAndView.setViewName("redirect:/login.jsp");
            return modelAndView;
        }

    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) throws Exception {
        // session 过期
        session.invalidate();
        return "redirect:/index.jsp";
    }

    @RequestMapping("/updateUser")
    public String updateUser(HttpServletRequest request, HttpSession session) throws Exception {

        String consignee = request.getParameter("consignee");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        //表单有相对应的name值但不提交 默认数据为空字符串,把它设成null
        if (consignee.isEmpty()) {
            consignee = null;
        }
        if (phone.isEmpty()) {
            phone = null;
        }
        if (address.isEmpty()) {
            address = null;
        }
        User user = (User) session.getAttribute("user");
        int id = user.getId();
        if (consignee == null && phone == null && address == null) {
            //不进行修改
        } else {
            //进行信息修改
            User newUser = userService.updateUser(consignee, phone, address, id, 0);
            //获取更改完的user并进行session更新
            session.setAttribute("user", newUser);
        }
        return "account";
    }

    @RequestMapping("recharge")
    public String toRecharge(HttpSession session, HttpServletRequest request) throws Exception {
        int id = Integer.parseInt(request.getParameter("userid"));
        int count = Integer.parseInt(request.getParameter("count"));
        //进行充值
        User newUser = userService.updateUser(null, null, null, id, count);
        //更新session
        session.setAttribute("user", newUser);
        return "account";
    }

}
