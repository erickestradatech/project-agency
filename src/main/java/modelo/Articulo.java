package modelo;

public class Articulo {

    private String art_cod;
    private String art_nom;
    private double art_pre;
    private int art_stk;

    public String getArt_cod() {
        return art_cod;
    }

    public void setArt_cod(String art_cod) {
        this.art_cod = art_cod;
    }

    public String getArt_nom() {
        return art_nom;
    }

    public void setArt_nom(String art_nom) {
        this.art_nom = art_nom;
    }

    public double getArt_pre() {
        return art_pre;
    }

    public void setArt_pre(double art_pre) {
        this.art_pre = art_pre;
    }

    public int getArt_stk() {
        return art_stk;
    }

    public void setArt_stk(int art_stk) {
        this.art_stk = art_stk;
    }

}
