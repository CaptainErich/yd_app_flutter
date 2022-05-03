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

class HomeModel extends ChangeNotifier {
  Models? _models;
  bool done = false;
  Models get models => _models!;

  set models(Models models) {
    _models = models;
    done = true;
    notifyListeners();
  }



}