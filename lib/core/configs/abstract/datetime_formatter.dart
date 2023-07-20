import 'package:intl/intl.dart';

abstract class DTForm {
  static String getDate(DateTime date) {
    final formattedDate =
        '''${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year.toString().padLeft(2, '0')}''';
    return formattedDate;
  }

  static String getDateMount(DateTime date) {
    final formattedDate =
        '''${date.day.toString().padLeft(2, '0')} ${months[date.month]}''';
    return formattedDate;
  }

  static String getTime24Hours(DateTime date) {
    final formattedDate =
        '''${date.day.toString().padLeft(2, '0')}:${date.month.toString().padLeft(2, '0')}''';
    return formattedDate;
  }

  static String getTime12Hours(DateTime date) {
    final is12Hours = DateFormat('hh:mm a').format(date);
    return is12Hours;
  }

  static String getTimeSec24Hours(
    DateTime date,
  ) {
    final dateCustom =
        '''${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}:${date.second.toString().padLeft(2, '0')}''';
    return dateCustom;
  }

  static String getTimeSec12Hours(
    DateTime date,
  ) {
    final is12Hours = DateFormat('hh:mm:ss a').format(date);
    return is12Hours;
  }

  static String getDateTimeString(String date) {
    final inputFormatter = DateFormat('dd/MM/yyyy');
    final outputFormatter = DateFormat('yyyy-MM-dd');
    final dateTime = inputFormatter.parseStrict(date);
    return outputFormatter.format(dateTime);
  }

  static String getDateString(DateTime date) {
    final formattedDate =
        '''${date.year.toString().padLeft(2, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}''';
    return formattedDate;
  }

  static DateTime getDateTime(String date) {
    final formattedDate = DateTime.parse(date);
    return formattedDate;
  }
}

Map<int, String> months = {
  1: 'Ene',
  2: 'Feb',
  3: 'Mar',
  4: 'Abr',
  5: 'May',
  6: 'Jun',
  7: 'Jul',
  8: 'Ago',
  9: 'Sep',
  10: 'Oct',
  11: 'Nov',
  12: 'Dic',
};
