
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

public class AppInmobiliaria extends Application{

    private final String PAQUETE_VISTA = "/src/org/bytecode/view/";
    private Stage escenarioPrincipal;
    private Scene scene;


    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        this.escenarioPrincipal = escenarioPrincipal;
        this.escenarioPrincipal.setTitle("AppInmobiliaria-ByteCode");
        escenarioPrincipal.getIcons().add(new Image("/src/org/bytecode/image/logo"));
        vistaPrincipal();
        escenarioPrincipal.show();
      
    }

    public void vistaPrincipal(){
        try{
            vistaPirncipalController ventana = (vistaPirncipalController) cambiarEscena("");
            ventana.setEscenarioPrincipal(this);
            
        }catch(Exception e){
            e.printStackTrace();
        }

    }

    
    
    public Initializable cambiarEscena(String fxml , int ancho , int alto) throws IOException{
        Initializable resultado = null;
        FXMLLoader cargadorFXML = new FXMLLoader();
        InputStream archivo = Principal.class.getResourceAsStream(PAQUETE_VISTA+fxml);
        cargadorFXML.setBuilderFactory(new JavaFXBuilderFactory());
        cargadorFXML.setLocation(Principal.class.getResource(PAQUETE_VISTA+fxml));
        escena = new Scene((AnchorPane)cargadorFXML.load(archivo),ancho,alto);
        escenarioPrincipal.setScene(escena);
        escenarioPrincipal.sizeToScene();
        resultado = (Initializable)cargadorFXML.getController();
        return resultado;
    }

}