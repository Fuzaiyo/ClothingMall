package com.fuzaiyo.controller;

import com.fuzaiyo.domain.Clothes;
import com.fuzaiyo.service.ClothesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/clothes")
public class ClothesController {
    @Autowired
    private ClothesService clothesService;

    @RequestMapping("/toIndex")
    public ModelAndView jumpIndex() throws Exception {
        //封装新品上市给首页
        ModelAndView mv=new ModelAndView();
        List<Clothes>  newslist=clothesService.findNews();
        mv.addObject("newslist",newslist);
        mv.setViewName("indexsuccess");
        return mv;
    }

    @RequestMapping("/toDetails")
    public ModelAndView jumpDetails(HttpServletRequest request) throws Exception {
        int id = Integer.parseInt(request.getParameter("id"));
        Clothes clothes=clothesService.findById(id);
        ModelAndView mv=new ModelAndView();
        mv.addObject("singleitem",clothes);
        mv.setViewName("goodsdetails");
        return mv;
    }

    @RequestMapping("/toAll")
    public ModelAndView jumpAll() throws Exception {

        ModelAndView mv = new ModelAndView();
        List<Clothes> list = clothesService.findAll();
        mv.setViewName("Allclothes");
        mv.addObject("list", list);
        mv.addObject("cue","为你展示所有商品");
        return mv;

    }

    //根据商品分类标签展示商品
    @RequestMapping("/label")
    public ModelAndView jumpLable(HttpServletRequest request) throws Exception {
        String label=request.getParameter("label");
        ModelAndView mv = new ModelAndView();
        List<Clothes> labellist=clothesService.findLabel(label);
        mv.addObject("list",labellist);
        mv.addObject("cue","为你展示"+label+"标签商品");
        mv.setViewName("Allclothes");
        return mv;
    }

    @RequestMapping("/search")
    public ModelAndView searchClothes(HttpServletRequest request) throws Exception {
        ModelAndView mv = new ModelAndView();
        String keywords = request.getParameter("keywords");
        if (keywords.isEmpty()) {//如果是空或者没输入参数，回首页去
            mv.setViewName("indexsuccess");
            return mv;
        } else
        {
            List<Clothes> list = clothesService.keywordsQuery(keywords);
            mv.addObject("list", list);
            if (list.isEmpty()){
            mv.addObject("cue","亲，没搜到你想要的商品呢，换个词试试吧");
            }
            else {
            mv.addObject("cue","为你搜得以下商品");
            }
            mv.setViewName("Allclothes");
            return mv;
        }
    }
}
