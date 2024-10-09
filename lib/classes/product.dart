/// La clase [Product] representa un producto en la tienda de la Fake Api Store.
///
/// Un producto tiene varios atributos como el ID, el título, la descripción, el precio,
/// la categoría y la imagen asociada.
class Product {
  /// Propiedad [id], que es de tipo int (entero).
  /// Representa un identificador único para cada producto.
  /// Es 'final', lo que significa que no puede cambiar una vez asignado.
  final int id;

  /// Propiedad [title], que es de tipo String (texto).
  /// Representa el nombre o título del producto.
  /// Es 'final', por lo tanto, no puede modificarse después de asignado.
  final String title;

  /// Propiedad [description], que es de tipo String.
  /// Almacena la descripción del producto, que explica detalles del mismo.
  /// También es 'final' y no puede ser cambiada una vez asignada.
  final String description;

  /// Propiedad [price], que es de tipo double (número decimal).
  /// Representa el precio del producto.
  /// Es 'final', lo que significa que no puede cambiar una vez que se le asigna un valor.
  final double price;

  /// Propiedad [category], que es de tipo String.
  /// Almacena la categoría a la que pertenece el producto.
  /// Es 'final', por lo que no se puede modificar después de ser asignada.
  final String category;

  /// Propiedad [image], que es de tipo String.
  /// Representa la URL de la imagen del producto.
  /// Es 'final' y no puede ser cambiada después de ser asignada.
  final String image;

  /// Constructor de la clase [Product].
  ///
  /// Se requieren los valores para [id], [title], [description], [price], [category] y [image]
  /// cuando se crea una nueva instancia de la clase.
  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
  });

  /// Método para convertir un mapa JSON en un objeto [Product].
  ///
  /// Este método toma un mapa de datos en formato JSON y lo convierte en una nueva
  /// instancia de la clase [Product], asignando los valores del JSON a las propiedades
  /// correspondientes del producto.
  factory Product.fromJson(Map<String, dynamic> json) {
    /// Retorna una nueva instancia de [Product], asignando los valores del JSON
    /// a las propiedades del objeto. Convierte el precio a [double] usando `.toDouble()`
    /// para asegurar que el valor sea decimal.
    return Product(
      id: json['id'], // Asigna el valor de 'id' del JSON a la propiedad [id].
      title: json[
          'title'], // Asigna el valor de 'title' del JSON a la propiedad [title].
      description: json[
          'description'], // Asigna el valor de 'description' del JSON a [description].
      price: json['price']
          .toDouble(), // Convierte el precio a 'double' y lo asigna a [price].
      category: json[
          'category'], // Asigna el valor de 'category' del JSON a [category].
      image:
          json['image'], // Asigna el valor de 'image' (URL) del JSON a [image].
    );
  }

  /// Método para convertir un objeto [Product] en un mapa JSON.
  ///
  /// Este método convierte las propiedades del objeto [Product] en un formato JSON
  /// para que pueda ser enviado o almacenado fácilmente.
  Map<String, dynamic> toJson() {
    /// Retorna un mapa de pares clave-valor donde las claves son los nombres de las propiedades
    /// (como 'id', 'title', 'description') y los valores son los correspondientes a
    /// las propiedades del objeto actual.
    return {
      'id': id, // Asigna el valor de [id] al campo 'id' en el JSON resultante.
      'title':
          title, // Asigna el valor de [title] al campo 'title' en el JSON resultante.
      'description':
          description, // Asigna el valor de [description] al campo 'description' en el JSON.
      'price': price, // Asigna el valor de [price] al campo 'price' en el JSON.
      'category':
          category, // Asigna el valor de [category] al campo 'category' en el JSON.
      'image': image, // Asigna el valor de [image] al campo 'image' en el JSON.
    };
  }
}
