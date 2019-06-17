import 'package:flutter_test/flutter_test.dart';
import 'package:relacionamento_app/src/shared/models/post.dart';
import 'package:relacionamento_app/src/shared/repositories/general_api.dart';

main() {

  var api = GeneralApi();

  test('get posts', () async {
    List<Post> data = await api.getPosts();

    expect(data[0].id, 1);
  });
}
