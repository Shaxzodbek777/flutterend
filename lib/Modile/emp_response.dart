// To parse this JSON data, do
//
//     final empResponse = empResponseFromJson(jsonString);

import 'dart:convert';

EmpResponse empResponseFromJson(String str) => EmpResponse.fromJson(json.decode(str));

String empResponseToJson(EmpResponse data) => json.encode(data.toJson());

class EmpResponse {
  EmpResponse({
    this.status,
    this.data,
    this.message,
  });

  String? status;
  List<Employee>? data;
  String? message;

  factory EmpResponse.fromJson(Map<String, dynamic> json) => EmpResponse(
    status: json["status"],
    data: List<Employee>.from(json["data"].map((x) => Employee.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "message": message,
  };
}

class Employee {
  Employee({
    this.id,
    this.employeeName,
    this.employeeSalary,
    this.employeeAge,
    this.profileImage,
  });

  int? id;
  String? employeeName;
  int? employeeSalary;
  int? employeeAge;
  String? profileImage;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    id: json["id"],
    employeeName: json["employee_name"],
    employeeSalary: json["employee_salary"],
    employeeAge: json["employee_age"],
    profileImage: json["profile_image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "employee_name": employeeName,
    "employee_salary": employeeSalary,
    "employee_age": employeeAge,
    "profile_image": profileImage,
  };
}