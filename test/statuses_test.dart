import 'package:statuses/statuses.dart';
import 'package:test/test.dart';

void main() {
    test('Fetching statuses', () async {
      final statusesArray = await Statuses.list();
      expect(statusesArray.length, greaterThan(0));
      expect(statusesArray.first.code, 1);
    });
}
