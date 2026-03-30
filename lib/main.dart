// Comentario:
// En el curso de flutter quedé en la parte de la implementación del mapa de Google.
// Personalmente ya se hacer esto y debido a que no tengo créditos disponibles para usar la API de Google Maps,
// decidí no implementar esta parte y dejarla para el futuro.
// De todas formas, el resto de la aplicación está completamente funcional y se pueden agregar lugares con su
// respectiva imagen y ubicación (aunque esta última no se muestra en ningún lado).
// En el futuro, cuando tenga créditos disponibles, planeo implementar la parte del mapa
// para mostrar la ubicación de los lugares agregados.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:favorite_places/screens/places.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 247),
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.surface,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
  ),
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: theme,
      home: const PlacesScreen(),
    );
  }
}
