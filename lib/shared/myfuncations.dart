import 'package:timeago/timeago.dart' as timeago;

String parseHumanDateTime(String dateTime, String currentDateTime) {
  Duration timeAgo = DateTime.parse(currentDateTime).difference(DateTime.parse(dateTime));
  DateTime theDiffrence = DateTime.parse(currentDateTime).subtract(timeAgo);
  timeago.setLocaleMessages('en', timeago.EnMessages());
  return timeago.format(theDiffrence, locale: 'en',clock: DateTime.parse(currentDateTime));
}