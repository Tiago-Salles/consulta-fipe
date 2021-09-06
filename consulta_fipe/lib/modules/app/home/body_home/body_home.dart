import 'dart:ui';

import 'package:consulta_fipe/modules/app/controllers/app_controller.dart';
import 'package:consulta_fipe/modules/app/models/fipe_model.dart';
import 'package:consulta_fipe/modules/app/repositories/fipe_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'widgets/each_item_of_list_view.dart';

class BodyHome extends StatelessWidget {
  final FipeRepository _fipeRepository = FipeRepository();
  final FipeController fipeController = FipeController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.indigo[600],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30, bottom: 10),
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  child: TextFormField(
                    cursorColor: Colors.amber,
                    keyboardType: TextInputType.number,
                    maxLength: 8,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    controller: fipeController.textController,
                    decoration: InputDecoration(
                      helperText: "ex: 006001-1",
                      helperStyle: TextStyle(
                        color: Colors.white70,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                      ),
                      counterStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      hintStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w200,
                          color: Colors.white54),
                      hintText: "Digite o código Fipe",
                    ),
                  ),
                ),
                Container(
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      fipeController.consultingFipe();
                      fipeController.buildScreen();
                      print("passou do notify");
                    },
                    icon: Icon(Icons.search),
                    iconSize: 30,
                  ),
                )
              ],
            ),
          ),
          Consumer<FipeController>(
            builder: (context, fipeController, widget) {
              if (_fipeRepository.resultOfRepository != null) {
                print("entrou no if");
                return Expanded(
                  child: ListView.builder(
                    itemCount: _fipeRepository.resultOfRepository?.length,
                    itemBuilder: (context, index) {
                      FipeModel itemOfList =
                          _fipeRepository.resultOfRepository![index];
                      return EachItemOfListView(itemOfList: itemOfList);
                    },
                  ),
                );
              } else {
                return Text("Carregando");
              }
            },
          )
        ],
      ),
    );
  }
}
