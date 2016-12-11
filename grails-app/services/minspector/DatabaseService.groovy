package minspector

import grails.transaction.Transactional

import java.sql.Connection
import java.sql.DriverManager
import java.sql.ResultSet
import java.sql.SQLException
import java.sql.Statement

@Transactional
class DatabaseService {

    def testConnection() {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/minspector","postgres","postgres");
            conn.close();
            println "success-------------------------------------------------------"
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void selectFact()
    {
        Connection conn = null;
        try {
            String sql = "SELECT * FROM ft_operations"

            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/minspector","postgres","postgres");

            Statement stmt = conn.createStatement();

            ResultSet result = stmt.executeQuery(sql);

            while(rs.next()) {
                //Columna por nombre
                int id = rs.getInt("idft_operation");
                int idaction = rs.getInt("idaction");

                //Display values
                System.out.print("ID: " + id);
                System.out.print(", Age: " + idaction);
            }

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean insertFact()
    {

        return true;
    }

    def getToken(String socialNetwork) {
        String token = "";
        Connection conn = null;
        try {
            String sql = "SELECT * FROM tokens where social_network like \'" + socialNetwork + "\'";

            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/minspector", "postgres", "postgres");

            Statement stmt = conn.createStatement();

            ResultSet result = stmt.executeQuery(sql);

            while (result.next()) {

                token = result.getString("token");
            }

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
