// Importa el archivo 'classes.dart', que contiene las definiciones de las clases 'Name' y 'Address'.
// Estas clases son utilizadas dentro de 'User' para almacenar datos relacionados con el nombre y la dirección.

import 'package:brayan_fake_api_store/classes/classes.dart';

/// La clase [User] representa un usuario de la tienda en línea.
///
/// Un usuario tiene varios atributos como el ID, email, nombre de usuario, contraseña,
/// nombre completo, dirección y número de teléfono.
class User {
  /// Propiedad [id], que es de tipo int (entero).
  /// Representa un identificador único para cada usuario.
  /// Es 'final', lo que significa que no puede cambiar una vez asignado.
  final int id;

  /// Propiedad [email], que es de tipo String (texto).
  /// Almacena el correo electrónico del usuario.
  /// Es 'final', por lo tanto, no puede cambiar después de ser asignado.
  final String email;

  /// Propiedad [username], que es de tipo String.
  /// Representa el nombre de usuario para acceder a la cuenta.
  /// También es 'final' y no puede modificarse una vez asignado.
  final String username;

  /// Propiedad [password], que es de tipo String.
  /// Almacena la contraseña del usuario.
  /// Es 'final', por lo que no puede cambiarse una vez que se le asigna un valor.
  final String password;

  /// Propiedad [name], que es de tipo [Name].
  /// Almacena el nombre completo del usuario, que incluye el primer nombre y el apellido.
  /// Es 'final', lo que significa que no se puede modificar después de ser asignado.
  final Name name;

  /// Propiedad [address], que es de tipo [Address].
  /// Almacena la dirección del usuario, que incluye la ciudad, calle, número y código postal.
  /// Es 'final', por lo que no puede cambiar una vez asignada.
  final Address address;

  /// Propiedad [phone], que es de tipo String.
  /// Almacena el número de teléfono del usuario.
  /// Es 'final', lo que significa que no puede modificarse una vez asignado.
  final String phone;

  /// Constructor de la clase [User].
  ///
  /// Se requieren los valores para [id], [email], [username], [password], [name],
  /// [address] y [phone] cuando se crea una nueva instancia de la clase.
  User({
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.address,
    required this.phone,
  });

  /// Método para convertir un mapa JSON en un objeto [User].
  ///
  /// Este método toma un mapa de datos en formato JSON y lo convierte en una nueva
  /// instancia de la clase [User], asignando los valores del JSON a las propiedades
  /// correspondientes del usuario.
  factory User.fromJson(Map<String, dynamic> json) {
    /// Retorna una nueva instancia de [User], asignando los valores del JSON a las propiedades.
    /// Convierte los datos relacionados con el nombre y la dirección utilizando los métodos
    /// `fromJson` de las clases [Name] y [Address].
    return User(
      id: json['id'], // Asigna el valor de 'id' del JSON a la propiedad [id].
      email: json[
          'email'], // Asigna el valor de 'email' del JSON a la propiedad [email].
      username: json[
          'username'], // Asigna el valor de 'username' del JSON a [username].
      password: json[
          'password'], // Asigna el valor de 'password' del JSON a [password].
      name: Name.fromJson(json[
          'name']), // Convierte el valor de 'name' del JSON en un objeto [Name].
      address: Address.fromJson(json[
          'address']), // Convierte el valor de 'address' del JSON en un objeto [Address].
      phone: json['phone'], // Asigna el valor de 'phone' del JSON a [phone].
    );
  }

  /// Método para convertir un objeto [User] en un mapa JSON.
  ///
  /// Este método convierte las propiedades del objeto [User] en un formato JSON
  /// para que pueda ser enviado o almacenado fácilmente.
  Map<String, dynamic> toJson() {
    /// Retorna un mapa de pares clave-valor donde las claves son los nombres de las propiedades
    /// (como 'id', 'email', 'username') y los valores son los correspondientes a
    /// las propiedades del objeto actual.
    return {
      'id': id, // Asigna el valor de [id] al campo 'id' en el JSON resultante.
      'email': email, // Asigna el valor de [email] al campo 'email' en el JSON.
      'username':
          username, // Asigna el valor de [username] al campo 'username' en el JSON.
      'password':
          password, // Asigna el valor de [password] al campo 'password' en el JSON.
      'name': name
          .toJson(), // Convierte el objeto [name] a JSON utilizando su método 'toJson()'.
      'address': address
          .toJson(), // Convierte el objeto [address] a JSON utilizando su método 'toJson()'.
      'phone': phone, // Asigna el valor de [phone] al campo 'phone' en el JSON.
    };
  }
}
