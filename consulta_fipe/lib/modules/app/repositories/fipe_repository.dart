import 'package:consulta_fipe/modules/app/models/fipe_model.dart';
import 'package:dio/dio.dart';

//004272-2

class FipeRepository {
  Dio dio = Dio();
  List<FipeModel>? resultOfRepository = [];

  Future<List<FipeModel>?>? consultFipe(String fipeCode) async {
    final String endPoint =
        "https://brasilapi.com.br/api/fipe/preco/v1/$fipeCode";

    final response = await dio.get(endPoint);
    var responseAsList = response.data as List;
    var dataFromMapToList =
        (responseAsList).map((json) => FipeModel.fromMap(json)).toList();

    resultOfRepository = dataFromMapToList;
    print(resultOfRepository?[0].anoModelo);

    return resultOfRepository;
  }
}
