import 'dart:convert';
import 'package:flutter/material.dart';

class UserData {
  int? id;
  String? name;
  String? email;
  String? password;
  String? image;

  UserData({
    this.id,
    this.name,
    this.email,
    this.password,
    this.image,
  });

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = this.id;
    return data;
  }
  // setId(id1) {
  //   this.id = id1;
  // }

  //getId() {
  //  return this.id;
  //}
}
