package minspector

import grails.transaction.Transactional

import java.sql.Connection
import java.sql.DriverManager
import java.sql.SQLException

@Transactional
class DBManagerService {

    def testConnection() {


        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/MInspector","postgres","");
            conn.close();
            println "success-------------------------------------------------------"
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
