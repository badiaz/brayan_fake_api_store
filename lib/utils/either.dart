//---------------------------------------------------
//CREANDO UN EITHER SIN UTILIZAR NINGUNA DEPENDENCIA
//---------------------------------------------------

/// Definimos una clase genérica [Either] que puede contener un valor de tipo [L] (Left) o [R] (Right).
///
/// La clase [Either] es una abstracción que se usa para representar dos posibles resultados:
/// uno para el caso de error (Left) y otro para el caso de éxito (Right).
abstract class Either<L, R> {
  /// Método [fold] que permite ejecutar una función dependiendo de si el valor
  /// es un caso de error ([Left]) o un caso de éxito ([Right]).
  ///
  /// Toma dos funciones como parámetros:
  /// - [leftFn]: Se ejecuta si la instancia es de tipo [Left].
  /// - [rightFn]: Se ejecuta si la instancia es de tipo [Right].
  ///
  /// Retorna el valor transformado por la función correspondiente.
  T fold<T>(T Function(L) leftFn, T Function(R) rightFn);
}

/// Caso de éxito ([Right]) que contiene un valor del tipo [R].
///
/// Se utiliza para representar un valor válido o una operación que ha sido exitosa.
class Right<L, R> extends Either<L, R> {
  /// El valor que representa el éxito, de tipo [R].
  final R value;

  /// Constructor que recibe el valor exitoso de tipo [R].
  Right(this.value);

  /// Sobrescribe el método [fold] para ejecutar la función [rightFn] cuando la instancia
  /// es un [Right], pasando el valor exitoso a dicha función.
  @override
  T fold<T>(T Function(L) leftFn, T Function(R) rightFn) => rightFn(value);
}

/// Caso de error ([Left]) que contiene un valor del tipo [L].
///
/// Se utiliza para representar un error o un caso no exitoso.
class Left<L, R> extends Either<L, R> {
  /// El valor que representa el error, de tipo [L].
  final L value;

  /// Constructor que recibe el valor de error de tipo [L].
  Left(this.value);

  /// Sobrescribe el método [fold] para ejecutar la función [leftFn] cuando la instancia
  /// es un [Left], pasando el valor del error a dicha función.
  @override
  T fold<T>(T Function(L) leftFn, T Function(R) rightFn) => leftFn(value);
}
