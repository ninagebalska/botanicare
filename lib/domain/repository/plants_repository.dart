import 'package:botanicare/data/plants_remote_data_source/plants_remote_data_source.dart';
import 'package:botanicare/domain/models/plant.dart';

class PlantsRepository {
  PlantsRepository({required this.remoteDataSource});

  final PlantsRemoteDataSource remoteDataSource;

  Future<List<Plant>> getPlantModels() async {
    final json = await remoteDataSource.getPlants();
    if (json == null) {
      return [];
    }
    return json.map((item) => Plant.fromJson(item)).toList();
  }
}
