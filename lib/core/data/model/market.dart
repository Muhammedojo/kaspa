import 'package:isar/isar.dart';
import '../../utils/const.dart';

// part 'market.g.dart';

@Collection()
class Market {
  Id? id;

  @Index(
    unique: true,
    replace: true,
  )
  late int pk = 0;

  String? name = "";
  String? size = "";
  String? lga = "";
  String? marketDays = "";
  String? type = "";

  Market();

  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);

  Map<String, dynamic> toJson() => _$MarketToJson(this);
}

Market _$MarketFromJson(Map<String, dynamic> json) {
  var obj = Market();

  obj.pk = json[KEY_PK];
  obj.name = json[KEY_NAME];
  obj.lga = json[KEY_LGA];
  obj.marketDays = json[KEY_MARKET_DAYS];
  obj.type = json[KEY_TYPE];
  obj.size = json[KEY_SIZE];

  return obj;
}

Map<String, dynamic> _$MarketToJson(Market obj) => <String, dynamic>{
      KEY_NAME: obj.name,
      KEY_LGA: obj.lga,
      KEY_MARKET_DAYS: obj.marketDays,
      KEY_TYPE: obj.type,
      KEY_SIZE: obj.size,
    };
