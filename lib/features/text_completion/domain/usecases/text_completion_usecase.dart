import 'package:chatgpt/features/text_completion/data/model/text_completion_model.dart';
import 'package:chatgpt/features/text_completion/domain/repositories/text_completion_repo.dart';

class TextCompletionUseCase {
  final TextCompletionRepository repository;

  TextCompletionUseCase({required this.repository});

  Future<TextCompletionModel> call(String query) async {
    return repository.getTextCompletion(query);
  }
}
