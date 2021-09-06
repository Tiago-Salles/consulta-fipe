import 'package:consulta_fipe/modules/app/repositories/fipe_repository.dart';
import 'package:flutter/material.dart';

class FipeController extends ChangeNotifier {
  FipeRepository _fipeRepository = FipeRepository();
  TextEditingController textController = TextEditingController();

  Future consultingFipe() async {
    try {
      _fipeRepository.consultFipe(textController.text);
    } catch (e) {
      print(e);
    }
  }

  buildScreen() {
    var future = Future.delayed(Duration(seconds: 3));
    future.then((value) {
      notifyListeners();
    });
  }
}
