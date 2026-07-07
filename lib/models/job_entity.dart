import 'package:json_annotation/json_annotation.dart';

part 'job_entity.g.dart'; // This is generated automatically

@JsonSerializable()
class JobEntity {
  final String id;
  final String title;
  final String company;
  final String location;
  final String link;
  final DateTime dateListed;
  final List<String> bullets;
  final bool isProcessed;
  final bool isTelegramSent;

  JobEntity({
    required this.id,
    required this.title,
    required this.company,
    required this.location,
    required this.link,
    required this.dateListed,
    required this.bullets,
    required this.isProcessed,
    required this.isTelegramSent,
  });

  // Automatically generated factory for JSON
  factory JobEntity.fromJson(Map<String, dynamic> json) =>
      _$JobEntityFromJson(json);
  Map<String, dynamic> toJson() => _$JobEntityToJson(this);
}
