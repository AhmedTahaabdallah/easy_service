import 'package:scoped_model/scoped_model.dart';
import './connected_problems.dart';
class MainModel extends Model with ConnectedProblemsModel, UserModel,ProductsModel, UtiltyModel{

}