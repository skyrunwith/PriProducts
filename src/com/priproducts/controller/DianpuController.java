package com.priproducts.controller;

import com.priproducts.entity.ApiResponse;
import com.priproducts.entity.Dianpu;
import com.priproducts.service.DianpuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping("/dianpu")
@Controller
public class DianpuController {

    @Autowired
    private DianpuService dianpuService;

    @RequestMapping("/findAll")
    @ResponseBody
    public ApiResponse findAll(HttpSession session, Integer kid){
        List<Dianpu> dianpuList = dianpuService.findAllDianpu(kid);
        return new ApiResponse(0, dianpuList, "获取店铺成功");
    }
}
