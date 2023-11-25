import 'package:fluttemp/Models/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network.freezed.dart';
part 'network.g.dart';

@freezed
class Network with _$Network {
  const factory Network({
    required int id,
    required String name,
    required Country country,
    required dynamic officialSite,
  }) = _Network;

  factory Network.fromJson(Map<String, dynamic> json) =>
      _$NetworkFromJson(json);
}
