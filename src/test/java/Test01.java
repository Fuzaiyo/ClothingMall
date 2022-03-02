import com.fuzaiyo.dao.CartDao;
import com.fuzaiyo.dao.ClothesDao;
import com.fuzaiyo.dao.UserDao;
import com.fuzaiyo.domain.Cart;
import com.fuzaiyo.domain.CartItems;
import com.fuzaiyo.domain.Clothes;
import com.fuzaiyo.domain.User;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:beans.xml")
public class Test01 {
    @Autowired
    private UserDao userDao;

    @Autowired
    private CartDao cartDao;
    @Autowired
    private ClothesDao clothesDao;

    @Test
    public void testuserdao1() {
        userDao.updateByFakeUser(1, null, null, null, -8);
        System.out.println();
    }

    @Test
    public void testclothesdao1() {
        List<Clothes> list = clothesDao.findAll();
        for (Clothes c : list
        ) {
            System.out.println(c.toString());
        }
    }

    //测试模糊查询
    @Test
    public void keyWordsquerytest1() {
        List<Clothes> list = clothesDao.keywordsQuery("毛衣");
        System.out.println(list);
    }

    @Test  //测试标签的多表查询
    public void linkQuery1() {
        List<Clothes> list = clothesDao.findNews();
        System.out.println(list);
    }

    @Test  //测试标签的多表查询
    public void linkQuery2() {
        List<Clothes> list = clothesDao.findLabel("男子");
        System.out.println(list);
    }

    @Test  //测试添加购物车数据
    public void saveByUidandCloid() {
        int i = cartDao.saveByUidandCloid(1, 1,1);
        System.out.println(i);
    }
    @Test  //根据用户ID查询他的购物车清单
    public void findItemsListByuserid() {
        List<CartItems> cartListById = cartDao.getCartListById(2);
        System.out.println(cartListById);
    }

    @Test  //根据cartid修改购物车商品数量
    public void updateNumberBycartid() {
      cartDao.updateNumByCartid(4,2);
    }
    
}
