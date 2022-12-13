import 'package:json_annotation/json_annotation.dart';
part 'featured.g.dart';

@JsonSerializable()
class Featured{
  final String title;
  final String cover;

  Featured({required this.title, required this.cover});
  factory Featured.fromJson( Map<String, dynamic> json ) => _$FeaturedFromJson(json);
  Map<String, dynamic> toJson() => _$FeaturedToJson(this);
}
// flutter pub run build_runner build