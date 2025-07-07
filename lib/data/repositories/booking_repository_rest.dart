// External dependencies
import 'package:logger/logger.dart';

// Internal dependencies
import 'package:nexrack_app/core/di/locator.dart';
import 'package:nexrack_app/domain/entities/booking.dart';
import 'package:nexrack_app/domain/repositories/repositories.dart';

class BookingRepositoryRest implements BookingRepository {
  final Logger _logger = sl<Logger>();

  @override
  Future<void> createBooking(Booking booking) async {
    _logger.i("Creating booking with ID: ${booking.id}");
  }

  @override
  Future<void> deleteBooking(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<List<Booking>> fetchAllBookings() async {
    throw UnimplementedError();
  }

  @override
  Future<Booking> fetchBookingById(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<void> updateBooking(Booking booking) async {
    throw UnimplementedError();
  }
}
