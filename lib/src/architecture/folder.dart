import 'dart:io';

class Folder<String> {
  final String value;

  List<Folder<String>> children = [];

  bool get hasChildren => children.isNotEmpty;

  Folder(this.value);

  Folder<String> add(Folder<String> child) {
    children.add(child);
    return this;
  }

  Folder<String> addAll(List<Folder<String>> list) {
    children = list;
    return this;
  }

  Folder<String> copyWith({String? value}) {
    var folder = Folder(value ?? this.value);
    folder.addAll(this.children);
    return folder;
  }
}

extension FolderExtension on Folder {
  /// [_forEachDepthFirst] run tree
  void forEachDepthFirst(Folder node, performAction(value)) {
    performAction(node);
    for (var child in node.children) {
      var newValue = '${node.value}${Platform.pathSeparator}${child.value}';
      forEachDepthFirst(child.copyWith(value: newValue), performAction);
    }
  }
}
