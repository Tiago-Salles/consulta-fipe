import 'package:consulta_fipe/modules/app/models/fipe_model.dart';
import 'package:consulta_fipe/modules/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EachItemOfListView extends StatelessWidget {
  const EachItemOfListView({
    Key? key,
    required this.itemOfList,
  }) : super(key: key);

  final FipeModel itemOfList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
      child: Material(
        elevation: 3,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      "Marca: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.description,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "${itemOfList.marca}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: AppColors.characteristcs,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      "Modelo: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.description,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                          "${itemOfList.modelo}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: AppColors.characteristcs,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      "Ano Modelo: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.description,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "${itemOfList.anoModelo}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: AppColors.characteristcs,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      "Combustível: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.description,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "${itemOfList.combustivel}, ${itemOfList.siglaCombustivel}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: AppColors.characteristcs,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      "Tipo do veículo: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.description,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "${itemOfList.tipoVeiculo}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: AppColors.characteristcs,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      "Mes referência: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.description,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "${itemOfList.mesReferencia}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: AppColors.characteristcs,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      "Data da Consulta: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.description,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                          "${itemOfList.dataConsulta}",
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: AppColors.characteristcs,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      "Codigo Fipe: ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.description,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "${itemOfList.codigoFipe}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: AppColors.characteristcs,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[400],
                ),
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "Valor: ${itemOfList.valor}",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
