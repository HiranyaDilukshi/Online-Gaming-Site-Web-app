package com.oop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbconnect {
private static String url = "jdbc:mysql://localhost:3306/hotel";
private static String username = "root";
private static String password = "";
private static Connection con; //static variable declare
//create database connection
// This works according to singleton pattern
private dbconnect() {
}
/**
* @return Connection this returns SQL connection for MySql Database
*
* @throws ClassNotFoundException
* - Thrown when an application tries to load in a class through
* its string name
* @throws SQLException
* - An exception that provides information on a database access
* error or other errors
*/
public static Connection getConnection() throws ClassNotFoundException, SQLException {
/*
* This create new connection objects when connection is closed or it is
* null
*/
if (con == null || con.isClosed()) {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url, username, password);

 }
return con;
}
}