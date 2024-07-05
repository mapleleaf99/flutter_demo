
class HomeBannerModel {
  ///id
  final int id;
  ///登陆类型 1:非必须登录 2:必须登录
  final int loginType;
  ///根据点击类型 [跳转]本地页标识或h5链接地址
  final String jumpUrl;
  ///跳转地址标题
  final String jumpUrlTitle;
  ///点击类型 1:本地页 2:h5页面
  final int clickType;
  ///图片地址
  final String imgAddress;
  ///活动关联ID
  final String associationId;

  HomeBannerModel({
    required this.id,
    required this.loginType,
    required this.jumpUrl,
    required this.jumpUrlTitle,
    required this.clickType,
    required this.imgAddress,
    required this.associationId,
  });

  factory HomeBannerModel.fromMap(Map<String, dynamic> map) {
    return HomeBannerModel(
        id: map["id"],
        loginType: map["loginType"],
        jumpUrl: map["jumpUrl"],
        jumpUrlTitle: map["jumpUrlTitle"],
        clickType: map["clickType"],
        imgAddress: map["imgAddress"],
        associationId: map["associationId"]
    );
  }
}