import 'package:freezed_annotation/freezed_annotation.dart';

part 'previous_episode.freezed.dart';
part 'previous_episode.g.dart';

@freezed
class Previousepisode with _$Previousepisode {
  const factory Previousepisode({
    required String href,
  }) = _Previousepisode;

  factory Previousepisode.fromJson(Map<String, dynamic> json) =>
      _$PreviousepisodeFromJson(json);
}
