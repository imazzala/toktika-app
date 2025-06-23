# Toktika App

Este proyecto es una aplicación tipo TikTok creada utilizando Flutter y aplicando conceptos de Clean Architecture, donde se emplean videos locales como contenido principal.

## Arquitectura

La aplicación sigue los principios de **Clean Architecture** y utiliza el patrón **Provider** para la gestión de estado. La estructura del proyecto está organizada en capas, separando la lógica de presentación, dominio y datos:

- **main.dart**: Inicia la app, configura el tema y los providers, y define la pantalla principal.
- **/presentation/providers**: Providers para la gestión de estado.
- **/infrastructure/datasources**: Implementación de fuentes de datos (ejemplo: videos locales).
- **/infrastructure/repositories**: Implementación de repositorios para acceder a la capa de datos.
- **/config/theme**: Configuración de tema y estilos globales.

Esto permite escalar y mantener el proyecto fácilmente.

## Versión de Flutter

El proyecto requiere una versión mínima de Dart `>=2.19.0 <3.0.0`, lo que corresponde a **Flutter 3.7.x** en adelante. Se recomienda usar la versión estable más reciente compatible.

## Librerías principales

En el archivo `pubspec.yaml` se definen las siguientes dependencias principales:

- **flutter**: SDK oficial de Flutter.
- **provider**: ^6.0.5 – Gestión de estado.
- **animate_do**: ^3.0.2 – Animaciones sencillas.
- **intl**: ^0.18.1 – Internacionalización.
- **video_player**: ^2.6.1 – Reproducción de video.
- **cupertino_icons**: ^1.0.2 – Íconos estilo iOS.

## Clonar y ejecutar el repositorio

Sigue estos pasos para clonar y levantar el proyecto localmente:

```bash
# Clona el repositorio
git clone https://github.com/imazzala/toktika-app.git

# Entra a la carpeta del proyecto
cd toktika-app

# Instala las dependencias de Flutter
flutter pub get

# Ejecuta la aplicación
flutter run
