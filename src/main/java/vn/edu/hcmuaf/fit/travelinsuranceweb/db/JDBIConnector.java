package vn.edu.hcmuaf.fit.travelinsuranceweb.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.travelinsurancewebsite.model.User;
import java.sql.SQLException;
import java.util.List;

public class JDBIConnector {
    private static Jdbi jdbi;

    public JDBIConnector() {
    }

    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://" + DBProperties.getDbHost() + ":" + DBProperties.getDbPort() + "/"
                + DBProperties.getDbName());
        dataSource.setUser(DBProperties.getUsername());
        dataSource.setPassword(DBProperties.getPassword());
        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            throw new RuntimeException(throwables);
        }
        jdbi = Jdbi.create(dataSource);

    }


    public static Jdbi get() {
        if (jdbi == null) makeConnect();
        return jdbi;
    }

    public static void main(String[] args) {
        List<User> users = JDBIConnector.get().withHandle(h -> {
            return h.createQuery("SELECT * FROM USERS").mapToBean(User.class).list();
        });
        System.out.println(users);
    }
}
