
import 'package:json_annotation/json_annotation.dart';

part 'portal.g.dart';

@JsonSerializable()
class Portal {
  final String title;
  final String logo;

  Portal({required this.title,required this.logo});



  factory Portal.fromJson(Map<String, dynamic> json) => _$PortalFromJson(json);

  Map<String, dynamic> toJson() => _$PortalToJson(this);
}