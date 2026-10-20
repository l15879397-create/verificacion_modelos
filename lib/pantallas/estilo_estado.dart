import 'package:flutter/material.dart';
import '../modelos/verificacion.dart';

Color colorEstado(EstadoVerificacion estado) {
  switch (estado) {
    case EstadoVerificacion.aprobada:
      return Colors.green;
    case EstadoVerificacion.conObservaciones:
      return Colors.orange;
    case EstadoVerificacion.rechazado:
      return Colors.red;
  }
}

IconData iconoEstado(EstadoVerificacion estado) {
  switch (estado) {
    case EstadoVerificacion.aprobada:
      return Icons.check_circle;
    case EstadoVerificacion.conObservaciones:
      return Icons.warning_amber;
    case EstadoVerificacion.rechazado:
      return Icons.cancel;
  }
}
