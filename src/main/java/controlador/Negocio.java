package controlador;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import interfaces.InterFac;
import modelo.Fac_cabe;
import modelo.Ped_Deta;
import modelo.Resumen_1;
import modelo.Resumen_2;
import util.MySQLConexion;

public class Negocio implements InterFac {

    @Override
    public List<Ped_Deta> lisDet_Pedidos(String cod) {

        List<Ped_Deta> lis = new ArrayList<>();
        Connection conn = null;

        try {

            conn = MySQLConexion.getConexion();
            String sql = "SELECT DISTINCT a.art_cod,a.art_nom,a.art_pre,fd.art_can,a.art_pre*fd.art_can\n"
                    + "FROM fac_deta fd\n" + "JOIN fac_cabe fc ON fc.fac_num = fd.fac_num\n"
                    + "JOIN articulos a ON a.art_cod = fd.art_cod\n" + "WHERE YEAR(fc.fac_fec)=?";

            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, cod);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Ped_Deta a = new Ped_Deta();
                a.setArt_cod(rs.getString(1));
                a.setArt_nom(rs.getString(2));
                a.setArt_pre(rs.getDouble(3));
                a.setArt_can(rs.getInt(4));
                a.setPed_total(rs.getDouble(5));
                lis.add(a);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {

            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }

        return lis;

    }

    @Override
    public List<Fac_cabe> listYear() {

        List<Fac_cabe> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "SELECT distinct DATE_FORMAT(fac_fec, \"%Y\") FROM fac_cabe";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Fac_cabe a = new Fac_cabe();
                a.setFac_fec(rs.getString(1));

                lis.add(a);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }

        return lis;
    }

    @Override
    public List<Resumen_1> lisMes(int an) {

        List<Resumen_1> lis = new ArrayList<>();
        Connection conn = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "{call spmes(?)} ";
            CallableStatement st = conn.prepareCall(sql);
            st.setInt(1, an);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Resumen_1 a = new Resumen_1();
                a.setMes(rs.getInt(1));
                a.setCantidad(rs.getInt(2));
                a.setTotal(rs.getDouble(3));
                lis.add(a);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {

            try {

                if (conn != null) {
                    conn.close();
                }

            } catch (Exception e2) {

            }
        }

        return lis;

    }

    @Override
    public List<Ped_Deta> lisDet_Pedidos2(String cad) {

        List<Ped_Deta> lis = new ArrayList<>();
        Connection conn = null;

        try {

            conn = MySQLConexion.getConexion();
            String sql = "SELECT DISTINCT a.art_cod,a.art_nom,a.art_pre,fd.art_can,a.art_pre*fd.art_can\n"
                    + "FROM fac_deta fd\n" + "JOIN fac_cabe fc ON fc.fac_num = fd.fac_num\n"
                    + "JOIN articulos a ON a.art_cod = fd.art_cod\n"
                    + "WHERE YEAR(fc.fac_fec)=?  ORDER BY fd.art_can DESC\n" + "LIMIT 10";

            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, cad);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Ped_Deta a = new Ped_Deta();
                a.setArt_cod(rs.getString(1));
                a.setArt_nom(rs.getString(2));
                a.setArt_pre(rs.getDouble(3));
                a.setArt_can(rs.getInt(4));
                a.setPed_total(rs.getDouble(5));
                lis.add(a);
            }

        } catch (Exception ex) {

            ex.printStackTrace();
        } finally {

            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }

        return lis;
    }

    @Override
    public List<Resumen_2> lisMes2(int an) {

        List<Resumen_2> lis = new ArrayList<>();
        Connection conn = null;
        try {
            conn = MySQLConexion.getConexion();
            String sql = "{call spyear(?)} ";
            CallableStatement st = conn.prepareCall(sql);
            st.setInt(1, an);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Resumen_2 a = new Resumen_2();
                a.setCodigo(rs.getString(1));
                a.setNombre(rs.getString(2));
                a.setCantidad(rs.getInt(3));
                lis.add(a);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {

            try {

                if (conn != null) {
                    conn.close();
                }

            } catch (Exception e2) {

            }
        }

        return lis;
    }

}
