import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import "model.dart";
part 'models.g.dart';

@JsonSerializable()
class Models {
  Models();

  late Model data;
  late num status;
  late String message;
  
  factory Models.fromJson(Map<String,dynamic> json) => _$ModelsFromJson(json);
  Map<String, dynamic> toJson() => _$ModelsToJson(this);
}

class ModelsChangeNotifer extends ChangeNotifier {
  Models get _models => Globle.
}