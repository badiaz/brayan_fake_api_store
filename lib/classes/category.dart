/// la clase [Category] representa una categoría de producto.
///
/// La categoría se define principalmente por un nombre [name].
class Category {
  /// Propiedad [name], que es de tipo String (texto).
  /// Es 'final', lo que significa que una vez que se le asigne un valor, no puede cambiar.
  final String name;

  /// Constructor de la clase [Category].
  /// El valor de [name] es obligatorio debido al uso de `required`.
  const Category({
    required this.name,
  });

  /// Método para convertir una cadena de texto JSON en un objeto [Category].
  /// En este caso, como las categorías en JSON son solo cadenas de texto,
  /// el método toma directamente esa cadena y la asigna al campo [name].
  /// esto se realizó con el fin de tener un modelo para representar las categorias
  factory Category.fromJson(String category) {
    /// Retorna una nueva instancia de [Category], asignando la cadena [category]
    /// directamente a la propiedad [name].
    return Category(name: category);
  }

  /// Método para convertir un objeto [Category] a un formato JSON (cadena de texto).
  /// En este caso, simplemente devuelve el valor de [name].
  String toJson() {
    /// Retorna el nombre de la categoría como una cadena de texto.
    return name;
  }
}
