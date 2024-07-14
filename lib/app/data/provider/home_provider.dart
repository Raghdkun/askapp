import 'package:askapp/app/data/api/api_connect.dart';
import 'package:askapp/app/data/model/user.dart';
import 'package:askapp/app/utils/constants.dart';

class HomeProvider {
  ApiConnect? apiConnect;

  HomeProvider(this.apiConnect);

  // Get request
  // Future<User> getUser() async {
  //   return User.fromJson(
  //     (await ApiConnect.instance.get(EndPoints.user)).getBody(),
  //   );
  // }
  getData() async {
    var response = await apiConnect!.postData(EndPoints.baseUrl, {});
    return response.fold((l) => l, (r) => r);
  }


}
