import 'package:meta/meta.dart';

import 'package:beer_me_up/model/beer.dart';

class CheckIn {
  final DateTime creationDate;
  final DateTime date;
  final Beer beer;
  final CheckInQuantity quantity;
  final int points;

  CheckIn({
    @required this.creationDate,
    @required this.date,
    @required this.beer,
    @required this.quantity,
    @required this.points,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CheckIn &&
              runtimeType == other.runtimeType &&
              creationDate == other.creationDate &&
              date == other.date &&
              beer == other.beer &&
              quantity == other.quantity &&
              points == other.points;

  @override
  int get hashCode =>
      creationDate.hashCode ^
      date.hashCode ^
      beer.hashCode ^
      quantity.hashCode ^
      points.hashCode;
}

class CheckInQuantity {
  static const PINT = const CheckInQuantity._(0.5);
  static const HALF_PINT = const CheckInQuantity._(0.25);
  static const BOTTLE = const CheckInQuantity._(0.33);

  static List<CheckInQuantity> get values => [PINT, HALF_PINT, BOTTLE];

  final double value;

  const CheckInQuantity._(this.value);

  String toString() {
    switch(this) {
      case PINT:
        return "Pint";
      case HALF_PINT:
        return "Half-pint";
      case BOTTLE:
        return "Bottle";
    }

    return null;
  }
}