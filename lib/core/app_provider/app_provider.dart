import 'package:alumni/features/home/presentation/view_model/sign_in_view_model.dart';
import 'package:alumni/features/home/presentation/view_model/verify_and_login_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProvider {
  static final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => SignInViewModel(),),
    ChangeNotifierProvider(create: (_) => VerifyAndLoginViewModel(),),
  ];
}