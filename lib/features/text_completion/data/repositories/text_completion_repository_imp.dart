import 'dart:html';

import 'package:chatgpt/features/text_completion/data/model/text_completion_model.dart';
import 'package:chatgpt/features/text_completion/domain/repositories/text_completion_repo.dart';

import '../remote_data_source/text_completion_remote_data_source.dart';

class TextCompletionRepositoryImpl implements TextCompletionRepository {
  final TextCompletionRemoteDataSource remoteDataSource;

  TextCompletionRepositoryImpl({required this.remoteDataSource});

  @override
  Future<TextCompletionModel> getTextCompletion(String query) async {
    return remoteDataSource.getTextCompletion(query);
  }
}
