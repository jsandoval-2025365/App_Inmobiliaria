package src.org.bytecode.model;
public class Model_AppInmobiliaria {
    private int idVehiculo;
    private String placa;
    private String marca;
    private String modelo;
    private String anio;
    private String color;
    private String tipo_de_vehiculo;
    private String detallesVehiculo;

    public Model_AppInmobiliaria() {
    }

    public Model_AppInmobiliaria(int idVehiculo, String placa, String marca, String modelo,String anio,String color, String tipo_de_vehiculo, String detallesVehiculo) {
        this.idVehiculo = idVehiculo;
        this.placa = placa;
        this.marca = marca;
        this.modelo = modelo;
        this.anio = anio;
        this.color = color;
        this.tipo_de_vehiculo = tipo_de_vehiculo;
        this.detallesVehiculo = detallesVehiculo;

    }

    public int getIdVehiculo() {
        return idVehiculo;
    }

    public void setIdVehiculo(int idVehiculo) {
        this.idVehiculo = idVehiculo;
    }
    
    public String getPlaca() {
        return placa;
    }
    
    public void setPlaca(String placa) {
        this.placa = placa;
    }
    
    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public String getAnio() {
        return anio;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getColor() {
        return color;
    }

    public void setTipo_de_vehiculo(String tipo_de_vehiculo) {
        this.tipo_de_vehiculo = tipo_de_vehiculo;
    }

    public String getTipo_de_vehiculo() {
        return tipo_de_vehiculo;
    }

    public void setDetallesVehiculo(String detallesVehiculo) {
        this.detallesVehiculo = detallesVehiculo;
    }

    public String getDetallesVehiculo() {
        return detallesVehiculo;
    }


        
}