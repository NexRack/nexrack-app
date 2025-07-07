import 'package:nexrack_app/domain/entities/rack.dart';
import 'package:nexrack_app/domain/repositories/rack_repository.dart';

class RackRepositoryRest implements RackRepository {
  @override
  Future<List<Rack>> fetchAllRacks() async {
    throw UnimplementedError();
  }

  @override
  Future<Rack> fetchRackById(String id) async {
    throw UnimplementedError();
  }
}
