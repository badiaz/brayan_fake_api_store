import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:brayan_fake_api_store/utils/either.dart';
import 'package:brayan_fake_api_store/classes/classes.dart';

/// URL base de la API Fake Store.
const String baseUrl = 'https://fakestoreapi.com';

/// URL para obtener la lista de productos.
const String getProductsUrl = '$baseUrl/products';

/// URL para obtener las categorías de productos.
const String getProductsCategoriesUrl = '$getProductsUrl/categories';

/// URL para obtener la lista de todos los usuarios.
const String getAllUserUrl = '$baseUrl/users';

/// Función que realiza una solicitud HTTP para obtener la lista de productos.
///
/// Esta función realiza una solicitud GET a la API Fake Store para obtener todos
/// los productos disponibles. En caso de éxito, devuelve un objeto [Right] con
/// la lista de productos ([List<Product>]). Si ocurre un error, devuelve un
/// objeto [Left] con un mensaje de error ([String]).
///
/// - **Retorno**: `Future<Either<String, List<Product>>>`
Future<Either<String, List<Product>>> fetchProducts() async {
  // Realiza una solicitud GET a la URL de productos.
  final response = await http.get(Uri.parse(getProductsUrl));

  // Si el código de estado es 200 (OK), procesa los datos.
  if (response.statusCode == 200) {
    // Convierte el cuerpo de la respuesta (JSON) en una lista de productos.
    List<dynamic> data = jsonDecode(response.body);
    List<Product> products =
        data.map((product) => Product.fromJson(product)).toList();

    // Devuelve la lista de productos utilizando Right.
    return Right(products);
  } else {
    // Si hay un error, devuelve un mensaje con Left.
    return Left('Error al obtener los productos');
  }
}

/// Función que realiza una solicitud HTTP para obtener la lista de categorías de productos.
///
/// Esta función realiza una solicitud GET a la API Fake Store para obtener todas
/// las categorías disponibles. En caso de éxito, devuelve un objeto [Right] con
/// la lista de categorías ([List<Category>]). Si ocurre un error, devuelve un
/// objeto [Left] con un mensaje de error ([String]).
///
/// - **Retorno**: `Future<Either<String, List<Category>>>`
Future<Either<String, List<Category>>> fetchCategories() async {
  // Realiza una solicitud GET a la URL de categorías.
  final response = await http.get(Uri.parse(getProductsCategoriesUrl));

  // Si el código de estado es 200 (OK), procesa los datos.
  if (response.statusCode == 200) {
    // Convierte el cuerpo de la respuesta (JSON) en una lista de categorías.
    List<dynamic> data = jsonDecode(response.body);
    List<Category> categories =
        data.map((category) => Category.fromJson(category)).toList();

    // Devuelve la lista de categorías utilizando Right.
    return Right(categories);
  } else {
    // Si hay un error, devuelve un mensaje con Left.
    return Left('Error al obtener las categorías');
  }
}

/// Función que realiza una solicitud HTTP para obtener la lista de usuarios.
///
/// Esta función realiza una solicitud GET a la API Fake Store para obtener todos
/// los usuarios registrados. En caso de éxito, devuelve un objeto [Right] con
/// la lista de usuarios ([List<User>]). Si ocurre un error, devuelve un
/// objeto [Left] con un mensaje de error ([String]).
///
/// - **Retorno**: `Future<Either<String, List<User>>>`
Future<Either<String, List<User>>> fetchAllUsers() async {
  // Define la URL para obtener la lista de usuarios.
  final url = Uri.parse(getAllUserUrl);

  try {
    // Realiza una solicitud GET a la URL de usuarios.
    final response = await http.get(url);

    // Si el código de estado es 200 (OK), procesa los datos.
    if (response.statusCode == 200) {
      // Convierte el cuerpo de la respuesta (JSON) en una lista de usuarios.
      List<dynamic> data = jsonDecode(response.body);
      List<User> users =
          data.map((userJson) => User.fromJson(userJson)).toList();

      // Devuelve la lista de usuarios utilizando Right.
      return Right(users);
    } else {
      // Si el código de estado no es 200, devuelve un mensaje de error con el código.
      return Left(
          'Error al obtener los usuarios. Código de estado: ${response.statusCode}');
    }
  } catch (e) {
    // Si ocurre un error en la solicitud, lo captura y devuelve un mensaje de error.
    return Left('Error al realizar la solicitud: $e');
  }
}
