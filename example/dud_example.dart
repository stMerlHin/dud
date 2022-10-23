import 'dart:async';
import 'dart:io';

import 'package:dud/dud.dart';
import 'package:path/path.dart';

void main() async {
  // DownloadTask d = DownloadTask.create(
  //     url: 'http://192.168.1.83:8080/download/2_7.avi',
  //     savePath: 'big2',
  //     trustBadCertificate: true
  // );
  //
  // d.run(
  //   onProgress: (pr) async {
  //     if(pr == 50) {
  //       await d.pause();
  //       print(d.isRunning);
  //       print('paused ${d.downloadedByte}');
  //     }
  //     print('$pr% ${d.isRunning}');
  //   },
  //     onSuccess: (str) {
  //     print('success');
  //       print(str);
  //     }, onError: (str) {
  //     print('failure');
  //     print(d.downloadedByte);
  //       print(str);
  // });
  //
  // Timer(Duration(seconds: 10), () {
  //   print('RESUMING');
  //   d.resume(onProgress: (pr) async {
  //     print('$pr% ${d.isRunning}');
  //   },
  //       onSuccess: (str) {
  //         print('success');
  //         print(str);
  //       }, onError: (str) {
  //         print('failure');
  //         print(d.downloadedByte);
  //         print(str);
  //       });
  // });

  UploadTask.uploadDoc(
      headers: {
        "file_name": "big2.avi",
        "app_signature": '91a2dbf0-292d-11ed-91f1-4f98460f463c',
        "the_mime": "application/avi"
      },
      file: File('big2.avi'),
      destination: 'http://localhost/upload/contracts',
      onProgress: (progress) {
        print(progress);
      },
      onSuccess: (url) {
        print(url);
      },
      onError: (e) {
        print(e);
      });

  // await UploadTask.uploadFile(
  //     url: 'http://localhost:80/upload/contracts',
  //   onSuccess: (str) {
  //       print(str);
  //   },
  //   onError: (e) {
  //       print(e);
  //   }
  // );

  print('one moment');
}
