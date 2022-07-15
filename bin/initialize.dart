import 'package:no_repeat/src/architecture/architecture.dart';
import 'package:no_repeat/src/generate_files.dart';
import 'package:no_repeat/src/log.dart';

main(List<String> args) async {
  await generateAssetsFolders();

  if (await generateStructureFolders()) {
    await generateFilesForStructure();
  }
}
