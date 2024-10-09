// Se importa el archivo 'classes.dart' donde se exportan las diferentes clases que representan los Diferentes DTO
// respuestas de la Api.
// Este archivo contiene otras clases o definiciones que se usan aquí,
// como la clase Geolocation.

import 'package:brayan_fake_api_store/classes/classes.dart';

/// La clase [Address] representa una dirección de un usuario.
class Address {
  /// Propiedad [city] (ciudad), que es de tipo String (texto).
  /// Es 'final', lo que significa que una vez que se le asigne un valor, no puede cambiar.
  final String city;

  /// Propiedad [street] (calle), también de tipo String (texto).
  /// Es 'final', por lo tanto, no se puede modificar una vez asignado el valor.
  final String street;

  /// Propiedad [number] (número), de tipo int (entero).
  /// Representa el número de la calle. Es 'final' y no se puede cambiar después de ser asignado.
  final int number;

  /// Propiedad [zipcode] (código postal), de tipo String.
  /// Es 'final', por lo que su valor no se puede modificar una vez que se haya establecido.
  final String zipcode;

  /// Propiedad [geolocation], de tipo 'Geolocation'.
  /// Almacena información de latitud y longitud de la dirección.
  /// También es 'final', por lo que es inmutable.
  final Geolocation geolocation;

  // Constructor de la clase 'Address'. Aquí, cuando creas un objeto de tipo 'Address',
  // se debe proporcionar obligatoriamente los valores para 'city', 'street', 'number',
  // 'zipcode' y 'geolocation' (porque todos son 'required' o requeridos).
  // Esto asegura que no haya objetos de tipo 'Address' sin datos incompletos.
  Address({
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
    required this.geolocation,
  });

  /// Método para convertir un mapa JSON en un objeto Address
  factory Address.fromJson(Map<String, dynamic> json) {
    /// Un 'factory' es un tipo de constructor especial en Dart. Aquí se usa para
    /// crear una instancia de 'Address' a partir de un mapa de datos en formato JSON.
    return Address(
      /// Extrae el valor de 'city' del JSON y lo asigna a la propiedad 'city' de 'Address'.
      city: json['city'],

      /// Extrae el valor de 'street' del JSON y lo asigna a la propiedad 'street' de 'Address'.
      street: json['street'],

      /// Extrae el valor de 'number' del JSON y lo asigna a la propiedad 'number' de 'Address'.
      number: json['number'],

      /// Extrae el valor de 'zipcode' del JSON y lo asigna a la propiedad 'zipcode' de 'Address'.
      zipcode: json['zipcode'],

      /// Llama al método 'fromJson' de la clase 'Geolocation' para convertir la parte de
      /// 'geolocation' en el JSON en un objeto de tipo 'Geolocation' y asignarlo a la propiedad 'geolocation'.
      geolocation: Geolocation.fromJson(json['geolocation']),
    );
  }

  /// Método para convertir un objeto [Address] en un mapa JSON
  Map<String, dynamic> toJson() {
    /// 'toJson' convierte el objeto actual de tipo [Address] en un mapa de datos JSON,
    /// que puede ser fácilmente exportado o enviado, por ejemplo, a una API.
    return {
      /// Asigna el valor de la propiedad [city] al campo 'city' en el JSON resultante.
      'city': city,

      /// Asigna el valor de la propiedad [street] al campo 'street' en el JSON resultante.
      'street': street,

      /// Asigna el valor de la propiedad [number] al campo 'number' en el JSON resultante.
      'number': number,

      /// Asigna el valor de la propiedad [zipcode] al campo 'zipcode' en el JSON resultante.
      'zipcode': zipcode,

      // Convierte el objeto [geolocation] en un mapa JSON utilizando su propio método 'toJson()'
      // y lo asigna al campo [geolocation] en el JSON resultante.
      'geolocation': geolocation.toJson(),
    };
  }
}
