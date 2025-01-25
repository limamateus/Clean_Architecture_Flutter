import 'package:hyrule/domain/models/entrey.dart';

abstract class ApiWorkflow {
  Future<List<Entry>> getEntriesByCategory({required String category});
}
