import 'dart:io';

import 'package:flutter_full_learn/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';


abstract class IFileDownload{
    bool? downloadItem(FileItem? fileItem);

    void toShare(String path) async {
        // ignore: deprecated_member_use
        await launch(path);
    }
}

class FileDownload extends IFileDownload with ShareMixin{
    @override
    bool? downloadItem(FileItem? fileItem) {
        if (fileItem == null) throw FileDownloadException();
        print('a');

        return true;
    }
    void smsShare() {}
    
}

class SMSDownload implements IFileDownload {
     @override
    bool? downloadItem(FileItem? fileItem) {
        if (fileItem == null) throw FileDownloadException();
        print('a');

        return true;
    }
    
      @override
      Future<void> toShare(String path) async {
        // ignore: deprecated_member_use
        await launch("sms: $path");
      }
 
    
}

class FileItem{
    final String name;
    final File file;

    FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDownload {
    void toShowFile(params) {
      
    }
}