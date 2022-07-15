import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'log.dart';

extension FileEx on File {
  String get name => _getName();

  String _getName() {
    var values = path.split(Platform.pathSeparator);
    if (values.isEmpty) return ('');
    return values.last;
  }
}

abstract class FileTools {
  static Directory get directory => Directory.current;

  /// [createNewFolder] this create new folder if not exist
  static Future<bool> createNewFolder(
      {required Directory file, bool recursive = true}) async {
    try {
      if (await file.exists()) return false;

      if (await (await file.create(recursive: recursive)).exists()) return true;
    } catch (error) {
      showError(file.path);
    }
    return false;
  }

  /// [newFile] create a new file if there is no
  static Future<bool> createNewFile({
    required File file,
    required String content,
    bool replace = false,
    String commandLog = '',
  }) async {
    try {
      if (await file.exists() && !replace) {
        showWarning(file.path, operator: commandLog);
        return true;
      }
      await file.writeAsString(content);
      showCreated(file.path, operator: commandLog);
      return true;
    } catch (error) {
      showError(error.toString(), operator: commandLog);
    }
    return false;
  }

  static String createFileLink(
          {required String fileName, required String dir}) =>
      path.join(dir, fileName);

  static Directory constructPath(
      {required String name, required String defaultPath}) {
    return Directory(path.join(directory.path, '$defaultPath$name'));
  }
}
