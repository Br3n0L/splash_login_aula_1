import 'package:flutter/material.dart';
import 'package:splash_login_aula_1/controlles/home_controller.dart';
import 'package:splash_login_aula_1/models/post_model.dart';
import 'package:splash_login_aula_1/repositories/home_repository_mock.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryMock());

  @override
  void initState() {
    super.initState();
    _controller.fatch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.builder(
                itemCount: list.length,
                itemBuilder: (_, idx) => ListTile(
                      title: Text(list[idx].title),
                    ));
          }),
    );
  }
}
