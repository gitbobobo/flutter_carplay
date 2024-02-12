import 'package:flutter_carplay/models/now_playing/now_playing_button.dart';

class CPNowPlayingTemplate {
  /// 专辑和艺术家字符串是否为按钮
  bool isAlbumArtistButtonEnabled;

  /// “待播清单”按钮的显示
  bool isUpNextButtonEnabled;

  /// “待播清单”按钮的标题
  String? upNextTitle;

  List<CPNowPlayingImageButton> nowPlayingButtons;

  CPNowPlayingTemplate({
    this.isAlbumArtistButtonEnabled = false,
    this.isUpNextButtonEnabled = false,
    this.upNextTitle,
    this.nowPlayingButtons = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'isAlbumArtistButtonEnabled': isAlbumArtistButtonEnabled,
      'isUpNextButtonEnabled': isUpNextButtonEnabled,
      'upNextTitle': upNextTitle,
      'nowPlayingButtons': nowPlayingButtons.map((e) => e.toMap()).toList(),
    };
  }
}
