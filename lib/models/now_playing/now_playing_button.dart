class CPNowPlayingImageButton {
  String id;

  /// 图像资源
  String image;

  /// 是否开启
  bool isEnabled;

  /// 是否被选中
  bool isSelected;

  void Function()? onTap;

  CPNowPlayingImageButton({
    required this.id,
    required this.image,
    this.isEnabled = true,
    this.isSelected = false,
    this.onTap,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'isEnabled': isEnabled,
      'isSelected': isSelected,
    };
  }
}
