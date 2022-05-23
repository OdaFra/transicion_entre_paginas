import 'package:app_transicion/pages/pagina2_page.dart';
import 'package:flutter/material.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pagina 1'),
      ),
      body: const Center(
        child: Text('Pagina 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _crearRuta());
        },
        child: const Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }

  Route _crearRuta() {
    return PageRouteBuilder(
        pageBuilder: (context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            Pagina2Page(),
        transitionDuration: const Duration(seconds: 1),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curvedAnimation =
              CurvedAnimation(parent: animation, curve: Curves.easeInOut);

          // return SlideTransition(
          //   position: Tween<Offset>(begin: Offset(0.0, -1.0), end: Offset.zero)
          //       .animate(curvedAnimation),
          //   child: child,
          // );

          // return ScaleTransition(
          //     scale:
          //         Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          //     child: child);

          // return RotationTransition(
          //   turns: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          //   child: child,
          // );
          // return FadeTransition(
          //   opacity:
          //       Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          //   child: child,
          // );

          return RotationTransition(
            turns: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
            child: FadeTransition(
              opacity:
                  Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
              child: child,
            ),
          );
        });
  }
}
