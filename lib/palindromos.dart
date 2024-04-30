bool esPalindromo(String texto) {
  texto = texto.toLowerCase().replaceAll(RegExp(r'[^\w]'), '');

  for (int i = 0; i < texto.length ~/ 2; i++) {
    if (texto[i] != texto[texto.length - i - 1]) {
      return false;
    }
  }
  return true;
}

void main() {
  List<dynamic> listatextos = [
    "reconocer",
    "anilina",
    "oto",
    "radar",
    "ala",
    "oso",
    "arenera",
    "néuquén",
    "la ruta natural",
    "la tele letal",
    "anita atina",
    "a mamá Roma le aviva el amor a mamá",
    "¡Anita lava la tina!",
    "Dábale arroz a la zorra el abad",
    "A mamá Roma le aviva el amor a mamá",
  ];

  for (var textos in listatextos) {
    if (textos is String) {
      if (esPalindromo(textos)) {
        print("'$textos' es un palíndromo.");
      } else {
        print("'$textos' no es un palíndromo.");
      }
    } else {
      print(
          "'$textos' no se puede verificar como palíndromo.");
    }
  }
}
