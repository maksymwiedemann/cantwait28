import 'package:intl/intl.dart';

class ItemModel {
  ItemModel({
    required this.title,
    required this.id,
    required this.imageURL,
    required this.releseDate,
  });

  final String title;
  final String id;
  final String imageURL;
  final DateTime releseDate;

  String daysLeft() {
    return releseDate.difference(DateTime.now()).inDays.toString();
  }

  String relaseDateFormatted() {
    return DateFormat.MMMEd().format(releseDate);
  }
}
