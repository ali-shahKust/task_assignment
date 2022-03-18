import 'package:dio/dio.dart';
import 'package:task_assignment/data/model/item_response_model.dart';

class ApiClient {
  static String apiUrl = "http://3.128.210.224:3003/api/v2/grocery/getSellingItems";
  final Dio _dio = Dio();
  Future<ItemResponseModel> getItems(index)async {
    var params = {"bundleIndex": index, };
    try {
      print("called");
      Response response = await _dio.post(apiUrl, queryParameters: params);
      print("Response Result ${response.data}");
      return ItemResponseModel.fromJson(response.data);
    } catch (error, stacktrace) {
      return ItemResponseModel.withError("Error: $error, StackTrace: $stacktrace");
    }
  }
}