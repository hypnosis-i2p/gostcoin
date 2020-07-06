import 'dart:io';

import 'package:flutter/material.dart';

Image imageResource(String key) {
  return Image.file(File("res/images/$key"));
}