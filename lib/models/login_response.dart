class LoginResponse {
  bool? success;
  String? token;
  User? user;

  LoginResponse({
    this.success,
    this.token,
    this.user,
  });

  LoginResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    token = json['token'];
    user = (json['user'] as Map<String, dynamic>?) != null
        ? User.fromJson(json['user'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['success'] = success;
    json['token'] = token;
    json['user'] = user?.toJson();
    return json;
  }
}

class User {
  int? id;
  dynamic role;
  String? name;
  String? email;
  String? emailVerifiedAt;
  String? picture;
  String? profile;
  dynamic about;
  String? phone;
  dynamic dob;
  dynamic street;
  dynamic city;
  dynamic state;
  dynamic countryId;
  String? referralCode;
  dynamic referralUserId;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? otherNames;

  User({
    this.id,
    this.role,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.picture,
    this.profile,
    this.about,
    this.phone,
    this.dob,
    this.street,
    this.city,
    this.state,
    this.countryId,
    this.referralCode,
    this.referralUserId,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.otherNames,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    role = json['role'];
    name = json['name'] as String?;
    email = json['email'] as String?;
    emailVerifiedAt = json['email_verified_at'] as String?;
    picture = json['picture'] as String?;
    profile = json['profile'] as String?;
    about = json['about'];
    phone = json['phone'] as String?;
    dob = json['dob'];
    street = json['street'];
    city = json['city'];
    state = json['state'];
    countryId = json['country_id'];
    referralCode = json['referral_code'] as String?;
    referralUserId = json['referral_user_id'];
    status = json['status'] as String?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
    otherNames = json['other_names'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['role'] = role;
    json['name'] = name;
    json['email'] = email;
    json['email_verified_at'] = emailVerifiedAt;
    json['picture'] = picture;
    json['profile'] = profile;
    json['about'] = about;
    json['phone'] = phone;
    json['dob'] = dob;
    json['street'] = street;
    json['city'] = city;
    json['state'] = state;
    json['country_id'] = countryId;
    json['referral_code'] = referralCode;
    json['referral_user_id'] = referralUserId;
    json['status'] = status;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    json['other_names'] = otherNames;
    return json;
  }
}
