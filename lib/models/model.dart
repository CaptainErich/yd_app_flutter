import 'package:json_annotation/json_annotation.dart';
import "banner_model.dart";
part 'model.g.dart';

@JsonSerializable()
class Model {
  Model();

  late String name;
  late num bannerapcid;
  late List<Banner_model> banner;
  late num acid;
  
  factory Model.fromJson(Map<String,dynamic> json) => _$ModelFromJson(json);
  Map<String, dynamic> toJson() => _$ModelToJson(this);
}
