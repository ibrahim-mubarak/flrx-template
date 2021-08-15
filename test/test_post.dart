import 'package:flutter_test/flutter_test.dart';

import 'mocks/mock_auth_service.dart';

main() {
  test('Post Service returns List of posts', () async {
    var postService = MockPostService();
    var response = await postService.getAll();
    expect(5, response.length);
  });
}
