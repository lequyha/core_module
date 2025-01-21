import 'package:core_module/src/config/service_path.dart';
import 'package:core_module/src/domain/models/base_response_model.dart';
import 'package:core_module/src/domain/models/discussion_module/comment_dto.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'comment_service.g.dart';

@lazySingleton
@RestApi()
abstract class CommentService {
  @factoryMethod
  factory CommentService(Dio dio, {String baseUrl}) = _CommentService;

  @factoryMethod
  static CommentService create(Dio dio) {
    return CommentService(dio, baseUrl: ServicePath.commentPath);
  }

  @GET('/load')
  Future<HttpResponse<BaseResponseModel<CommentDto>>> getAllComments({
    @Query('objectId') required int objectId,
    @Query('objectType') required String objectType,
    @Query('loadReply') bool loadReply = true,
  });

  @POST('/create')
  @FormUrlEncoded()
  Future<HttpResponse<BaseResponseModel<CommentDto>>> createNewComment({
    @Query('objId') required int objId,
    @Field('comment') required String comment,
    @Field('objectType') required String objectType,
  });
}
