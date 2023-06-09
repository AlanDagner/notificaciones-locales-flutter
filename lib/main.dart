import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:notificaciones_locales/services/notification_services.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const PaginaPrincipal(),
      ),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Aqui debemos mostramos la notificación
          mostrarNotificacion();
        },
        child: Text('Mostrar la notificación'),
      ),
    );
  }
}
