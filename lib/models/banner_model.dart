import 'package:json_annotation/json_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable()
class Banner_model {
  Banner_model();

  late num apcid;
  late String typeid;
  late String name;
  late num orders;
  late String adtitle;
  late String imgurl;
  late String imgurl2;
  late num jid;
  late String title;
  late num price;
  late String priceunit;
  late String settlementmethod;
  late String term;
  late String sexrestriction;
  late String location;
  late String worktimes;
  late String workaddress;
  late num registrationnumber;
  late String companyname;
  late String companyshortname;
  late String typesname;
  late String logourl;
  late num bannertype;
  late String h5url;
  late num strikingstars;
  late num score;
  
  factory Banner_model.fromJson(Map<String,dynamic> json) => _$Banner_modelFromJson(json);
  Map<String, dynamic> toJson() => _$Banner_modelToJson(this);
}
