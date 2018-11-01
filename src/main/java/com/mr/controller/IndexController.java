package com.mr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lmy on 2018/10/29.
 */
@Controller
public class IndexController {


    /**
     * 去spu页面
     * @return
     */
    @RequestMapping("/toSpuPage")
    private String toSpuPage(){
        return "spu";
    }

    /**
     * 去attr页面
     * @return
     */
    @RequestMapping("/toAttrPage")
    private String toAttrPage(){
        return "attr";
    }
    /**
     * 去sku页面
     * @return
     */
    @RequestMapping("/toSkuPage")
    private String toSkuPage(){
        return "sku";
    }
}
