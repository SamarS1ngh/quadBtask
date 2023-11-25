import 'package:fluttemp/Models/show.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'score.freezed.dart';
part 'score.g.dart';

Score scoreFromJson(String str) => Score.fromJson(json.decode(str));

String scoreToJson(Score data) => json.encode(data.toJson());

@freezed
class Score with _$Score {
  const factory Score({
    required double score,
    required Show show,
  }) = _Score;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}
