import 'package:fluttemp/Models/externals.dart';
import 'package:fluttemp/Models/image.dart';
import 'package:fluttemp/Models/links.dart';
import 'package:fluttemp/Models/network.dart';
import 'package:fluttemp/Models/rating.dart';
import 'package:fluttemp/Models/schedule.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show.freezed.dart';
part 'show.g.dart';

@freezed
class Show with _$Show {
  const factory Show({
    required int? id,
    required String? url,
    required String? name,
    required String? type,
    required String? language,
    required List<String>? genres,
    required String? status,
    required int? runtime,
    required int? averageRuntime,
    required DateTime? premiered,
    required DateTime? ended,
    required String? officialSite,
    required Schedule? schedule,
    required Rating? rating,
    required int? weight,
    required Network? network,
    required dynamic webChannel,
    required dynamic dvdCountry,
    required Externals? externals,
    required Image? image,
    required String? summary,
    required int? updated,
    required Links? links,
  }) = _Show;

  factory Show.fromJson(Map<String, dynamic> json) => _$ShowFromJson(json);
}
