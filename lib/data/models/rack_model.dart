//External dependencies
import 'package:freezed_annotation/freezed_annotation.dart';

//Internal dependencies
import 'package:nexrack_app/domain/entities/rack.dart';

part 'rack_model.freezed.dart';
part 'rack_model.g.dart'; // For JSON serialization

@freezed
abstract class RackModel with _$RackModel implements Rack {
  const RackModel._();

  const factory RackModel({required String id, required String ip, required String name}) = _RackModel;

  factory RackModel.empty() => const RackModel(id: '', ip: '', name: '');

  factory RackModel.fromJson(Map<String, dynamic> json) =>
      _$RackModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RackModelToJson(this as _RackModel);
}

class RackConverter implements JsonConverter<Rack, Map<String, dynamic>> {
  const RackConverter();

  @override
  Rack fromJson(Map<String, dynamic> json) => RackModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(Rack object) => (object as RackModel).toJson();
}