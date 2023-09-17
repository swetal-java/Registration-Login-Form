package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.webConnection;
import model.userModel;

public class userDao {

	// insert user
	public static void insertUser(userModel um) {
		try {
			Connection connection = webConnection.connectionmethod();
			String sql = "insert into user_crud (name,email,gender,contact,hobbies,address,password) values (?,?,?,?,?,?,?)";
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, um.getName());
			pStatement.setString(2, um.getEmail());
			pStatement.setString(3, um.getGender());
			pStatement.setLong(4, um.getContact());
			pStatement.setString(5, um.getHobby());
			pStatement.setString(6, um.getAddress());
			pStatement.setString(7, um.getPasssword());
			pStatement.executeUpdate();
			System.out.println("user is added...");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// login
	public static userModel loginUser(userModel um) {
		userModel umodel = null;
		try {
			Connection connection = webConnection.connectionmethod();
			String sql = "select * from user_crud where email = ? and password = ?";
			PreparedStatement pStatement = connection.prepareStatement(sql);
			pStatement.setString(1, um.getEmail());
			pStatement.setString(2, um.getPasssword());
			ResultSet rSet = pStatement.executeQuery();
			if (rSet.next()) {
				umodel = new userModel();
				umodel.setId(rSet.getInt("id"));
				umodel.setName(rSet.getString("name"));
				umodel.setEmail(rSet.getString("email"));
				umodel.setAddress(rSet.getString("address"));
				umodel.setPasssword(rSet.getString("password"));
				umodel.setGender(rSet.getString("gender"));
				umodel.setHobby(rSet.getString("hobbies"));
				umodel.setContact(rSet.getLong("contact"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return umodel;
	}

	// get user by id
	public static userModel getDataById(int id) {
		userModel um = null;
		try {
			Connection connection = webConnection.connectionmethod();
			String sqlString = "select * from user_crud where id = ?";
			PreparedStatement pStatement = connection.prepareStatement(sqlString);
			pStatement.setInt(1, id);
			ResultSet rSet = pStatement.executeQuery();
			if (rSet.next()) {
				um = new userModel();
				um.setId(rSet.getInt("id"));
				um.setName(rSet.getString("name"));
				um.setEmail(rSet.getString("email"));
				um.setAddress(rSet.getString("address"));
				um.setPasssword(rSet.getString("password"));
				um.setGender(rSet.getString("gender"));
				um.setHobby(rSet.getString("hobbies"));
				um.setContact(rSet.getLong("contact"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return um;
	}

	// update by id
	public static void updateById(userModel um) {
		try {
			Connection connection = webConnection.connectionmethod();
			String sqlString = "update user_crud set name=?,email=?,address=?,contact=?,gender=?,hobbies=? where id = ?";
			PreparedStatement pStatement = connection.prepareStatement(sqlString);
			pStatement.setString(1, um.getName());
			pStatement.setString(2, um.getEmail());
			pStatement.setString(3, um.getAddress());
			pStatement.setLong(4, um.getContact());
			pStatement.setString(5, um.getGender());
			pStatement.setString(6, um.getHobby());
			pStatement.setInt(7, um.getId());
			pStatement.executeUpdate();
			System.out.println("Data is updated..");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// list of user
	public static List<userModel> getalldata(){
		List<userModel> list = new ArrayList<userModel>();
		try {
			Connection connection = webConnection.connectionmethod();
			String sqlString = "select * from user_crud";
			PreparedStatement pStatement =connection.prepareStatement(sqlString);
			ResultSet resultSet = pStatement.executeQuery();
			while(resultSet.next()) {
				userModel uModel = new userModel();
				uModel.setId(resultSet.getInt("id"));
				uModel.setName(resultSet.getString("name"));
				uModel.setAddress(resultSet.getString("address"));
				uModel.setContact(resultSet.getLong("contact"));
				uModel.setPasssword(resultSet.getString("password"));
				uModel.setGender(resultSet.getString("gender"));
				uModel.setEmail(resultSet.getString("email"));
				uModel.setHobby(resultSet.getString("hobbies"));
				list.add(uModel);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	//delete by user
	public static void deleteUser(int id) {
		try {
			Connection connection = webConnection.connectionmethod();
			String sqString = "delete from user_crud where id=?";
			PreparedStatement pStatement = connection.prepareStatement(sqString);
			pStatement.setInt(1, id);
			pStatement.executeUpdate();
			System.out.println("Data is deleted..");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
