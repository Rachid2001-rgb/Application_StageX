package controllers;
 
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
import model.Users;
import controllers.*;
 
public class LoginDao {
 
public String authenticateUser(Users users)
{
    String userName = users.getEmail();
    String password = users.getPass();
 
    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
 
    String userNameDB = "";
    String passwordDB = "";
    String roleDB = "";
 
    try
    {
        con = DBConnection.createConnection();
        statement = con.createStatement();
        resultSet = statement.executeQuery("select email,pass,role from users");
 
        while(resultSet.next())
        {
            userNameDB = resultSet.getString("email");
            passwordDB = resultSet.getString("pass");
            roleDB = resultSet.getString("role");
 
            if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("admin"))
            return "Admin_Role";
            else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("member"))
            return "Member_Role";
            else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("adherent"))
            return "Adherent_Role";
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    return "Invalid user credentials";
}
}