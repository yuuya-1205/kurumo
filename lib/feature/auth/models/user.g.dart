// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      companyName: json['companyName'] as String,
      phoneNumber: json['phoneNumber'] as int,
      zipCode: json['zipCode'] as int,
      adress: json['adress'] as String,
      buildingName: json['buildingName'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'companyName': instance.companyName,
      'phoneNumber': instance.phoneNumber,
      'zipCode': instance.zipCode,
      'adress': instance.adress,
      'buildingName': instance.buildingName,
    };
