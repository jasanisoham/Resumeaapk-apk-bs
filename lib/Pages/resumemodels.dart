import 'dart:io';

class Resume{

  String? name;
  String? email;
  String? address;
  int? phone;
  File? image;
  String? DOB;
  String? nationality;
  dynamic? grpval;
  String? course;
  String? institute;
  String? grade;
  int? passyear;
  String? projecttitle;
  String? roles;
  String? technologies;
  String? descripation;

  Resume({
    this.name,
    this.email,
    this.address,
    this.phone,
    this.image,
    this.DOB,
    this.nationality,
    this.grpval,
    this.course,
    this.grade,
    this.institute,
    this.passyear,
    this.descripation,
    this.technologies,
    this.projecttitle,
    this.roles,

  });
}

Resume resume = Resume();