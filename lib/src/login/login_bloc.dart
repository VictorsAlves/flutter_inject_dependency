import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:path/path.dart';
import 'package:relacionamento_app/src/shared/services/authentication/Authentication.dart';
import 'package:relacionamento_app/src/home/home_page.dart';

class LoginBloc implements BlocBase{
  final _authentication = new Authentication();


  onClickGoogle(){

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }


  @override
  void addListener(listener) {
    // TODO: implement addListener
  }

  @override
  void dispose() {
    // TODO: implement dispose
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