# 📍 Favorite Places

Una aplicación móvil multiplataforma desarrollada con **Flutter** para gestionar y guardar tus lugares favoritos. Permite agregar, visualizar y gestionar lugares con una interfaz moderna y responsiva.

## ✨ Características

- ✅ Agregar nuevos lugares favoritos
- ✅ Visualizar lista de lugares
- 📸 Soporte para imágenes (en desarrollo)
- 🎨 Interfaz moderna con tema oscuro
- 📱 Compatible con Android, iOS, Web, Windows, macOS y Linux
- ⚡ State management con Riverpod
- 🎯 Tipografía personalizada con Google Fonts

## 📋 Requisitos Previos

- **Flutter SDK**: ^3.10.8
- **Dart**: 3.10.8 o superior
- **Android Studio** (para Android) o **Xcode** (para iOS)
- Git

## 🚀 Instalación

1. **Clonar el repositorio**

   ```bash
   git clone <url-del-repositorio>
   cd favorite_places
   ```

2. **Instalar dependencias**

   ```bash
   flutter pub get
   ```

3. **Ejecutar la aplicación**

   ```bash
   flutter run
   ```

4. **Compilar para producción**

   ```bash
   # Android
   flutter build apk

   # iOS
   flutter build ios

   # Web
   flutter build web
   ```

## 📁 Estructura del Proyecto

```
lib/
├── main.dart                 # Punto de entrada de la aplicación
├── models/
│   └── place.dart           # Modelo de datos para Place
├── providers/
│   └── user_places.dart     # Notifier con Riverpod para gestionar lugares
├── screens/
│   ├── places.dart          # Pantalla principal con lista de lugares
│   ├── add_place.dart       # Pantalla para agregar nuevos lugares
│   ├── place_detail.dart    # Pantalla de detalle del lugar
│   └── image_input.dart     # Widget para entrada de imágenes
└── widgets/
    ├── places_list.dart     # Widget lista de lugares
    └── image_input.dart     # Widget personalizado para imágenes
```

## 📦 Dependencias Principales

- **flutter_riverpod** (^3.2.1): Gestión de estado reactiva
- **google_fonts** (^7.0.0): Tipografía personalizada
- **uuid** (^4.5.3): Generación de IDs únicos
- **cupertino_icons** (^1.0.8): Iconos estilo iOS

## 🏗️ Arquitectura

### Models (`models/`)

Define las estructuras de datos de la aplicación, como el modelo `Place`.

### Providers (`providers/`)

Contiene la lógica de negocio y gestión de estado con Riverpod. `UserPlacesNotifier` gestiona la lista de lugares.

### Screens (`screens/`)

Pantallas principales de la aplicación que construyen la UI.

### Widgets (`widgets/`)

Componentes reutilizables en diferentes pantallas.

## 🎨 Tema y Estilos

La aplicación usa un tema oscuro personalizado con:

- Color seed: Púrpura (`#660AF7`)
- Tipografía: Ubuntu Condensed y Ubuntu
- Tema: Material 3

## 📝 Convenciones de Código

- **Nombrado en inglés**: Variables, funciones y clases
- **StatelessWidget/StatefulWidget**: Para componentes simples o con estado local
- **ConsumerWidget/ConsumerStatefulWidget**: Para acceso a providers
- **PascalCase**: Nombres de clases
- **camelCase**: Variables y funciones

## 🐛 Troubleshooting

Si encuentras problemas:

1. **Limpiar cache**:

   ```bash
   flutter clean
   flutter pub get
   ```

2. **Actualizar dependencias**:

   ```bash
   flutter pub upgrade
   ```

3. **Revisar versión de Flutter**:
   ```bash
   flutter --version
   ```

## 📚 Recursos Útiles

- [Documentación Flutter](https://docs.flutter.dev/)
- [Riverpod Documentation](https://riverpod.dev/)
- [Google Fonts Flutter](https://pub.dev/packages/google_fonts)

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

## 👤 Autor

Desarrollado como proyecto de aprendizaje en Flutter.
