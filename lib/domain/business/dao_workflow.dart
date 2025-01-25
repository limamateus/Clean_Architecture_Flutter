

import 'package:hyrule/domain/models/entrey.dart';

abstract class DaoWorkflow{
  // Interface que resposavel por retornar uma lista de Entry
  Future<List<Entry>> getSavedEntries();

  // Interface que é responsavel por salvar uma Entry
  Future<void> saveEntry({required Entry entry});

  // Interface que é responsavel por deletar uma Entry
  Future<void> deleteEntry({required Entry entry});

}

