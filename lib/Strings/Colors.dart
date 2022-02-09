// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:flutter/cupertino.dart';

bool isDark = true;

const Color appbarDark = Color(0xFF128C7E);
const Color backgroundDark = Color(0xFF075E54);
const Color appbarlight = Color(0xFF25D366);
const Color Backgroundlight = Color(0xFFFFFFFF);

Color appbarColor = isDark ? appbarDark : appbarlight;
Color BackgroundColor = isDark ? backgroundDark : Backgroundlight;
