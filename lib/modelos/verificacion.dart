import 'criterio.dart';

enum EstadoVerificacion {
  aprobada('Aprobado'),
  conObservaciones('Con observaciones'),
  rechazado('Rechazado');

  const EstadoVerificacion(this.texto);
  final String texto;
}

/// Resultado de aplicar la lista de chequeo a un modelo.
class Verificacion {
  Verificacion({
    required this.modelo,
    required this.verificador,
    required this.observaciones,
    required this.fecha,
    required this.criterios,
  });

  final String modelo;
  final String verificador;
  final String observaciones;
  final DateTime fecha;
  final List<Criterio> criterios;

  int get totalCriterios => criterios.length;
  int get criteriosCumplidos => criterios.where((c) => c.cumple).length;

  double get porcentaje => totalCriterios == 0
      ? 0
      : criteriosCumplidos * 100 / totalCriterios;

  EstadoVerificacion get estado {
    if (porcentaje >= 80) return EstadoVerificacion.aprobada;
    if (porcentaje >= 60) return EstadoVerificacion.conObservaciones;
    return EstadoVerificacion.rechazado;
  }

  List<Criterio> get pendientes =>
      criterios.where((c) => !c.cumple).toList();

  String get fechaTexto {
    final dia = fecha.day.toString().padLeft(2, '0');
    final mes = fecha.month.toString().padLeft(2, '0');
    return '$dia/$mes/${fecha.year}';
  }
}
