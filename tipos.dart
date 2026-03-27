
import 'dart:io';

//metodo de entrada principal del programa o aplicacion
void main() {
  mostrarMenu();
}

void mostrarMenu(){
  int opcion = -1;
  while (opcion != 0){
    print("=================");
    print("Menu de opciones:");
    print("=================");
    print("1 => tipos de datos");
    print("0 => Salir");
    stdout.write("Ingrese una opcion: ");
    opcion = int.parse(stdin.readLineSync().toString());
    switch (opcion){
      case 1:
        tiposDato();
        break;
      case 0:
        print("Saliendo del programa...");
        break;
      default:
        print("Opcion no valida, intente de nuevo");
    }
  }
}

void tiposDato(){
  print("Trabajando con tipos de datos en Dart");
  String nombreAlumno; //declaracion explicita del tipo de dato, se especifica el tipo de dato al declarar la variable
  print("Registro de Notas");
  print("==================");
  stdout.write("Ingrese el nombre del alumno: ");
  nombreAlumno = stdin.readLineSync().toString();
  stdout.write("Ingrese el promedio general: ");
  var promedioGeneral = double.parse(stdin.readLineSync().toString()); //declaracion implicita, el tipo de dato se infiere a partir del valor asignado
  print("==================");
  print("El nombre del alumno es: $nombreAlumno");
  print("El promedio general del alumno es: $promedioGeneral");

}
