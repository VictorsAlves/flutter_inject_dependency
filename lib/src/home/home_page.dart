// TODO Implement this library.// TODO Implement this library.import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:relacionamento_app/src/home/home_bloc.dart';
import 'package:relacionamento_app/src/shared/models/post.dart';
import 'package:relacionamento_app/src/shared/repositories/general_api.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final bloc = BlocProvider.getBloc<HomeBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text('teste'),
      ),
      body: StreamBuilder<List<Post>>(
        stream: bloc.listOut,
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );
          List<Post> posts = snapshot.data;
          return ListView.separated(
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text(posts[index].title),);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          );
        },
      ),
    );
  }
}
