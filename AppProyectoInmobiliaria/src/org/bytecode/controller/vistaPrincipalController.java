package src.org.bytecode.controller;

import java.net.URL;
import java.util.ResourceBundle;

import AppInmobiliaria;
import javafx.fxml.Initializable;

public class vistaPrincipalController implements Initializable {

    private Model_AppInmobiliaria escenarioPrincipal;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        
    }
    
     public Model_AppInmobiliaria getEscenarioPrincipal() {
        return escenarioPrincipal;
    }

    public void setEscenarioPrincipal(Model_AppInmobiliaria escenarioPrincipal) {
        this.escenarioPrincipal = escenarioPrincipal;
    }
 
    
    

}
