import 'package:intl/intl.dart';

class DateAndTimeUtil {
  /*
  private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyyMMdd", Locale.getDefault());
    private static final SimpleDateFormat DATE_AND_TIME_FORMAT = new SimpleDateFormat("yyyyMMddHHmm", Locale.getDefault());
    private static final SimpleDateFormat DATE_AND_TIME_WITH_SECONDS_FORMAT = new SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault());
    private static final SimpleDateFormat READABLE_DAY_MONTH_FORMAT = new SimpleDateFormat("d MMMM", Locale.getDefault());
    private static final SimpleDateFormat READABLE_DAY_MONTH_YEAR_FORMAT = new SimpleDateFormat("d MMMM yyyy", Locale.getDefault());
    private static final SimpleDateFormat READABLE_TIME_24_FORMAT = new SimpleDateFormat("HH:mm", Locale.getDefault());
    private static final SimpleDateFormat READABLE_TIME_FORMAT = new SimpleDateFormat("h:mm a", Locale.getDefault());
    private static final SimpleDateFormat WEEK_DAYS_FORMAT = new SimpleDateFormat("EEEE", Locale.getDefault());
    private static final SimpleDateFormat SHORT_WEEK_DAYS_FORMAT = new SimpleDateFormat("E", Locale.getDefault());
   */
  var DATE_FORMAT = DateFormat('yyyy-MM-dd');
  static var READABLE_DAY_MONTH_YEAR_FORMAT = DateFormat('d MMM, y hh:mm aa');
  static var READABLE_DATE_FORMAT = DateFormat('d MMM, y');
  static var READABLE_TIME_FORMAT = DateFormat('hh:mm aa');

  static var serverDateFormat =
      DateFormat("yyyy-MM-ddTHH:mm:ss.sss"); //YYYY-MM-DDTHH:mm:ss.sssZ
  static var TIME_DAY_MONTH_YEAR_FORMAT = DateFormat('hh:mm aa d MMM, y');

  static String dayMonthYear(String date) {
    return READABLE_DAY_MONTH_YEAR_FORMAT.format(DateTime.parse(date));
  }

  static String readableDate(String date) {
    return READABLE_DATE_FORMAT.format(DateTime.parse(date));
  }

  static String time(String date) {
    return READABLE_TIME_FORMAT.format(DateTime.parse(date));
  }

  static String timeDate(String date) {
    return TIME_DAY_MONTH_YEAR_FORMAT.format(DateTime.parse(date).toLocal());
  }

  static String dayMonthYearFormat(String milliseconds) {
    //int millis = int.parse(milliseconds);

    var now = DateTime.now().toLocal();
    var format = DateFormat('HH:mm a');
    var date = DateTime.parse(
        milliseconds); //new DateTime.fromMillisecondsSinceEpoch(millis * 1000);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 ||
        diff.inSeconds > 0 && diff.inMinutes == 0 ||
        diff.inMinutes > 0 && diff.inHours == 0 ||
        diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else if (diff.inDays > 0 && diff.inDays < 7) {
      if (diff.inDays == 1) {
        time = '${diff.inDays} day ago';
      } else {
        time = '${diff.inDays} days ago';
      }
    } else if (diff.inDays >= 7 && diff.inDays < 30) {
      if (diff.inDays == 7) {
        time = '${(diff.inDays / 7).floor()} week ago';
      } else {
        time = '${(diff.inDays / 7).floor()} weeks ago';
      }
    } else {
      time = dayMonthYear(milliseconds);
    }
    return time;
  }

  static String currentDateTime() {
    var now = new DateTime.now().toLocal();
    //print("current date time now: ${now.toString()}");
    String formattedDate = serverDateFormat.format(now);
    //print("formatted date: $formattedDate");
    return formattedDate;
  }

  static String expiryDateTime() {
    var now = new DateTime.now().toLocal();
    now = now.add(Duration(days: 1));
    //print("current date time now: ${now.toString()}");
    String formattedDate = serverDateFormat.format(now);
    //print("formatted date: $formattedDate");
    return formattedDate;
  }

  static String getCurrentTimeStamp() {
    return DateTime.now().toLocal().millisecondsSinceEpoch.toString();
  }
}
