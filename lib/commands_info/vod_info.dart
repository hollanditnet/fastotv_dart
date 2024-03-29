import 'package:fastotv_dart/commands_info/movie_info.dart';
import 'package:fastotv_dart/commands_info/stream_base_info.dart';

class VodInfo extends StreamBaseInfo {
  final MovieInfo vod;

  VodInfo(id, type, group, this.vod, video, audio)
      : super(id, type, group, video, audio) {}

  factory VodInfo.fromJson(Map<String, dynamic> json) {
    final base = StreamBaseInfo.fromJson(json);
    final vod = MovieInfo.fromJson(json['vod']);
    return VodInfo(base.id, base.type, base.group, vod, base.video, base.audio);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> base = super.toJson();
    base['vod'] = vod.toJson();
    return base;
  }
}
