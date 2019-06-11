package com.example.demo.controller;

import com.example.demo.dto.ResultBean;
import com.example.demo.entity.Cart;
import com.example.demo.service.CartService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping(value = "/cart", method = RequestMethod.POST)
public class CartController {
    @Resource
    private CartService cartService;

    @RequestMapping("/add")
    public ResultBean add(Cart cart) {
        cartService.add(cart);
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/list")
    public ResultBean list() {
        return ResultBean.getSuccess(null, cartService.list());
    }

    @RequestMapping("/update")
    public ResultBean update(int number, long id) {
        cartService.updateNumber(number, id);
        return ResultBean.getSuccess(null);
    }

    @RequestMapping("/deleteById")
    public ResultBean deleteById(long id) {
        if (cartService.deleteById(id)) {
            return ResultBean.getSuccess(null);
        }
        return ResultBean.getError("系统繁忙");
    }

    @RequestMapping("/updateSelected")
    public ResultBean updateSelected(long id, int selected) {
        System.out.println(id);
        System.out.println(selected);
        if (cartService.updateSelected(id, selected)) {
            return ResultBean.getSuccess(null);
        }
        return ResultBean.getError("系统繁忙");
    }
}
