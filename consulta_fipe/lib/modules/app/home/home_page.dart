import 'package:consulta_fipe/modules/app/header/header.dart';
import 'package:flutter/material.dart';
import 'body_home/body_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Header(
      child: BodyHome(),
    );
  }
}
