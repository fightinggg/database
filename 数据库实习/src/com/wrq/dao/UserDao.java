package com.wrq.dao;

import com.wrq.model.User;
import com.wrq.utils.JdbcUtils;
import com.wrq.utils.PageBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public class UserDao {
    JdbcUtils jd = new JdbcUtils();

    public Map<String, Object> login(String account, String password) {
        String sql = "select * from \"user\" where account=? and password=? ";
        Map<String, Object> userMap = jd.login(sql, account, password);
        return userMap;
    }

    // 查询list
    public List<Map<String, Object>> userList(HttpServletRequest request, User user, int pages, int records) {
        StringBuilder sq = new StringBuilder("select rownum rn,user_id, user_name, account, password, age, sex, card, tel, power, status from \"user\" where 1=1");
        if (user.getAccount() != null && user.getAccount() != "") {
            sq.append(" and account like '%" + user.getAccount() + "%'");
        }
        if (user.getUser_name() != null && user.getUser_name() != "") {
            sq.append(" and user_name like '%" + user.getUser_name() + "%'");
        }
        String sql = sq.toString();
        List<Map<String, Object>> userList = jd.listForPage(sql, pages, records, null);
        PageBean.setPage(sql, jd, request, pages);
        return userList;

    }

    // 添加
    public int add(User user) {
        String sql = "insert into \"user\" (user_id,user_name,account,tel,sex,age,power,card,password,status) values (?,?,?,?,?,?,?,?,?,?)";
        int result = jd.update(sql, new Object[]{user.getAccount(),user.getUser_name(), user.getAccount(), user.getTel(), user.getSex(),
                user.getAge(), user.getPower(), user.getCard(), user.getPassword(), user.getStatus()});
        return result;

    }
//
//    /*
//
//     */
//    public List<Map<String, Object>> getAllUser() {
//        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
//        Connection conn = jd.getConn();
//        PreparedStatement ps = null;
//        String sql = "SELECT*FROM \"user\"";
//        try {
//            ps = conn.prepareStatement(sql);
//
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Map<String, Object> tem = new HashMap<String, Object>();
//                int USER_ID = rs.getInt(1);
//                tem.put("USER_ID", USER_ID);
//                String USER_NAME = rs.getString(2);
//                tem.put("USER_NAME", rs.getString(2));
//                String ACCOUNT = rs.getString(3);
//                tem.put("ACCOUNT", ACCOUNT);
//                String PASSWORD = rs.getString(4);
//                tem.put("PASSWORD", PASSWORD);
//                int AGE = rs.getInt(5);
//                tem.put("AGE", AGE);
//                int SEX = rs.getInt(6);
//                tem.put("SEX", SEX);
//                String CARD = rs.getString(7);
//                tem.put("CARD", CARD);
//                String TEL = rs.getString(8);
//                tem.put("TEL", TEL);
//                int POWER = rs.getInt(9);
//                tem.put("POWER", POWER);
//                int STATUS = rs.getInt(10);
//                tem.put("STATUS", STATUS);
//                list.add(tem);
//            }
//
//        } catch (Exception e) {
//            System.out.print(e + "?get all user 失败");
//            e.printStackTrace();
//            // TODO: handle exception
//        } finally {
//            try {
//                conn.close();
//                ps.close();
//            } catch (Exception e) {
//                System.out.print("关闭失败");
//                // TODO: handle exception
//            }
//        }
//        return list;
//    }
//
//    public boolean addManage(String account, String pwd) {
//        // 插入一个管理员
//        String sql = "INSERT INTO \"user\"(user_id,user_name,account,password,age,sex,card,tel,power,status)VALUES(0,'admin',?,?,0,0,'NULL','NULL',0,0)";
//        Connection cons = null;
//        PreparedStatement ps = null;
//        try {
//            cons = jd.getConn();
//            ps = cons.prepareStatement(sql);
//            ps.setString(1, account);
//            ps.setString(2, pwd);
//            System.out.print(ps.execute());
////			boolean flag=ps.execute();
//            boolean flag = true;
//            if (flag == true) {
//                System.out.print("管理员插入成功!");
//                return true;
//            } else {
//                System.out.print("插入管理员失败");
//                return false;
//            }
//
//        } catch (Exception e) {
//            try {
//                if (cons != null) {
//                    cons.close();
//                }
//                if (ps != null) {
//                    ps.close();
//                }
//            } catch (Exception e1) {
//                // TODO: handle exception
//            }
//            e.printStackTrace();
//            // TODO: handle exception
//        }
//
//        return false;
//    }

    public boolean DelUserByName(String USER_NAME) {
        System.out.println("执行到这里？？？？");
        Connection cs = jd.getConn();
        PreparedStatement ps = null;
        try {
            String SQL = "DELETE FROM \"user\" WHERE USER_NAME=?";
            ps = cs.prepareStatement(SQL);
            ps.setString(1, USER_NAME);
            System.out.print("设置完参数!" + "\n");
            boolean res = ps.execute();

            return res;
        } catch (Exception e) {
            e.printStackTrace();
            // TODO: handle exception
        }
        return false;
    }

    public static void main(String[] args) {
        String USER_NAME = "admin";
        boolean re = new UserDao().DelUserByName(USER_NAME);
        System.out.print(re + "????");
    }

    // 通过id查询数据
    public Map<String, Object> load(int user_id) {
        String sql = "select * from \"user\" where user_id=?";
        Map<String, Object> userMap = jd.queryById(sql, user_id);
        return userMap;

    }

    // 修改
    public int mdi(User user) {
        String sql = "update \"user\" set user_name=?,account=?,tel=?,sex=?,age=?,power=?,card=? where user_id=?";
        int result = jd.update(sql, new Object[]{user.getUser_name(), user.getAccount(), user.getTel(), user.getSex(),
                user.getAge(), user.getPower(), user.getCard(), user.getUser_id()});
        System.out.println(result);
        return result;
    }

    // 删除
    public int del(User user) {
        String sql = "update \"user\" set status=-1 where user_id=?";
        int result = jd.update(sql, new Object[]{user.getUser_id()});
        return result;
    }
}
