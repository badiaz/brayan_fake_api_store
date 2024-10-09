# Fake Store API Proyecto etapa 3 del reto Pragma Academy

Este proyecto es un paquete en Dart que interactúa con la [Fake Store API](https://fakestoreapi.com/). El paquete permite obtener productos, categorías y usuarios de la tienda simulada, utilizando solicitudes HTTP. También incluye el manejo de errores utilizando la estructura `Either`.

## Características

- Obtener una lista de productos desde la API.
- Obtener una lista de categorías de productos.
- Obtener una lista de usuarios.
- Manejo de errores y respuestas con la estructura `Either` (implementada manualmente en este caso).

## Dependencias

Este proyecto utiliza las siguientes dependencias:

1. **http**: Para realizar solicitudes HTTP.

## Estructura del proyecto

- **fake_store_api/**
  - **lib/**
    - **classes/**
      - `address.dart` - Define la clase `Address`.
      - `geolocation.dart` - Define la clase `Geolocation`.
      - `category.dart` - Define la clase `Category`.
      - `name.dart` - Define la clase `Name`.
      - `product.dart` - Define la clase `Product`.
      - `user.dart` - Define la clase `User`.
    - **utils/**
      - `either.dart` - Implementación personalizada de `Either` para manejar éxito o error.
    - **api_service.dart** - Funciones para interactuar con la API (productos, categorías, usuarios).
    - `fake_store_api.dart` - Archivo principal que exporta las clases y funciones del paquete.
  - **test/**
    - `api_service_test.dart` - Pruebas unitarias que verifican la funcionalidad de las funciones de la API.

## Cómo ejecutar el proyecto

1. Para utilizar el paquete en un proyecto de Dart, asegúrese de haber seguido los pasos de configuración inicial del SDK de Dart.
2. Importe el paquete en su proyecto de Dart utilizando la importación:

```dart
import 'package:brayan_fake_api_store/brayan_fake_api_store.dart';
