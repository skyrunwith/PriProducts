package com.priproducts.controller;

import com.priproducts.entity.Address;
import com.priproducts.entity.ApiResponse;
import com.priproducts.entity.User;
import com.priproducts.service.AddressService;
import com.priproducts.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/login")
public class LoginController {

    public final static String SESSION_KEY_IMAGE_CODE = "SESSION_KEY_IMAGE_CODE";
    public final static String SESSION_REGISTRY_KEY_IMAGE_CODE = "SESSION_REGISTRY_KEY_IMAGE_CODE";
    public final static String SESSION_USER = "user";

    @Autowired
    private UserService userService;
    @Autowired
    private AddressService addressService;

    @RequestMapping("/login")
    @ResponseBody
    public ApiResponse login(HttpServletRequest request, String username, String password, String yanzhengma, Model model){
        User user = userService.findByName(username);
        if(user == null || !StringUtils.equals(password, user.getUserpwd())){
            return new ApiResponse(-1, null, "用户名密码错误");
        }
        if(!yanzhengma.equals(request.getSession().getAttribute(SESSION_KEY_IMAGE_CODE))){
            return new ApiResponse(-1, null, "验证码不正确");
        }
        List<Address> address_list = addressService.findByUid(String.valueOf(user.getUid()));
        HttpSession session = request.getSession();
        if (user.getAid() != null) {
            Address address = addressService.find(String.valueOf(user.getAid()));
            session.setAttribute("default_address", address);
        }
        session.setAttribute("address_list", address_list);

        request.getSession().setAttribute("user", user);
        return new ApiResponse(0, user, "登录成功");
    }

    @RequestMapping("logout")
    public String logout(HttpSession session, HttpServletRequest request){
        session.removeAttribute("user");
        return "redirect:/shouye/index";
    }

    @RequestMapping("registry/image/yanzhengma")
    public void registryCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ImageCode imageCode = (ImageCode) request.getSession().getAttribute(LoginController.SESSION_REGISTRY_KEY_IMAGE_CODE);
        ImageIO.write(imageCode.getBufferedImage(), "jpeg", response.getOutputStream());
    }

    @RequestMapping("registry")
    @ResponseBody
    public ApiResponse registry(HttpServletRequest request, User user, String yanzhengma){
        User dbUser = userService.findByName(user.getUsername());
        if(dbUser == null) {
            userService.insert(user);
            request.getSession().setAttribute("user", user);
            return new ApiResponse(0, user, "用户注册成功，即将跳转");
        }else{
            return new ApiResponse(-1, null, "用户已存在");
        }
    }

    @RequestMapping("/image/yanzhengma")
    public void createCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ImageCode imageCode = createImageCode();
        request.getSession().setAttribute(LoginController.SESSION_KEY_IMAGE_CODE, imageCode.getCode());
        ImageIO.write(imageCode.getBufferedImage(), "jpeg", response.getOutputStream());
    }

    public static ImageCode createImageCode() {

        int width = 100; // 验证码图片宽度
        int height = 36; // 验证码图片长度
        int length = 4; // 验证码位数
        int expireIn = 60; // 验证码有效时间 60s

        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics g = image.getGraphics();

        Random random = new Random();

        g.setColor(getRandColor(200, 250));
        g.fillRect(0, 0, width, height);
        g.setFont(new Font("Times New Roman", Font.ITALIC, 20));
        g.setColor(getRandColor(160, 200));
        for (int i = 0; i < 155; i++) {
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int xl = random.nextInt(12);
            int yl = random.nextInt(12);
            g.drawLine(x, y, x + xl, y + yl);
        }

        StringBuilder sRand = new StringBuilder();
        for (int i = 0; i < length; i++) {
            String rand = String.valueOf(random.nextInt(10));
            sRand.append(rand);
            g.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110), 20 + random.nextInt(110)));
            g.drawString(rand, 13 * i + 6, 16);
        }
        g.dispose();
        return new ImageCode(image, sRand.toString(), expireIn);
    }

    private static Color getRandColor(int fc, int bc) {
        Random random = new Random();
        if (fc > 255) {
            fc = 255;
        }
        if (bc > 255) {
            bc = 255;
        }
        int r = fc + random.nextInt(bc - fc);
        int g = fc + random.nextInt(bc - fc);
        int b = fc + random.nextInt(bc - fc);
        return new Color(r, g, b);
    }
}
