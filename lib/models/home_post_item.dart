import 'package:json_annotation/json_annotation.dart';

part 'home_post_item.g.dart';

@JsonSerializable()
class Home_post_item {
  Home_post_item();

  late num jid;
  late num acid;
  late num status;
  late String title;
  late num price;
  late String priceunit;
  late String settlementmethod;
  late String term;
  late String sexrestriction;
  late num contacttype;
  late num opentype;
  late String contact;
  late String location;
  late String jobdescription;
  late String worktimes;
  late String workaddress;
  late String publishdate;
  late num collectionnumber;
  late num registrationnumber;
  late num orders;
  late num registrationnumberbase;
  late num strikingstars;
  late num issold;
  late num appid;
  late num jtid;
  late String companyname;
  late num isapplication;
  late String logourl;
  late num enrollstatus;
  late num score;
  late num isauthentication;
  late num age;
  late num isbanner;
  late num visitnum;
  late num enterednum;
  late num copynum;
  
  factory Home_post_item.fromJson(Map<String,dynamic> json) => _$Home_post_itemFromJson(json);
  Map<String, dynamic> toJson() => _$Home_post_itemToJson(this);
}
