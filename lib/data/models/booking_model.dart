//External dependencies
import 'package:freezed_annotation/freezed_annotation.dart';

//Internal dependencies
import 'package:nexrack_app/domain/entities/entities.dart';
import 'package:nexrack_app/data/models/models.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart'; // For JSON serialization

@freezed
abstract class BookingModel with _$BookingModel implements Booking {
  const BookingModel._();

  const factory BookingModel({
    required String id,
    required DateTime startTime,
    required DateTime endTime,
    @UserConverter()
    required User user,
    @RackConverter()
    required Rack rack,
  }) = _BookingModel;

  factory BookingModel.empty() => BookingModel(id: '', startTime: DateTime(0), endTime: DateTime(0), user: UserModel.empty(), rack: RackModel.empty());

  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BookingModelToJson(this as _BookingModel);
}
