
class LogInModel {
  Facility? facility;
  String? accessToken;

  LogInModel({this.facility, this.accessToken});

  LogInModel.fromJson(Map<String, dynamic> json) {
    if(json["facility"] is Map) {
      facility = json["facility"] == null ? null : Facility.fromJson(json["facility"]);
    }
    if(json["accessToken"] is String) {
      accessToken = json["accessToken"];
    }
  }

  static List<LogInModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => LogInModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(facility != null) {
      _data["facility"] = facility?.toJson();
    }
    _data["accessToken"] = accessToken;
    return _data;
  }

  LogInModel copyWith({
    Facility? facility,
    String? accessToken,
  }) => LogInModel(
    facility: facility ?? this.facility,
    accessToken: accessToken ?? this.accessToken,
  );
}

class Facility {
  List<dynamic>? equipments;
  List<dynamic>? accessDevices;
  List<dynamic>? category;
  String? id;
  String? tier;
  List<String>? gender;
  String? facilityName;
  String? contactPerson;
  String? facilityType;
  String? emailAddress;
  String? phoneNumber;
  String? websiteUrl;
  String? logoUrl;
  List<String>? images;
  String? address;
  int? pinCode;
  String? country;
  String? state;
  String? latitudeLognitude;
  List<dynamic>? aminitiesId;
  List<dynamic>? equipmentsId;
  List<dynamic>? facilityTiming;
  int? admissionFee;
  int? dailyPass;
  dynamic monthlyPass;
  dynamic threeMonthPass;
  dynamic sixMonthPass;
  dynamic annualPass;
  List<dynamic>? review;
  String? createdAt;
  String? updatedAt;
  int? v;
  List<Amenities>? amenities;
  List<FacilityTiming>? facilityTiming1;
  List<dynamic>? paymentInfo;

  Facility({this.equipments, this.accessDevices, this.category, this.id, this.tier, this.gender, this.facilityName, this.contactPerson, this.facilityType, this.emailAddress, this.phoneNumber, this.websiteUrl, this.logoUrl, this.images, this.address, this.pinCode, this.country, this.state, this.latitudeLognitude, this.aminitiesId, this.equipmentsId, this.facilityTiming1, this.admissionFee, this.dailyPass, this.monthlyPass, this.threeMonthPass, this.sixMonthPass, this.annualPass, this.review, this.createdAt, this.updatedAt, this.v, this.amenities, this.facilityTiming, this.paymentInfo});

  Facility.fromJson(Map<String, dynamic> json) {
    if(json["equipments"] is List) {
      equipments = json["equipments"] ?? [];
    }
    if(json["access_devices"] is List) {
      accessDevices = json["access_devices"] ?? [];
    }
    if(json["category"] is List) {
      category = json["category"] ?? [];
    }
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["tier"] is String) {
      tier = json["tier"];
    }
    if(json["gender"] is List) {
      gender = json["gender"] == null ? null : List<String>.from(json["gender"]);
    }
    if(json["facilityName"] is String) {
      facilityName = json["facilityName"];
    }
    if(json["contactPerson"] is String) {
      contactPerson = json["contactPerson"];
    }
    if(json["facility_type"] is String) {
      facilityType = json["facility_type"];
    }
    if(json["emailAddress"] is String) {
      emailAddress = json["emailAddress"];
    }
    if(json["phoneNumber"] is String) {
      phoneNumber = json["phoneNumber"];
    }
    if(json["websiteURL"] is String) {
      websiteUrl = json["websiteURL"];
    }
    if(json["logoUrl"] is String) {
      logoUrl = json["logoUrl"];
    }
    if(json["images"] is List) {
      images = json["images"] == null ? null : List<String>.from(json["images"]);
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["pin_code"] is num) {
      pinCode = (json["pin_code"] as num).toInt();
    }
    if(json["country"] is String) {
      country = json["country"];
    }
    if(json["state"] is String) {
      state = json["state"];
    }
    if(json["latitude_lognitude"] is String) {
      latitudeLognitude = json["latitude_lognitude"];
    }
    if(json["aminities_id"] is List) {
      aminitiesId = json["aminities_id"] ?? [];
    }
    if(json["equipments_id"] is List) {
      equipmentsId = json["equipments_id"] ?? [];
    }
    if(json["facility_timing"] is List) {
      facilityTiming = json["facility_timing"] ?? [];
    }
    if(json["admission_fee"] is num) {
      admissionFee = (json["admission_fee"] as num).toInt();
    }
    if(json["daily_pass"] is num) {
      dailyPass = (json["daily_pass"] as num).toInt();
    }
    monthlyPass = json["monthly_pass"];
    threeMonthPass = json["threeMonth_pass"];
    sixMonthPass = json["sixMonth_pass"];
    annualPass = json["annual_pass"];
    if(json["review"] is List) {
      review = json["review"] ?? [];
    }
    if(json["createdAt"] is String) {
      createdAt = json["createdAt"];
    }
    if(json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if(json["__v"] is num) {
      v = (json["__v"] as num).toInt();
    }
    if(json["amenities"] is List) {
      amenities = json["amenities"] == null ? null : (json["amenities"] as List).map((e) => Amenities.fromJson(e)).toList();
    }
    if(json["facilityTiming"] is List) {
      facilityTiming = json["facilityTiming"] == null ? null : (json["facilityTiming"] as List).map((e) => FacilityTiming.fromJson(e)).toList();
    }
    if(json["paymentInfo"] is List) {
      paymentInfo = json["paymentInfo"] ?? [];
    }
  }

  static List<Facility> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Facility.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(equipments != null) {
      _data["equipments"] = equipments;
    }
    if(accessDevices != null) {
      _data["access_devices"] = accessDevices;
    }
    if(category != null) {
      _data["category"] = category;
    }
    _data["_id"] = id;
    _data["tier"] = tier;
    if(gender != null) {
      _data["gender"] = gender;
    }
    _data["facilityName"] = facilityName;
    _data["contactPerson"] = contactPerson;
    _data["facility_type"] = facilityType;
    _data["emailAddress"] = emailAddress;
    _data["phoneNumber"] = phoneNumber;
    _data["websiteURL"] = websiteUrl;
    _data["logoUrl"] = logoUrl;
    if(images != null) {
      _data["images"] = images;
    }
    _data["address"] = address;
    _data["pin_code"] = pinCode;
    _data["country"] = country;
    _data["state"] = state;
    _data["latitude_lognitude"] = latitudeLognitude;
    if(aminitiesId != null) {
      _data["aminities_id"] = aminitiesId;
    }
    if(equipmentsId != null) {
      _data["equipments_id"] = equipmentsId;
    }
    if(facilityTiming != null) {
      _data["facility_timing"] = facilityTiming;
    }
    _data["admission_fee"] = admissionFee;
    _data["daily_pass"] = dailyPass;
    _data["monthly_pass"] = monthlyPass;
    _data["threeMonth_pass"] = threeMonthPass;
    _data["sixMonth_pass"] = sixMonthPass;
    _data["annual_pass"] = annualPass;
    if(review != null) {
      _data["review"] = review;
    }
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    if(amenities != null) {
      _data["amenities"] = amenities?.map((e) => e.toJson()).toList();
    }
    if(facilityTiming != null) {
      _data["facilityTiming"] = facilityTiming?.map((e) => e.toJson()).toList();
    }
    if(paymentInfo != null) {
      _data["paymentInfo"] = paymentInfo;
    }
    return _data;
  }

  Facility copyWith({
    List<dynamic>? equipments,
    List<dynamic>? accessDevices,
    List<dynamic>? category,
    String? id,
    String? tier,
    List<String>? gender,
    String? facilityName,
    String? contactPerson,
    String? facilityType,
    String? emailAddress,
    String? phoneNumber,
    String? websiteUrl,
    String? logoUrl,
    List<String>? images,
    String? address,
    int? pinCode,
    String? country,
    String? state,
    String? latitudeLognitude,
    List<dynamic>? aminitiesId,
    List<dynamic>? equipmentsId,
    List<dynamic>? facilityTiming,
    int? admissionFee,
    int? dailyPass,
    dynamic monthlyPass,
    dynamic threeMonthPass,
    dynamic sixMonthPass,
    dynamic annualPass,
    List<dynamic>? review,
    String? createdAt,
    String? updatedAt,
    int? v,
    List<Amenities>? amenities,
    List<FacilityTiming>? facilityTiming2,
    List<dynamic>? paymentInfo,
  }) => Facility(
    equipments: equipments ?? this.equipments,
    accessDevices: accessDevices ?? this.accessDevices,
    category: category ?? this.category,
    id: id ?? this.id,
    tier: tier ?? this.tier,
    gender: gender ?? this.gender,
    facilityName: facilityName ?? this.facilityName,
    contactPerson: contactPerson ?? this.contactPerson,
    facilityType: facilityType ?? this.facilityType,
    emailAddress: emailAddress ?? this.emailAddress,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    websiteUrl: websiteUrl ?? this.websiteUrl,
    logoUrl: logoUrl ?? this.logoUrl,
    images: images ?? this.images,
    address: address ?? this.address,
    pinCode: pinCode ?? this.pinCode,
    country: country ?? this.country,
    state: state ?? this.state,
    latitudeLognitude: latitudeLognitude ?? this.latitudeLognitude,
    aminitiesId: aminitiesId ?? this.aminitiesId,
    equipmentsId: equipmentsId ?? this.equipmentsId,
    facilityTiming: facilityTiming ?? this.facilityTiming,
    admissionFee: admissionFee ?? this.admissionFee,
    dailyPass: dailyPass ?? this.dailyPass,
    monthlyPass: monthlyPass ?? this.monthlyPass,
    threeMonthPass: threeMonthPass ?? this.threeMonthPass,
    sixMonthPass: sixMonthPass ?? this.sixMonthPass,
    annualPass: annualPass ?? this.annualPass,
    review: review ?? this.review,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    v: v ?? this.v,
    amenities: amenities ?? this.amenities,
    facilityTiming1: facilityTiming1 ?? this.facilityTiming1,
    paymentInfo: paymentInfo ?? this.paymentInfo,
  );
}

class FacilityTiming {
  Morning? morning;
  Evening? evening;
  String? day;
  String? id;

  FacilityTiming({this.morning, this.evening, this.day, this.id});

  FacilityTiming.fromJson(Map<String, dynamic> json) {
    if(json["morning"] is Map) {
      morning = json["morning"] == null ? null : Morning.fromJson(json["morning"]);
    }
    if(json["evening"] is Map) {
      evening = json["evening"] == null ? null : Evening.fromJson(json["evening"]);
    }
    if(json["day"] is String) {
      day = json["day"];
    }
    if(json["_id"] is String) {
      id = json["_id"];
    }
  }

  static List<FacilityTiming> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => FacilityTiming.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(morning != null) {
      _data["morning"] = morning?.toJson();
    }
    if(evening != null) {
      _data["evening"] = evening?.toJson();
    }
    _data["day"] = day;
    _data["_id"] = id;
    return _data;
  }

  FacilityTiming copyWith({
    Morning? morning,
    Evening? evening,
    String? day,
    String? id,
  }) => FacilityTiming(
    morning: morning ?? this.morning,
    evening: evening ?? this.evening,
    day: day ?? this.day,
    id: id ?? this.id,
  );
}

class Evening {
  String? start;
  String? end;
  bool? holiday;

  Evening({this.start, this.end, this.holiday});

  Evening.fromJson(Map<String, dynamic> json) {
    if(json["start"] is String) {
      start = json["start"];
    }
    if(json["end"] is String) {
      end = json["end"];
    }
    if(json["holiday"] is bool) {
      holiday = json["holiday"];
    }
  }

  static List<Evening> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Evening.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    _data["holiday"] = holiday;
    return _data;
  }

  Evening copyWith({
    String? start,
    String? end,
    bool? holiday,
  }) => Evening(
    start: start ?? this.start,
    end: end ?? this.end,
    holiday: holiday ?? this.holiday,
  );
}

class Morning {
  String? start;
  String? end;
  bool? holiday;

  Morning({this.start, this.end, this.holiday});

  Morning.fromJson(Map<String, dynamic> json) {
    if(json["start"] is String) {
      start = json["start"];
    }
    if(json["end"] is String) {
      end = json["end"];
    }
    if(json["holiday"] is bool) {
      holiday = json["holiday"];
    }
  }

  static List<Morning> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Morning.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    _data["holiday"] = holiday;
    return _data;
  }

  Morning copyWith({
    String? start,
    String? end,
    bool? holiday,
  }) => Morning(
    start: start ?? this.start,
    end: end ?? this.end,
    holiday: holiday ?? this.holiday,
  );
}

class Amenities {
  String? amenitiesName;
  String? isPaid;
  String? iconUrl;
  String? id;

  Amenities({this.amenitiesName, this.isPaid, this.iconUrl, this.id});

  Amenities.fromJson(Map<String, dynamic> json) {
    if(json["amenities_name"] is String) {
      amenitiesName = json["amenities_name"];
    }
    if(json["isPaid"] is String) {
      isPaid = json["isPaid"];
    }
    if(json["iconUrl"] is String) {
      iconUrl = json["iconUrl"];
    }
    if(json["_id"] is String) {
      id = json["_id"];
    }
  }

  static List<Amenities> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Amenities.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["amenities_name"] = amenitiesName;
    _data["isPaid"] = isPaid;
    _data["iconUrl"] = iconUrl;
    _data["_id"] = id;
    return _data;
  }

  Amenities copyWith({
    String? amenitiesName,
    String? isPaid,
    String? iconUrl,
    String? id,
  }) => Amenities(
    amenitiesName: amenitiesName ?? this.amenitiesName,
    isPaid: isPaid ?? this.isPaid,
    iconUrl: iconUrl ?? this.iconUrl,
    id: id ?? this.id,
  );
}