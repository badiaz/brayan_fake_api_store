/// La clase [Geolocation] representa la ubicación geográfica de un punto.
///
/// Contiene dos propiedades:
/// - [lat]: Representa la latitud.
/// - [long]: Representa la longitud.
class Geolocation {
  /// Propiedad [lat] (latitud), que es de tipo String.
  /// Es 'final', lo que significa que no puede cambiar una vez que se le asigna un valor.
  final String lat;

  /// Propiedad [long] (longitud), también de tipo String.
  /// Es 'final', por lo tanto, no se puede modificar una vez asignado el valor.
  final String long;

  /// Constructor de la clase [Geolocation].
  ///
  /// Se requieren los valores para [lat] y [long] cuando se crea una instancia de la clase.
  Geolocation({
    required this.lat,
    required this.long,
  });

  /// Método para convertir un mapa JSON en un objeto [Geolocation].
  ///
  /// Este constructor tipo 'factory' toma un mapa [json] de datos,
  /// que contiene las claves 'lat' y 'long', y los asigna a las propiedades correspondientes.
  factory Geolocation.fromJson(Map<String, dynamic> json) {
    /// Retorna una instancia de [Geolocation] asignando el valor de 'lat' y 'long' del JSON
    /// a las propiedades correspondientes.
    return Geolocation(
      lat: json['lat'],
      long: json['long'],
    );
  }

  /// Método para convertir un objeto [Geolocation] a un mapa JSON.
  ///
  /// Este método convierte la latitud y longitud en un formato de mapa
  /// que luego puede ser enviado o almacenado en formato JSON.
  Map<String, dynamic> toJson() {
    /// Retorna un mapa donde las claves son 'lat' y 'long',
    /// y sus valores son las propiedades de la instancia actual.
    return {
      'lat': lat,
      'long': long,
    };
  }
}
