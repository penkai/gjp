package cn.itcase.gjp.controller;

import cn.itcase.gjp.domain.ZhangWu;
import cn.itcase.gjp.service.ZhangWuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * Administrator
 * 2018/11/22 0022
 */
@RequestMapping("/gjp")
@org.springframework.stereotype.Controller
public class Controller {

    @Autowired
    private ZhangWuService zhangWuService;

    @GetMapping("/list")
    public String list(@RequestParam(value="page",required =false,defaultValue = "1") Integer page,
                       @RequestParam(value="size",required =false,defaultValue = "5")Integer size,
                       Map<String, Object> map){
            //分页
        PageRequest pageRequest=new PageRequest(page-1,size);
        //查询列表
        Page<ZhangWu> zhangWuPage = zhangWuService.findList(pageRequest);
        //page转list
        List<ZhangWu> zhangWuList = zhangWuPage.getContent();

        map.put("zhangWuList",zhangWuList);
        map.put("zhangWuPage",zhangWuPage);
       return "gjp/list";


    }
}
