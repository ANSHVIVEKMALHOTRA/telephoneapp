class individual {
  int? id;
  String? name;
  String? email;
  String? siteName;
  String? joiningDate;
  String? createdAt;
  String? updatedAt;
  int? departmentId;
  String? position1;
  String? position2;
  String? mobile1;
  String? mobile2;
  String? landlineOffice;
  String? landlineResidential;
  String? designation;

  individual(
      {this.id,
      this.name,
      this.email,
      this.siteName,
      this.joiningDate,
      this.createdAt,
      this.updatedAt,
      this.departmentId,
      this.position1,
      this.position2,
      this.mobile1,
      this.mobile2,
      this.landlineOffice,
      this.landlineResidential,
      this.designation});

  individual.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    siteName = json['site_name'];
    joiningDate = json['joining_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    departmentId = json['department_id'];
    position1 = json['position1'];
    position2 = json['position2'];
    mobile1 = json['mobile1'];
    mobile2 = json['mobile2'];
    landlineOffice = json['landline_office'];
    landlineResidential = json['landline_residential'];
    designation = json['designation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['site_name'] = this.siteName;
    data['joining_date'] = this.joiningDate;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['department_id'] = this.departmentId;
    data['position1'] = this.position1;
    data['position2'] = this.position2;
    data['mobile1'] = this.mobile1;
    data['mobile2'] = this.mobile2;
    data['landline_office'] = this.landlineOffice;
    data['landline_residential'] = this.landlineResidential;
    data['designation'] = this.designation;
    return data;
  }
}