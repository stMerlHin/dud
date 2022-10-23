import 'package:dud/dud.dart';

void main() async {
  DownloadTask d = DownloadTask.create(
      url: 'http://localhost/download/contracts/54861ea0-5176-11ed-b03f-fda8a29f250a.pdf',
      savePath: 'download/contract.pdf',
      trustBadCertificate: true
  );

  await d.run(
      onProgress: (pr) async {
        // if(pr == 50) {
        //   await d.pause();
        //   print(d.isRunning);
        //   print('paused ${d.downloadedByte}');
        // }
        print('$pr% ${d.isRunning}');
      },
      onSuccess: (str) {
        print('success');
        print(str);
      }, onError: (str) {
    print(str);
  });

  // Timer(Duration(seconds: 10), () {
  //   print('RESUMING');
  //   d.resume(onProgress: (pr) async {
  //     print('$pr% ${d.isRunning}');
  //   },
  //       onSuccess: (str) {
  //         print('success');
  //         print(str);
  //       }, onError: (str) {
  //         print(str);
  //       });
  // });

  // UploadTask.uploadDoc(
  //     headers: {
  //       "file_name": "big2.avi",
  //       "app_signature": '91a2dbf0-292d-11ed-91f1-4f98460f463c',
  //       "the_mime": "application/avi"
  //     },
  //     file: File('big2.avi'),
  //     destination: 'http://localhost/upload/contracts',
  //     onProgress: (progress) {
  //       print(progress);
  //     },
  //     onSuccess: (url) {
  //       print(url);
  //     },
  //     onError: (e) {
  //       print(e);
  //     });

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
