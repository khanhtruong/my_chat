import 'package:flutter/services.dart';
import 'package:my_chat/model/init_info.dart';

class Receiver {
  static const _userChannel = const MethodChannel('com.dwarvesf.my_chat');

  static Future<bool> initialize() async {
    return await _userChannel.invokeMethod('is_connected');
  }

  static Future<UserInfo> getUserInfo() async {
    final dynamic jsonData = await _userChannel.invokeMethod("get_init_info");
    return UserInfo.fromDynamic(jsonData);
  }
}