import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with  GetSingleTickerProviderStateMixin{
  late TabController _tabController;
  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();

    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSection);
  }

  _handleTabSection() {
    if (_tabController.indexIsChanging) {
      currentIndex.value = _tabController.index;
    }
  }

  @override
  void onClose() {
    _tabController.dispose();
    super.onClose();
  }

  TabController get tabController => _tabController;
}