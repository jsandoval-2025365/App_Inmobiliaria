package src.org.bytecode.controller;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.fxml.Initializable;
import src.AppInmobiliaria;

public class vistaPrincipalController implements Initializable {

    private AppInmobiliaria escenarioPrincipal;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        
    }
    
     public AppInmobiliaria getEscenarioPrincipal() {
        return escenarioPrincipal;
    }

    public void setEscenarioPrincipal(AppInmobiliaria escenarioPrincipal) {
        this.escenarioPrincipal = escenarioPrincipal;
    }
 
    
    

}
