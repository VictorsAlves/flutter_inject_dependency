import 'package:dio/dio.dart';
import 'package:relacionamento_app/src/shared/constants.dart';
import 'package:relacionamento_app/src/shared/models/post.dart';

class GeneralApi {
  //instancia do dio
  final Dio dio;

// construtor do reositorio
  GeneralApi(this.dio);

// método para pegar os post da aplicação
  Future<List<Post>> getPosts() async {
    Response response = await dio.get("/posts");

    return (response.data as List).map((post) => Post.fromJson(post)).toList();
  }
}
