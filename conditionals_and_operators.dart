import 'dart:io';

void main() {
  print("ingrese el primer numero:");
  double? a = double.tryParse(stdin.readLineSync()!);
  print("ingrese el segundo numero:");
  double? b = double.tryParse(stdin.readLineSync()!);

  const indeterminado = "indeterminado";
  if (a != null && b != null) {
    print(
      "suma: ${a + b}, resta: ${a - b}, multiplicacion: ${a * b}, division: ${b != 0 ? a / b : indeterminado}",
    );
  } else {
    print("por favor ingrese valores numericos validos");
  }
}
