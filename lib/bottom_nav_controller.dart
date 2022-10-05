import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:instar/messgae_pop_up.dart';

import 'add.dart';

enum PageName { home, search, add, drug, myPage }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;
  List<int> bottomHistory = [0];

  void changeBottomNav(int value, {bool hasGesture = true}) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.home:
        _changePage(value);
        break;
      case PageName.search:
        _changePage(value);
        break;
      case PageName.add:
        Get.to(Add());
        break;
      case PageName.drug:
        _changePage(value);
        break;
      case PageName.myPage:
        _changePage(value, hasGesture: hasGesture);
        break;
    }
  }

  void _changePage(int value, {bool hasGesture = true}) {
    pageIndex(value);
    if (!hasGesture) {
      print(bottomHistory);
      return;
    }
    if (bottomHistory.last != value) {
      bottomHistory.add(value);
      print(bottomHistory);
    }
  }

  Future<bool> willPopAction() async {
    if (bottomHistory.length == 1) {
      showDialog(
          context: Get.context!,
          builder: (context) => MessagePopUp(
                title: "복약e",
                message: "종료하시겠습니까?",
                ok: () {
                  exit(0);
                },
                cancel: Get.back,
              ));
      return true;
    } else {
      bottomHistory.removeLast();
      var index = bottomHistory.last;
      changeBottomNav(index);
      print(bottomHistory);
      return false;
    }
  }
}
