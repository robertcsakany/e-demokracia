import 'package:edemokracia/admin/rest/package.dart';
import 'downloader.dart';

class MobileDownloader implements Downloader {
  Future<void> downloadFile(JudoDownloadFile file) async {}
}

Downloader getDownloader() => MobileDownloader();
