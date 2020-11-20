package utils;

import java.sql.*;

public class testMain {
    public static void main(String[] args) {

        try {
            Connection con = DBUtil.getConnection();
            String sql = "select * from user_number";
            PreparedStatement ptmt = con.prepareStatement(sql);
            ResultSet rs = ptmt.executeQuery();
            while(rs.next()){
                String name = rs.getString("user_name");
                System.out.println(name);
            }
            DBUtil.close(rs,ptmt,con);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

}

