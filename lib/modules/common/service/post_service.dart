import 'package:dio/dio.dart';
import 'package:flrx_skeleton/modules/common/models/post.dart';
import 'package:retrofit/retrofit.dart';

part 'post_service.g.dart';

@RestApi()
abstract class PostService {
  PostService();

  factory PostService.newInstance(Dio dio, {String baseUrl}) = _PostService;

  @GET('/posts')
  Future<List<Post>> getAll();
}
