import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final response = await showDialog(
            context: context,
            barrierDismissible: false, //etrafa basarak kapatamaz uyarıyı??
            builder: (context) {
              return _ImageZoomDialog();
            });
      }),
      appBar: AppBar(),
    );
  }
}

class _UpdateDialog extends StatelessWidget {
  const _UpdateDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Version Update!'),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text('Update')),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Close')),
      ],
    );
  }
}

class UpdateDialog extends AlertDialog {
  UpdateDialog({super.key, required BuildContext context})
      : super(title: Text(Keys.versionUpdate), actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text('Update')),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close')),
        ]);
}

class Keys {
  static const versionUpdate = 'Version Update!';
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    Key? key,
  }) : super(key: key);
  final String _url = 'https://picsum.photos/200';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(
        child: Image.network(
          _url,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
    );
  }
}
