import 'dart:io';

void main() {
  mostrarMenu();
}

void mostrarMenu() {
  int opcion = -1;

  while (opcion != 0) {
    print("=================");
    print("Menu de opciones:");
    print("=================");
    print("1 => Registro de notas");
    print("0 => Salir");

    stdout.write("Ingrese una opcion: ");
    opcion = int.parse(stdin.readLineSync().toString());

    switch (opcion) {
      case 1:
        registroNotas();
        break;

      case 0:
        print("Saliendo del programa...");
        break;

      default:
        print("Opcion no valida, intente de nuevo");
    }
  }
}

void registroNotas() {
  print("=======================");
  print("REGISTRO DE NOTAS");
  print("=======================");

  String nombreAlumno;

  stdout.write("Ingrese el nombre del alumno: ");
  nombreAlumno = stdin.readLineSync().toString();

  stdout.write("Ingrese nota EV1: ");
  var ev1 = double.parse(stdin.readLineSync().toString());

  stdout.write("Ingrese nota EV2: ");
  var ev2 = double.parse(stdin.readLineSync().toString());

  stdout.write("Ingrese nota EP: ");
  var ep = double.parse(stdin.readLineSync().toString());

  stdout.write("Ingrese nota EF: ");
  var ef = double.parse(stdin.readLineSync().toString());

  var promedio = (ev1 + ev2 + ep + ef) / 4;

  String estado;

  if (promedio >= 18) {
    estado = "Excelente";
  } else if (promedio >= 16) {
    estado = "BUENO";
  } else if (promedio >= 13) {
    estado = "REGULAR";
  } else {
    estado = "Requiere reforzamiento";
  }

  print("=======================");
  print("DATOS DEL ALUMNO");
  print("=======================");
  print("Nombre del alumno: $nombreAlumno");
  print("EV1: $ev1");
  print("EV2: $ev2");
  print("EP: $ep");
  print("EF: $ef");
  print("Promedio final: $promedio");
  print("Estado: $estado");
}