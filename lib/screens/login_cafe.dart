import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class LoginCafeScreen extends StatelessWidget {
   
  const LoginCafeScreen({super.key});

  final Color plomoColor = Colors.grey;

  void displayLoginAlertAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Inicio de Sesión'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('¿Seguro de iniciar sesión?'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancelar',
              style: TextStyle(fontSize: 18),
            ),
          ),
          TextButton(
            onPressed: () {
              // Aquí puedes agregar la lógica para iniciar sesión
              Navigator.pop(context);
            },
            child: const Text(
              'Aceptar',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  void displayLoginAlertIOS(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Inicio de Sesión'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('¿Seguro de iniciar sesión?'),
              SizedBox(height: 15),
              FlutterLogo(size: 80),
            ],
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            CupertinoDialogAction(
              onPressed: () {
                // Aquí puedes agregar la lógica para iniciar sesión
                Navigator.pop(context);
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cafe',
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Nuestro mejor café del mundo',
                  style: TextStyle(
                    fontSize: 15,
                    color: plomoColor,
                  ),
                ),
              ],
            ),
            Image.asset('assets/milk-mocha.gif'),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Mostrar la alerta personalizada dependiendo del sistema operativo
                    if (Platform.isAndroid) {
                      displayLoginAlertAndroid(context);
                    } else {
                      displayLoginAlertIOS(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 20,
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 20,
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Registrate',
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
