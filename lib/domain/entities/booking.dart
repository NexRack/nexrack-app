// Internal dependencies
import 'package:nexrack_app/domain/entities/entities.dart';

abstract class Booking {
 final String id;
 final DateTime startTime;
 final DateTime endTime;
 final User user;
 final Rack rack;

  Booking({required this.id, required this.startTime, required this.endTime, required this.user, required this.rack});
}