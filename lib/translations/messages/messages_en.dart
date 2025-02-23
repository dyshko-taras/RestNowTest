import 'package:get/get_navigation/src/root/internacionalization.dart';

class MessagesEn extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_EN': {
          'payment': 'Pay',
          'lastPayment': 'Last successful payment:',
          'startMassage': 'Start massage',
          'stopMassage': 'Stop massage',
          'close': 'Close',
          'paymentSuccess': 'Payment successful',
          'fetchError': 'Error fetching data:',
          'connectionError': 'Connection error:',
        },
      };
}
