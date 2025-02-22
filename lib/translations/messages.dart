import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:rest_now_test/translations/messages/messages_en.dart';
import 'package:rest_now_test/translations/messages/messages_ua.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ...MessagesEn().keys,
        ...MessagesUA().keys,
      };
}
