import 'package:flutter_test/flutter_test.dart';
import 'package:brayan_fake_api_store/brayan_fake_api_store.dart';

/// Función principal que agrupa las pruebas unitarias para el servicio de API.
/// Se utilizan varias pruebas para verificar el comportamiento de las funciones
/// `fetchProducts`, `fetchCategories` y `fetchAllUsers`.
void main() {
  /// Agrupamos las pruebas relacionadas bajo el grupo 'API Service Tests'.
  group('API Service Tests', () {
    /// Prueba para verificar que `fetchProducts` devuelve una lista de productos.
    ///
    /// La prueba espera que se devuelva una lista de objetos `Product` y que esta lista
    /// no esté vacía. Si la solicitud falla, la prueba reportará el error.
    test('fetchProducts debería devolver una lista de productos', () async {
      // Llama a la función fetchProducts
      final result = await fetchProducts();

      // Usa fold para manejar el resultado (éxito o error)
      result.fold(
        (error) => fail(
            'La solicitud falló con error: $error'), // Falla la prueba si hay un error
        (products) {
          // Verifica que sea una lista de Product
          expect(products, isA<List<Product>>());

          // Verifica que la lista no esté vacía
          expect(products.isNotEmpty, true);
        },
      );
    });

    /// Prueba para verificar que `fetchCategories` devuelve una lista de categorías.
    ///
    /// La prueba espera que se devuelva una lista de objetos `Category` y que esta lista
    /// no esté vacía. Si la solicitud falla, la prueba reportará el error.
    test('fetchCategories debería devolver una lista de categorías', () async {
      // Llama a la función fetchCategories
      final result = await fetchCategories();

      // Usa fold para manejar el resultado (éxito o error)
      result.fold(
        (error) => fail(
            'La solicitud falló con error: $error'), // Falla la prueba si hay un error
        (categories) {
          // Verifica que sea una lista de Category
          expect(categories, isA<List<Category>>());

          // Verifica que la lista no esté vacía
          expect(categories.isNotEmpty, true);
        },
      );
    });

    /// Prueba para verificar que `fetchAllUsers` devuelve una lista de usuarios.
    ///
    /// La prueba espera que se devuelva una lista de objetos `User` y que esta lista
    /// no esté vacía. Si la solicitud falla, la prueba reportará el error.
    test('fetchAllUsers debería devolver una lista de usuarios', () async {
      // Llama a la función fetchAllUsers
      final result = await fetchAllUsers();

      // Usa fold para manejar el resultado (éxito o error)
      result.fold(
        (error) => fail(
            'La solicitud falló con error: $error'), // Falla la prueba si hay un error
        (users) {
          // Verifica que sea una lista de User
          expect(users, isA<List<User>>());

          // Verifica que la lista no esté vacía
          expect(users.isNotEmpty, true);
        },
      );
    });
  });
}
