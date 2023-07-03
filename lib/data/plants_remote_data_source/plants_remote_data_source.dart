import 'package:dio/dio.dart';

class PlantsRemoteDataSource {
  Future<Map<String, dynamic>?> getPlants({required String plant}) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'https://perenual.com/api/species-list?key=sk-a3Qy648cc5aba6a4e1291&q=$plant');
    return response.data;
  }
}
