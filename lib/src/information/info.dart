import 'package:no_repeat/src/architecture/folder.dart';
import 'package:no_repeat/src/file_tools.dart';

class FileInfo {
  final String className;
  final String extension;
  final String content;
  final bool replace;
  final Folder<String> folder;

  FileInfo(
      {required this.className,
      required this.extension,
      required this.folder,
      this.replace = false,
      required this.content});
}

extension FileInfoExtension on FileInfo {
  String get path => _getPath();

  String _getPath() {
    var dir = '';
    this.folder.forEachDepthFirst(folder, (node) {
      dir = FileTools.constructPath(name: node.value, defaultPath: '').path;
    });
    return FileTools.createFileLink(fileName: '$className$extension', dir: dir);
  }
}
