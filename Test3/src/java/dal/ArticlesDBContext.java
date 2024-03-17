/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Article;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class ArticlesDBContext extends DBContext<Article>{
    public ArrayList<Article> list() {
        ArrayList<Article> article = new ArrayList<>();
        try {
            String sql = "SELECT aid, title, published_date,online FROM Article";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Article a = new Article();
                a.setAid(rs.getInt("aid"));
                a.setTitle(rs.getString("title"));
                a.setPublished_date(rs.getDate("published_date"));
                a.setOnline(rs.getBoolean("online"));
                article.add(a);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ArticlesDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return article;
    }

    @Override
    public void insert(Article entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Article entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Article entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Article get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
