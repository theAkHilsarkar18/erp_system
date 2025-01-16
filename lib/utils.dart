import 'dart:typed_data';

import 'package:flutter/cupertino.dart';

TextEditingController txtId = TextEditingController(text: '1001');
TextEditingController txtName = TextEditingController(text: 'Rishi Dadhich');
TextEditingController txtAge = TextEditingController(text: '20');
TextEditingController txtCourse = TextEditingController(text: 'Master in Flutter Development');
TextEditingController txtPhone = TextEditingController(text: '+91 9825486060');
TextEditingController txtAddress = TextEditingController(text: 'A-107, Silicon Hills, OM Nagar, Kharavasa Road, Dindoli, Surat');

List studentsList = [];
String netImage = 'https://thumb.ac-illust.com/be/bee98c70d1cfc02d0f387d2852464bf5_t.jpeg'
;int listIndex = 0;
Uint8List? photo;


// Home : List -click-> detail -edit click-> edit
// All --> Selected --> Selected