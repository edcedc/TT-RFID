import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../bean/BaseResponseBean.dart';
import '../http/dio_client.dart';
part "api_service.g.dart";

@RestApi(baseUrl: ApiService.BASE_URL)
abstract class ApiService {
  factory ApiService({Dio? dio, String? baseUrl}) {
    dio ??= DioClient().dio;
    return _ApiService(dio, baseUrl: baseUrl);
  }

  static const String BASE_URL =
      "http://" +
          "47.243.120.137"
          +  "/AirProceManagementPlatform_V5/AirProceWebService/MobileWebService.asmx/";

  ///获取分类数据
  @POST("GetAirDetectorAndData")
  Future<BaseResponseBean> queryCategoryData(
    @Field("airDetectorName") String airDetectorName,
    @Field("URoNo") String URoNo
  );

}
