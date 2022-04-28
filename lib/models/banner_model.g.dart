// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner_model _$Banner_modelFromJson(Map<String, dynamic> json) => Banner_model()
  ..apcid = json['apcid'] as num
  ..apid = json['apid'] as num
  ..orders = json['orders'] as num
  ..adtitle = json['adtitle'] as String
  ..imgurl = json['imgurl'] as String
  ..imgurl2 = json['imgurl2'] as String
  ..jid = json['jid'] as num
  ..title = json['title'] as String
  ..price = json['price'] as num
  ..priceunit = json['priceunit'] as String
  ..settlementmethod = json['settlementmethod'] as String
  ..term = json['term'] as String
  ..sexrestriction = json['sexrestriction'] as String
  ..location = json['location'] as String
  ..worktimes = json['worktimes'] as String
  ..workaddress = json['workaddress'] as String
  ..registrationnumber = json['registrationnumber'] as num
  ..companyname = json['companyname'] as String
  ..companyshortname = json['companyshortname'] as String
  ..typesname = json['typesname'] as String
  ..logourl = json['logourl'] as String
  ..bannertype = json['bannertype'] as num
  ..h5url = json['h5url'] as String
  ..strikingstars = json['strikingstars'] as num
  ..score = json['score'] as num;

Map<String, dynamic> _$Banner_modelToJson(Banner_model instance) =>
    <String, dynamic>{
      'apcid': instance.apcid,
      'typeid': instance.typeid,
      'name': instance.name,
      'appid': instance.appid,
      'apid': instance.apid,
      'orders': instance.orders,
      'adtitle': instance.adtitle,
      'imgurl': instance.imgurl,
      'imgurl2': instance.imgurl2,
      'jid': instance.jid,
      'title': instance.title,
      'price': instance.price,
      'priceunit': instance.priceunit,
      'settlementmethod': instance.settlementmethod,
      'term': instance.term,
      'sexrestriction': instance.sexrestriction,
      'location': instance.location,
      'worktimes': instance.worktimes,
      'workaddress': instance.workaddress,
      'registrationnumber': instance.registrationnumber,
      'companyname': instance.companyname,
      'companyshortname': instance.companyshortname,
      'columnname': instance.columnname,
      'typesname': instance.typesname,
      'logourl': instance.logourl,
      'bannertype': instance.bannertype,
      'h5url': instance.h5url,
      'strikingstars': instance.strikingstars,
      'score': instance.score,
    };
