import 'package:edemokracia/admin/rest/package.dart';
import 'downloader_stub.dart'
// ignore: uri_does_not_exist
    if (dart.library.io) 'mobile_downloader.dart'
// ignore: uri_does_not_exist
    if (dart.library.html) 'web_downloader.dart';

abstract class Downloader {
  Future<void> downloadFile(JudoDownloadFile file) async {}

  factory Downloader() => getDownloader();
}
