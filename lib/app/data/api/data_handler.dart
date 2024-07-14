import 'package:askapp/app/utils/constants.dart';


handlingData(response) {
  if (response is LoadDataState){
    return response ;
  }else{
    return LoadDataState.loading ;
  }
}