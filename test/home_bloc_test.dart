import 'package:flutter_test/flutter_test.dart';
import 'package:relacionamento_app/src/home/home_bloc.dart';
import 'package:relacionamento_app/src/shared/models/post.dart';
import 'package:relacionamento_app/src/shared/repositories/general_api.dart';

 main( ){
  var bloc  = HomeBloc(GeneralApi());
  test('lista completa', (){
    bloc.listIn.add(true);
    expect(bloc.listOut, emits(List<Post>()));

  }, skip: true);
}