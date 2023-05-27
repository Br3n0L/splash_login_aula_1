import 'package:splash_login_aula_1/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
