
import 'package:json_annotation/json_annotation.dart';

part 'DataBean.g.dart';

@JsonSerializable()
class DataBean{

  @JsonKey(name: "offse")
  int? offset;
  @JsonKey(name: "size")
  int? size;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "content")
  String? content;

}