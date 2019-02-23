import 'package:url_launcher/url_launcher.dart';

urlLauncher(uRL) async {
  if (await canLaunch(uRL)) {
    await launch(uRL);
  } else {
    throw 'Could not launch $uRL';
  }
}
