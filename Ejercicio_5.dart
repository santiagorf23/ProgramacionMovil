// Ejercicio 5

class Producto {
 String _nombre;
 double _precio;
 int _cantidadEnInventario;

 Producto(this._nombre, this._precio, this._cantidadEnInventario);

 String get nombre => _nombre;
 double get precio => _precio;
 int get cantidadEnInventario => _cantidadEnInventario;

 set nombre(String value) {
    if (value.isNotEmpty) {
      nombre = value;
    }
 }

 set precio(double value) {
    if (value > 0) {
      _precio = value;
    }
 }

 set cantidadEnInventario(int value) {
    if (value >= 0) {
      _cantidadEnInventario = value;
    }
 }

 void comprar(int cantidad) {
    if (cantidad > 0 && cantidad <= _cantidadEnInventario) {
      _cantidadEnInventario -= cantidad;
      print('Compra realizada exitosamente. Cantidad restante en el inventario: $_cantidadEnInventario');
    } else {
      print('No hay suficiente cantidad en el inventario para completar la compra.');
    }
 }

 void vender(int cantidad) {
    if (cantidad > 0) {
      _cantidadEnInventario += cantidad;
      print('Venta realizada exitosamente. Cantidad actualizada en el inventario: $_cantidadEnInventario');
    } else {
      print('La cantidad a vender debe ser mayor a 0.');
    }
 }
 
 void mostrarDetalles() {
    print('Nombre: $nombre, Precio: $_precio, Cantidad en Inventario: $_cantidadEnInventario');
 }
}

void main() {
  Producto manzana = Producto('Arepa', 600, 30);
    manzana.mostrarDetalles();
    manzana.comprar(5);
    manzana.vender(10);
    manzana.mostrarDetalles();
}