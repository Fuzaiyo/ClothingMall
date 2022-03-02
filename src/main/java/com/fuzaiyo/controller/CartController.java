package com.fuzaiyo.controller;

import com.fuzaiyo.dao.ClothesDao;
import com.fuzaiyo.domain.Cart;
import com.fuzaiyo.domain.CartItems;
import com.fuzaiyo.domain.Clothes;
import com.fuzaiyo.domain.User;
import com.fuzaiyo.service.CartService;
import com.fuzaiyo.service.ClothesService;
import com.fuzaiyo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private UserService userService;


    @RequestMapping("/toCart")  //在这方法上显示购物车信息，只能点击我的购物车选项跳过来,显示操作
    public ModelAndView jumpCart(HttpSession session, HttpServletRequest request) throws Exception {
        ModelAndView mv = new ModelAndView();
        User user = (User) session.getAttribute("user");
        int id = user.getId();
        List<CartItems> cartItemsList = cartService.getCartListById(id);
        mv.setViewName("Cart");
        mv.addObject("cartItemsList", cartItemsList);
        return mv;
    }

    @ResponseBody
    @RequestMapping("/addtoCart1") //自定义选择数量加入购物车
    public String addCart1(HttpSession session, HttpServletRequest request) throws Exception {
        User user = (User) session.getAttribute("user");
        int number = Integer.parseInt(request.getParameter("num"));
        int cloid = Integer.parseInt(request.getParameter("cid"));
        int uid = user.getId();
        int flag = cartService.saveByUidandCloid(uid, cloid, number);
        if (flag == 0)
            return "0";
        else
            return "1";
    }

    @ResponseBody
    @RequestMapping("/addtoCart2")  //加入购物车，数量为1
    public String addCart2(HttpServletRequest request, HttpSession session) {
        //携带商品id过来,先去查看用户有没有该商品记录
        //如果有,根据购物车id和商品id,添加一条num数量;
        //如果没有,根据uid和商品id新增一条购物车条项,num设为1,
        int cloid = Integer.parseInt(request.getParameter("cloid"));
        session.getAttribute("user");
        User user = (User) session.getAttribute("user");
        int uid = user.getId();
        int flag = cartService.saveByUidandCloid(uid, cloid, 1);
        if (flag == 0)
            return "0";
        else
            return "1";
    }


    @RequestMapping("/updateCart")  //在这方法上显示购物车信息
    public ModelAndView changeCart(HttpSession session) throws Exception {
        ModelAndView mv = new ModelAndView();
        User user = (User) session.getAttribute("user");
        mv.setViewName("Cart");
        return mv;
    }

    @RequestMapping("/judge")  //判断余额是否充足
    public ModelAndView judgebalance(HttpSession session, HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();
        User user = (User) session.getAttribute("user");
        int id = user.getId();
        int balance = user.getBalance();
        int sumprice = (int) session.getAttribute("sumprice");
        if (balance > sumprice) {
            //支付成功

            userService.updateUser(null, null, null, id, sumprice * -1);

            //提示支付成功

            //更新session:扣过钱后的用户
            User newUser = userService.findUserByID(id);
            session.setAttribute("user", newUser);
            mv.setViewName("forward:/clothes/toIndex");

            //清空该用户选择的购物车条目
            Integer[] arr= (Integer[]) session.getAttribute("cartItemsToDel");
            for (int i = 0; i < arr.length; i++) {
                int cartid=arr[i];
                cartService.deleteById(cartid);
            }

        } else {
            //支付失败，跳转充值页面
            mv.setViewName("forward:/user/toRecharge");
        }
        return mv;
    }

    @RequestMapping("/torealcheckout")  //判断余额是否充足
    public ModelAndView tocheckout(HttpSession session) throws Exception {
        ModelAndView mv = new ModelAndView();
        int sumprice = (int) session.getAttribute("sumprice");
        mv.setViewName("Checkout");
        mv.addObject("sumprice", sumprice);
        return mv;
    }

    @RequestMapping("/tofakecheckout")
    @ResponseBody
    public String tocheckout(@RequestParam(value = "cartItemsToDel") Integer[] cartItemsToDel,@RequestParam(value = "sumprice") int sumprice,HttpSession session) throws Exception {
        session.setAttribute("sumprice",sumprice);
        session.setAttribute("cartItemsToDel",cartItemsToDel);
        return "1";
    }

//    @RequestMapping("/delete")  //删除一个购物车条目，并更新modelandview中的购物车,
//    @ResponseBody
//    public String delete(HttpServletRequest request, HttpSession session) throws Exception {
//        int cartid = Integer.parseInt(request.getParameter("cartid"));
//        cartService.deleteById(cartid);
//        User user= (User) session.getAttribute("user");
//        int uid=user.getId();
//        List<CartItems> cartList = cartService.getCartListById(uid);
//        return "1";
//    }

    @RequestMapping(value = "/changeCartItemNum", method = RequestMethod.POST)  //在购物车页面保存数量,删除条目的修改
    @ResponseBody
    public String changenum(@RequestParam(value = "cartidnum") Integer[] cartidnum,@RequestParam(value = "del") Integer[] del,HttpSession session) throws Exception {

        //1.删除购物车条目
        if(del.length!=0&&del[0]!=-1){
            for (int i = 0; i < del.length; i++) {
                int cartid=del[i];
                cartService.deleteById(cartid);
            }
        }
        //2.获取这个用户所有的cartid
        User user = (User) session.getAttribute("user");
        int uid = user.getId();
        List<CartItems> cartList = cartService.getCartListById(uid);
        for (int i = 0; i < cartList.size(); i++) {
            //3.给所有的cartid重新设置数量
            int num = cartidnum[i];
            CartItems cartItems = cartList.get(i);
            int cartid = cartItems.getCartid();
            cartService.updateNumByCartid(cartid,num);
        }
        return "1";
    }

}
