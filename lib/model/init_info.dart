class UserInfo {
  final int initCount;
  final String userName;

  UserInfo(this.initCount, this.userName);

  UserInfo.fromJson(Map<String, dynamic> json)
      : initCount = json['initCount'],
        userName = json['userName'];

  static UserInfo fromDynamic(dynamic json) {
    return UserInfo(json['initCount'] ?? 0, json['userName'] ?? "un_know");
  }

  Map<String, dynamic> toJson() => {
        'initCount': initCount,
        'userName': userName,
      };
}
