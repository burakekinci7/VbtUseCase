import 'package:flutter/material.dart';

@immutable
class ComplexData {
  const ComplexData({
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
    this.phoneNumber,
  });

  final String? name;
  final String? email;
  final String? password;
  final String? confirmPassword;
  final String? phoneNumber;

  ComplexData copyWith({
    String? name,
    String? email,
    String? password,
    String? confirmPassword,
    String? phoneNumber,
  }) {
    return ComplexData(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}
