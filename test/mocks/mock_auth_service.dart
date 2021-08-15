import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:flrx_skeleton/modules/common/models/post.dart';
import 'package:flrx_skeleton/modules/common/service/post_service.dart';

class MockPostService extends PostService {
  @override
  Future<List<Post>> getAll() async {
    return PostFixture.factory().makeMany(5);
  }
}

extension PostFixture on Post {
  static _PostFixtureFactory factory() => _PostFixtureFactory();
}

class _PostFixtureFactory extends FixtureFactory<Post> {
  @override
  FixtureDefinition<Post> definition() => define(
        (faker) => Post(
          title: faker.lorem.sentence(),
          id: faker.randomGenerator.integer(100),
          userId: faker.randomGenerator.integer(100),
          body: faker.lorem.sentences(4).join('\n'),
        ),
      );

  // If you need to override a model field, simply define a function that returns a `FixtureDefinition`.
  // To redefine the default definition, you must use the `redefine` function.
  FixtureDefinition<Post> withTitle(String title) => redefine(
        (post) => post.copyWith(title: title),
      );
}
