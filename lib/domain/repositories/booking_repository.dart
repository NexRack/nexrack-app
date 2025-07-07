import 'package:nexrack_app/domain/entities/entities.dart';

abstract class BookingRepository {
  Future<List<Booking>> fetchAllBookings();

  Future<Booking> fetchBookingById(String id);

  Future<void> createBooking(Booking booking);

  Future<void> updateBooking(Booking booking);

  Future<void> deleteBooking(String id);
}