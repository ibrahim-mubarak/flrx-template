import 'package:flrx_skeleton/modules/common/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory AppState(List<Post> posts) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
