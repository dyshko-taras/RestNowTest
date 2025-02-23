import 'package:get/get_navigation/src/root/internacionalization.dart';

class MessagesUA extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'uk_UA': {
          'payment': 'Оплатити',
          'lastPayment': 'Дата останьої успішної оплати:',
          'startMassage': 'Старт масажу',
          'stopMassage': 'Стоп масажу',
          'close': 'Закрити',
          'paymentSuccess': 'Оплата пройшла успішно',
          'fetchError': 'Помилка при отриманні даних:',
          'connectionError': 'Помилка підключення:',
        },
      };
}
