package utils;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
    public static List<Student> getStudents()
    {
        List<Student> students = new ArrayList<Student>();
        Connection connection = DBUtil.getConnection();
        PreparedStatement statement = null;
        try {

            statement = connection.prepareCall("select * from user_number");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next())
            {
                String name = resultSet.getString("user_name");
                int number = resultSet.getInt("user_number");

                Student student = new Student();
                student.setName(name);
                student.setNumber(number);


                students.add(student);
            }
            DBUtil.close(resultSet, statement, connection);
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return students;
    }


//    public static void main(String[] args) {
//        List<Student> students = getStudents();
//        for (Student student : students)
//        {
//            System.out.println(student);
//        }
//    }
}
