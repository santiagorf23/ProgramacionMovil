// Ejercicio 3

bool palindromas (String invertida) {
  invertida = invertida.toLowerCase();
  String palabraInvertida = invertida.split('').reversed.join('');
  return invertida == palabraInvertida;
}
void main () {
  String invertida = 'Oro';
  if (palindromas(invertida)) {
    print('$invertida: Es una palabra palindroma.');
  } else {
    print('$invertida: No es una palabra palindroma.');
  }

}

