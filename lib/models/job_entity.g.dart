// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobEntity _$JobEntityFromJson(Map<String, dynamic> json) => JobEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      company: json['company'] as String,
      location: json['location'] as String,
      link: json['link'] as String,
      dateListed: DateTime.parse(json['dateListed'] as String),
      bullets:
          (json['bullets'] as List<dynamic>).map((e) => e as String).toList(),
      isProcessed: json['isProcessed'] as bool,
      isTelegramSent: json['isTelegramSent'] as bool,
    );

Map<String, dynamic> _$JobEntityToJson(JobEntity instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'company': instance.company,
      'location': instance.location,
      'link': instance.link,
      'dateListed': instance.dateListed.toIso8601String(),
      'bullets': instance.bullets,
      'isProcessed': instance.isProcessed,
      'isTelegramSent': instance.isTelegramSent,
    };
