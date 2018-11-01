package com.mr.controller;

import com.mr.model.OBJECTTMallAttr;
import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVO;
import com.mr.service.AttrService;
import com.mr.service.SkuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Lmy on 2018/10/31.
 */
@Controller
public class SkuController {

    @Autowired
    private SkuService skuService;

    @Autowired
    private AttrService attrService;
    @RequestMapping("toAddSkuPage")
    public String toAddSkuPage(Integer flbh1, Integer flbh2, ModelMap map){
        //查询属性
        List<OBJECTTMallAttr> attrList =  attrService.findAttrByclass2(flbh2);
        map.put("flbh1",flbh1);
        map.put("flbh2",flbh2);
        map.put("attrList",attrList);
        return "sku-add";
    }

    /**
     * 查询spu 通过 flbh1 flbh2  tmId
     * @param spu
     * @return
     */
    @ResponseBody
    @RequestMapping("selectSpu")
    public List<TMallProduct> selectSpu(TMallProduct spu){
        List<TMallProduct> list= skuService.selectSpu(spu);
        return list;
    }

    @RequestMapping("saveSku")
    public ModelAndView saveSku(Integer flbh1, Integer flbh2,TMallSkuVO skuVO ){
        skuService.saveSku(skuVO);
        ModelAndView mv= new ModelAndView();
        mv.addObject("flbh1",flbh1);
        mv.addObject("flbh2",flbh2);
        mv.setViewName("redirect:toAddSkuPage.do");
        return mv;
    }


}
