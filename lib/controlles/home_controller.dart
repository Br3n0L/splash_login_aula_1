import 'package:flutter/material.dart';
import 'package:splash_login_aula_1/models/post_model.dart';
import 'package:splash_login_aula_1/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _homeRepository;

  HomeController(this._homeRepository);
  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fatch() async {
    posts.value = await _homeRepository.getList();
  }
}
