// Ejercicio 4

void main() {
 List<String> lista = ['manzana', '021laptop', 'zapato', '&2top'];

 lista.sort((a, b) {
    String aMin = a.toLowerCase();
    String bMin = b.toLowerCase();
    int comp = aMin.compareTo(bMin);
    if (comp == 0) {
      return a.compareTo(b);
    }
    return comp;
 });

 print(lista); 
}