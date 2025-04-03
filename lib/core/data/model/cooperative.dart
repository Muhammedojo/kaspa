import 'package:isar/isar.dart';
import '../../utils/const.dart';

// part 'cooperative.g.dart';

@Collection()
class Cooperative {
  Id? id;

  @Index(
    unique: true,
    replace: true,
  )
  late int pk = 0;

  String? name = "";
  String? head = "";
  String? secretary = "";
  String? lga = "";
  String? dateOfIncorporation = "";
  String? certificate = "";

  Cooperative();

  factory Cooperative.fromJson(Map<String, dynamic> json) =>
      _$CooperativeFromJson(json);

  Map<String, dynamic> toJson() => _$CooperativeToJson(this);
}

Cooperative _$CooperativeFromJson(Map<String, dynamic> json) {
  var obj = Cooperative();

  obj.pk = json[KEY_PK];
  obj.name = json[KEY_NAME];
  obj.lga = json[KEY_LGA];
  obj.head = json[KEY_HEAD];
  obj.secretary = json[KEY_SECRETARY];
  obj.dateOfIncorporation = json[KEY_DATE_OF_INCORPORATION];
  obj.certificate = json[KEY_CERTIFICATE];

  return obj;
}

Map<String, dynamic> _$CooperativeToJson(Cooperative obj) => <String, dynamic>{
      KEY_NAME: obj.name,
      KEY_LGA: obj.lga,
      KEY_HEAD: obj.head,
      KEY_SECRETARY: obj.secretary,
      KEY_DATE_OF_INCORPORATION: obj.dateOfIncorporation,
      KEY_CERTIFICATE: obj.certificate,
    };
