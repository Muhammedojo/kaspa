import 'package:isar/isar.dart';
import '../../utils/const.dart';

// part 'product.g.dart';


@Collection()
class Product {
  Id? id;

  @Index(
    unique: true,
    replace: true,
  )
  late int pk = 0;

  String? name = "";
  String? type = "";
  String? variety = "";

  Product();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  var obj = Product();

  obj.pk = json[KEY_PK];
  obj.name = json[KEY_NAME];
  obj.type = json[KEY_TYPE];
  obj.variety = json[KEY_VARIETY];

  return obj;
}

Map<String, dynamic> _$ProductToJson(Product obj) => <String, dynamic>{
      KEY_NAME: obj.name,
      KEY_TYPE: obj.type,
      KEY_VARIETY: obj.variety,
    };
