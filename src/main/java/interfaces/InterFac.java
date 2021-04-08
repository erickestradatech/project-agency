package interfaces;

import java.util.List;

import modelo.Fac_cabe;
import modelo.Ped_Deta;
import modelo.Resumen_1;
import modelo.Resumen_2;

public interface InterFac {

    List<Ped_Deta> lisDet_Pedidos(String cad);

    List<Ped_Deta> lisDet_Pedidos2(String cad);

    List<Fac_cabe> listYear();

    List<Resumen_1> lisMes(int an);

    List<Resumen_2> lisMes2(int an);

}
