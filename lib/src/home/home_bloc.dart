import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:relacionamento_app/src/shared/models/post.dart';
import 'package:relacionamento_app/src/shared/repositories/general_api.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc implements BlocBase{
  final GeneralApi api;

  HomeBloc(this.api);

final BehaviorSubject _listController = BehaviorSubject(seedValue: true);

 Observable <List<Post>> get listOut => _listController.stream.asyncMap((v) => api.getPosts());
 Sink get listIn => _listController.sink;




  @override
  void dispose() {
    _listController.close();
  }

  @override
  void addListener(listener) {
    // TODO: implement addListener
  }

  @override
  // TODO: implement hasListeners
  bool get hasListeners => null;

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
  }

  @override
  void removeListener(listener) {
    // TODO: implement removeListener
  }


}