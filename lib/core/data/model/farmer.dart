import 'package:isar/isar.dart';
import '../../utils/const.dart';

// part 'farmer.g.dart';

@Collection()
class Farmer {
  Id? id;

  @Index(
    unique: true,
    replace: true,
  )
  late int pk = 0;

  String? name = "";
  String? age = "";
  String? gender = "";
  String? address = "";
  String? phone = "";
  String? nin = "";
  String? nokName = "";
  String? nokPhone = "";
  String? nokRelationship = "";
  String? lga = "";
  String? ward = "";
  int? farms = 0;
  int? cooperative = 0;
  String? registrationDate = "";
  String? registrationOfficer = "";
  int? creditScore = 0;
  double? walletBalance = 0.0;
  int? cropsGrown = 0;
  int? livestock = 0;
  

  Farmer();

  factory Farmer.fromJson(Map<String, dynamic> json) => _$FarmerFromJson(json);

  Map<String, dynamic> toJson() => _$FarmerToJson(this);
}

Farmer _$FarmerFromJson(Map<String, dynamic> json) {
  var obj = Farmer();

  obj.pk = json[KEY_PK];
  obj.name = json[KEY_NAME];
  obj.age = json[KEY_AGE];
  obj.gender = json[KEY_GENDER];
  obj.address = json[KEY_ADDRESS];
  obj.phone = json[KEY_PHONE];
  obj.nin = json[KEY_NIN];
  obj.nokName = json[KEY_NOK_NAME];
  obj.nokPhone = json[KEY_NOK_PHONE];
  obj.nokRelationship = json[KEY_NOK_RELATIONSHIP];
  obj.lga = json[KEY_LGA];
  obj.ward = json[KEY_WARD];
  obj.farms = json[KEY_FARMS];
  obj.cooperative = json[KEY_COOPERATIVE];
  obj.registrationDate = json[KEY_REGISTRATION_DATE];
  obj.registrationOfficer = json[KEY_REGISTRATION_OFFICER];
  obj.creditScore = json[KEY_CREDIT_SCORE];
  obj.walletBalance = json[KEY_WALLET_BALANCE];
  obj.cropsGrown = json[KEY_CROPS_GROWN];
  obj.livestock = json[KEY_LIVESTOCK];
  

  return obj;
}
 

Map<String, dynamic> _$FarmerToJson(Farmer obj) => <String, dynamic>{
    KEY_NAME: obj.name,
    KEY_AGE: obj.age,
    KEY_GENDER: obj.gender,
    KEY_ADDRESS: obj.address,
    KEY_PHONE: obj.phone,
    KEY_NIN: obj.nin,
    KEY_NOK_NAME: obj.nokName,
    KEY_NOK_PHONE: obj.nokPhone,
    KEY_NOK_RELATIONSHIP: obj.nokRelationship,
    KEY_LGA: obj.lga,
    KEY_WARD: obj.ward,
    KEY_FARMS: obj.farms,
    KEY_COOPERATIVE: obj.cooperative,
    KEY_REGISTRATION_DATE: obj.registrationDate,
    KEY_REGISTRATION_OFFICER: obj.registrationOfficer,
    KEY_CREDIT_SCORE: obj.creditScore,
    KEY_WALLET_BALANCE: obj.walletBalance,
    KEY_CROPS_GROWN: obj.cropsGrown,
    KEY_LIVESTOCK: obj.livestock,
    };




