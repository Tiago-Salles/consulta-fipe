import 'package:consulta_fipe/modules/app/controllers/app_controller.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  final FipeController controller = FipeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.indigo[600],
        title: Text(
          "Consulta Fipe",
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w900, color: Colors.white),
        ),
      ),
      body: child,
    );
  }
}
