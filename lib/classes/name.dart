/// La clase [Name] representa el nombre de una persona.
///
/// Contiene dos propiedades principales:
/// - [firstname]: Representa el nombre de pila.
/// - [lastname]: Representa el apellido.
class Name {
  /// Propiedad [firstname], que almacena el nombre de la persona.
  /// Es de tipo String y es 'final', lo que significa que no puede cambiar una vez asignada.
  final String firstname;

  /// Propiedad [lastname], que almacena el apellido de la persona.
  /// Es de tipo String y es 'final', por lo tanto, no se puede modificar una vez asignada.
  final String lastname;

  /// Constructor de la clase [Name].
  ///
  /// Se requieren los valores para [firstname] (nombre) y [lastname] (apellido)
  /// cuando se crea una nueva instancia de la clase [Name].
  Name({
    required this.firstname,
    required this.lastname,
  });

  /// Método para convertir un mapa JSON en un objeto [Name].
  ///
  /// Este método toma un mapa de datos en formato JSON, que contiene las claves
  /// 'firstname' y 'lastname', y crea una nueva instancia de la clase [Name].
  factory Name.fromJson(Map<String, dynamic> json) {
    /// Retorna una nueva instancia de [Name], asignando los valores de 'firstname' y 'lastname'
    /// extraídos del mapa JSON a las propiedades respectivas.
    return Name(
      firstname: json['firstname'],
      lastname: json['lastname'],
    );
  }

  /// Método para convertir un objeto [Name] en un mapa JSON.
  ///
  /// Este método convierte las propiedades [firstname] y [lastname] en un mapa JSON,
  /// lo que permite que los datos puedan ser exportados o enviados a través de una API.
  Map<String, dynamic> toJson() {
    /// Retorna un mapa con dos pares clave-valor, donde las claves son 'firstname' y 'lastname'
    /// y sus valores son los correspondientes a las propiedades de la instancia actual.
    return {
      'firstname': firstname,
      'lastname': lastname,
    };
  }
}
