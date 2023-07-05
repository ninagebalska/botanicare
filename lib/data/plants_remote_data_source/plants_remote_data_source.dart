import 'package:dio/dio.dart';

class PlantsRemoteDataSource {
  Future<List<Map<String, dynamic>>?> getPlants() async {
    final response = await Dio().get<List<dynamic>>(
        'https://perenual.com/api/species-list?page=1&key=sk-a3Qy648cc5aba6a4e1291');
    final listDynamic = response.data;

    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
