import 'dart:html';
import 'package:edemokracia/admin/rest/package.dart';
import 'downloader.dart';

class WebDownloader implements Downloader {
  Future<void> downloadFile(JudoDownloadFile file) async {
    final url = Url.createObjectUrlFromBlob(file.file);
    final anchor = document.createElement('a') as AnchorElement
      ..href = url
      ..style.display = 'none'
      ..download = file.filename;
    document.body.children.add(anchor);

    anchor.click();

    document.body.children.remove(anchor);
    Url.revokeObjectUrl(url);
  }
}

Downloader getDownloader() => WebDownloader();
