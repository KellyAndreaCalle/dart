import 'dart:io';
import 'dart:math';

void main() {
  // Bucle principal para mantener el menu hasta que se seleccione la opcion
  while (true) {
    print("======================================");
    print(" Taller Optativa 1 - Versión Dart ");
    print("======================================");
    print("Seleccione el ejercicio a ejecutar:");
    print("1. Positive Power");
    print("2. Double or Triple");
    print("3. Root or Square");
    print("4. Circle Perimeter");
    print("5. Midweek Day");
    print("6. Tax Calculator");
    print("7. Remainder Finder");
    print("8. Sum of Evens");
    print("9. Fraction Difference");
    print("10. String Length");
    print("11. Average of Four");
    print("12. Smallest of Five");
    print("13. Vowel Counter");
    print("14. Factorial Finder");
    print("15. InRange Validator");
    print("0. Salir");
    print("======================================");

    // Se captura el valor que digita el usuario y se manjea mediante un try catch por si se presentan excepciones
    try {
      stdout.write("Ingrese su opcion: ");

      int opcion = int.parse(stdin.readLineSync()!);

      // Se utiliza un switch case para poder ejecutar el ejercicio que corresponda
      switch (opcion) {
        case 0:
          print("Muchas gracias, hasta luego!");
          return; // Termina el programa
        case 1:
          positivePower();
          break;
        case 2:
          doubleOrTriple();
          break;
        case 3:
          rootOrSquare();
          break;
        case 4:
          circlePerimeter();
          break;
        case 5:
          midweekDay();
          break;
        case 6:
          taxCalculator();
          break;
        case 7:
          remainderFinder();
          break;
        case 8:
          sumOfEvens();
          break;
        case 9:
          fractionDifference();
          break;
        case 10:
          stringLength();
          break;
        case 11:
          averageOfFour();
          break;
        case 12:
          smallestOfFive();
          break;
        case 13:
          vowelCounter();
          break;
        case 14:
          factorialFinder();
          break;
        case 15:
          inRangeValidator();
          break;
        default:
          print("Opcion no válida. Intente de nuevo.");
          break;
      }
    } on FormatException {
      print("Error: Debe ingresar un numero válido.");
    } catch (e) {
      print("Ocurrio un error inesperado: $e");
    }

    // pausa para que el usuario pueda ver el resultado.
    print("\nPresione Enter para continuar...");
    stdin.readLineSync();
  }
}

// --- MÉTODOS PARA EL DESARROLLO DE LOS EJERCICIOS ---

// 1. Positive Power
void positivePower() {
  print("\n--- 1. Positive Power ---");
  stdout.write("Ingrese un numero: ");
  double num = double.parse(stdin.readLineSync()!);
  if (num > 0) {
    print("Resultado: ${pow(num, 2)}");
  } else if (num < 0) {
    print("Resultado: Numero negativo.");
  } else {
    print("Resultado: 0");
  }
}

// 2. Double or Triple
void doubleOrTriple() {
  print("\n--- 2. Double or Triple ---");
  stdout.write("Ingrese el primer numero: ");
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo numero: ");
  double num2 = double.parse(stdin.readLineSync()!);
  if (num1 > num2) {
    print("Resultado: ${num1 * 2}");
  } else {
    print("Resultado: ${num2 * 3}");
  }
}

// 3. Root or Square
void rootOrSquare() {
  print("\n--- 3. Root or Square ---");
  stdout.write("Ingrese un numero: ");
  double num = double.parse(stdin.readLineSync()!);
  if (num >= 0) {
    print("Resultado: ${sqrt(num)}");
  } else {
    print("Resultado: ${pow(num, 2)}");
  }
}

// 4. Circle Perimeter
void circlePerimeter() {
  print("\n--- 4. Circle Perimeter ---");
  stdout.write("Ingrese el radio del circulo: ");
  double radio = double.parse(stdin.readLineSync()!);
  double perimetro = 2 * pi * radio;

  print("Resultado: ${perimetro.toStringAsFixed(2)}");
}

// 5. Midweek Day
void midweekDay() {
  print("\n--- 5. Midweek Day ---");
  stdout.write("Ingrese un numero del 1 al 7: ");
  int dia = int.parse(stdin.readLineSync()!);
  String resultado;
  switch (dia) {
    case 1:
      resultado = "Lunes";
      break;
    case 2:
      resultado = "Martes";
      break;
    case 3:
      resultado = "Miercoles";
      break;
    case 4:
      resultado = "Jueves";
      break;
    case 5:
      resultado = "Viernes";
      break;
    default:
      resultado = "Numero fuera del rango laboral.";
  }
  print("Resultado: $resultado");
}

// 6. Tax Calculator
void taxCalculator() {
  print("\n--- 6. Tax Calculator ---");
  stdout.write("Ingrese su salario anual: ");
  double salario = double.parse(stdin.readLineSync()!);
  if (salario > 12000) {
    double excedente = salario - 12000;
    double impuesto = excedente * 0.15;
    print("Resultado: ${impuesto.toStringAsFixed(2)}");
  } else {
    print("Resultado: No debe impuestos.");
  }
}

// 7. Remainder Finder
void remainderFinder() {
  print("\n--- 7. Remainder Finder ---");
  stdout.write("Ingrese el dividendo: ");
  int dividendo = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el divisor: ");
  int divisor = int.parse(stdin.readLineSync()!);
  if (divisor == 0) {
    print("Error: No se puede dividir entre 0.");
  } else {
    int residuo = dividendo % divisor;
    print("Resultado: $residuo");
  }
}

// 8. Sum of Evens
void sumOfEvens() {
  print("\n--- 8. Sum of Evens ---");
  int suma = 0;
  for (int i = 1; i <= 50; i++) {
    if (i % 2 == 0) {
      // Si es par lo añade  a la suma
      suma += i;
    }
  }
  print("Resultado: $suma");
}

// 9. Fraction Difference
void fractionDifference() {
  print("\n--- 9. Fraction Difference ---");
  print("Ingrese la primera fraccion (ej. 1/2):");
  List<String> fraccion1Str = stdin.readLineSync()!.split('/');
  print("Ingrese la segunda fraccion (ej. 1/3):");
  List<String> fraccion2Str = stdin.readLineSync()!.split('/');

  int num1 = int.parse(fraccion1Str[0]);
  int den1 = int.parse(fraccion1Str[1]);
  int num2 = int.parse(fraccion2Str[0]);
  int den2 = int.parse(fraccion2Str[1]);

  if (den1 == 0 || den2 == 0) {
    // Lanzamos un error que será capturado por el 'catch' en main
    throw Exception("El denominador no puede ser cero.");
  }

  int nuevoNum = (num1 * den2) - (num2 * den1);
  int nuevoDen = den1 * den2;

  print("Resultado: $nuevoNum/$nuevoDen");
}

// 10. String Length
void stringLength() {
  print("\n--- 10. String Length ---");
  stdout.write("Ingrese una palabra: ");
  String palabra = stdin.readLineSync()!;
  print("Resultado: ${palabra.length}");
}

// 11. Average of Four
void averageOfFour() {
  print("\n--- 11. Average of Four ---");
  stdout.write("Ingrese el primer numero: ");
  double n1 = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo numero: ");
  double n2 = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el tercer numero: ");
  double n3 = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el cuarto numero: ");
  double n4 = double.parse(stdin.readLineSync()!);

  double promedio = (n1 + n2 + n3 + n4) / 4;
  print("Resultado: $promedio");
}

// 12. Smallest of Five
void smallestOfFive() {
  print("\n--- 12. Smallest of Five ---");

  List<double> numeros = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Ingrese el numero ${i + 1}: ");
    numeros.add(double.parse(stdin.readLineSync()!));
  }
  // Usamos .reduce(min) para encontrar el valor mínimo en la lista

  double minVal = numeros.reduce(min);
  print("Resultado: $minVal");
}

// 13. Vowel Counter
void vowelCounter() {
  print("\n--- 13. Vowel Counter ---");
  stdout.write("Ingrese una palabra: ");
  String palabra = stdin
      .readLineSync()!
      .toLowerCase(); // se convertimos a minusculas
  final vocales = 'aeiouáéíóú'; // Incluimos las tildes
  int contador = 0;
  // se hace la separacion de las letras y contamos si es vocal
  for (var letra in palabra.split('')) {
    if (vocales.contains(letra)) {
      contador++;
    }
  }
  print("Resultado: $contador");
}

// 14. Factorial Finder
void factorialFinder() {
  print("\n--- 14. Factorial Finder ---");
  stdout.write("Ingrese un numero: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num < 0) {
    print("No se puede calcular el factorial de un número negativo.");
    return;
  }

  BigInt factorial = BigInt.one;
  for (int i = num; i > 1; i--) {
    factorial *= BigInt.from(i);
  }
  print("Resultado: $factorial");
}

// 15. InRange Validator
void inRangeValidator() {
  print("\n--- 15. InRange Validator ---");
  stdout.write("Ingrese un numero: ");
  int num = int.parse(stdin.readLineSync()!);
  if (num >= 10 && num <= 20) {
    print("Resultado: Esta en el rango.");
  } else {
    print("Resultado: Fuera del rango.");
  }
}
