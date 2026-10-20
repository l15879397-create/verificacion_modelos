import 'package:flutter/material.dart';
import 'datos/repositorio_verificaciones.dart';
import 'pantallas/pantalla_inicio.dart';

void main() => runApp(const AplicacionVerificacion());

class AplicacionVerificacion extends StatelessWidget {
  const AplicacionVerificacion({super.key});

  @override
  Widget build(BuildContext context) {
    final repositorio = RepositorioVerificaciones();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Verificación de modelos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: PantallaInicio(repositorio: repositorio),
    );
  }
}
