package com.example.demo.service;

import com.example.demo.dao.CartDao;
import com.example.demo.entity.Cart;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CartService {
    @Resource
    private CartDao cartDao;

    public void add(Cart cart) {
        Cart byGoodsId = cartDao.selectByGoodsId(cart.getGoodsId());
        if (byGoodsId != null) {
            Map<String, Object> map = new HashMap<>();
            map.put("id", byGoodsId.getId());
            map.put("number", cart.getNumber());
            cartDao.updateByGoodsId(map);
        } else {
            cart.setSelected(1);
            cartDao.insert(cart);
        }

    }

    public List<Cart> list() {
        return cartDao.list();
    }


    public void updateNumber(int number, long id) {
        Map<String, Object> map = new HashMap<>();
        map.put("id", id);
        map.put("number", number);
        cartDao.updateByFinalNum(map);
    }

    public boolean deleteById(long id) {
        int i = cartDao.deleteById(id);
        return i != 0;
    }

    public boolean updateSelected(long id, int selected) {
        Map<String, Object> map = new HashMap<>();
        map.put("id", id);
        map.put("selected", selected);
        int i = cartDao.updateSelected(map);
        return i != 0;
    }

}
