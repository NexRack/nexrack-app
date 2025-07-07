import 'package:nexrack_app/domain/entities/entities.dart';

abstract class RackRepository {
  Future<List<Rack>> fetchAllRacks();

  Future<Rack> fetchRackById(String id);
  

}