package com.priproducts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller  //交给spring管理
@RequestMapping("/user/")
public class UserController {
   /*
    @Autowired
    private UserService userservice;
    Page page=new Page();

    @RequestMapping("user_list")
    public String userList(User user, Model model) {
        String str = user.getUsername();
        user.setUsername(LikeQuery.add(str));

        if(user.getPageNo()==null) user.setPageNo(1);
        if(user.getPageSize()==null) user.setPageSize(Sys.Common.pageSize);

        page.setPageNo(user.getPageNo());
        page.setPageSize(user.getPageSize());
        page.setStartRow(user.getPageNo(), user.getPageSize());
        page.setCount(userService.queryCount(user));
        page.setPages(page.getCount(), page.getPageSize());

        user.setStartRow(page.getStartRow());

        List<User> user_list = userservice.findAll(user);

        user.setUsername(str);
        model.addAttribute("user", user);
        model.addAttribute("page", page);
        model.addAttribute("user_list", user_list);
        return "admin/user_list";
    }

    @RequestMapping("status")
    public String status(User user,Model model) {
        User_info user_info = userservice.findById(user.getUid()+"");
        if(user.getReason()!=null && user_info.getStatus() == Sys.Common.USE) {
            user_info.setStatus(Sys.Common.NO_USE);
            user_info.setReason(user.getReason());
            userservice.update(user_info);
        }else {
            user_info.setReason("");
            user_info.setStatus(Sys.Common.USE);
            userservice.update(user_info);
        }
        return userList(user,model);
    }

    @RequestMapping("insert")
    public String insert(@RequestParam(value = "file_img",required = true) MultipartFile file, User_info user, HttpServletRequest request, Model model) {
        String head_img = UploadFile.upimg(file, request);
        user.setHead_img(head_img);
        userservice.insert(user);
        return "redirect:user_list";
    }

    @RequestMapping("update")
    public String update(String uid,Model model) {
        User user = userservice.findAdmin_user(uid);
        model.addAttribute("user", user);
        return "admin/user_update";
    }

    @RequestMapping("updated")
    public String updated(User user,Model model) {
        userservice.updateAdmin_user(user);
        return "redirect:user_list";
    }

    @RequestMapping("pluse")
    public String PlUse(User user,Model model){
        String idsarr[] = user.getIds().split(",");
        for (String uid : idsarr) {
            User aUser = new User();
            aUser.setUid(Integer.parseInt(uid));
            aUser.setStatus(Sys.Common.USE);
            userservice.updateStatus(aUser);
        }
        return userList(user, model);
    }

    @RequestMapping("plnouse")
    public String PlNouse(User user, Model model){
        String idsarr[] = user.getIds().split(",");
        for (String uid : idsarr) {
            User aUser = new User();
            aUser.setUid(Integer.parseInt(uid));
            aUser.setStatus(Sys.Common.NO_USE);
            userservice.updateStatus(aUser);
        }
        return userList(user, model);
    }
    @RequestMapping("pldel")
    public String PlDelete(User user, Model model){
        String idsarr[] = user.getIds().split(",");
        for (String uid : idsarr) {
            userservice.delete(uid);
        }
        return userList(user, model);
    }

*/
}