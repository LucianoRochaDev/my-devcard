import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffb7e3ff2),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpg'),
                radius: 50.0,
              ),
              Text(
                'Luciano Rocha Cunha',
                style: TextStyle(
                  fontSize: 38.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Birthstone',
                ),
              ),
              Text(
                'Estagiário em Desenvolvimento Web/Mobile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                ),
              ),
              Container(
                color: Colors.white,
                width: 350.0,
                margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
                padding: EdgeInsets.all(1.0),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 30.0,
                      spreadRadius: -31.0,
                      offset: Offset(0.0, 9.0),
                    )
                  ],
                ),
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  //padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    onTap: _launchWhatsapp,
                    leading: FaIcon(FontAwesomeIcons.phoneAlt,
                        size: 21.0, color: Color(0xffb7e3ff2)),
                    title: Text(
                      '+55 27 99590-XXXX',
                      style: TextStyle(fontSize: 19.5),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 30.0,
                      spreadRadius: -31.0,
                      offset: Offset(0.0, 9.0),
                    )
                  ],
                ),
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  //padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    onTap: _launchEmail,
                    leading: FaIcon(FontAwesomeIcons.envelope,
                        color: Color(0xffb7e3ff2)),
                    title: Text(
                      'luciano.rocha.dev@gmail.com',
                      style: TextStyle(fontSize: 19.5),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 30.0,
                      spreadRadius: -31.0,
                      offset: Offset(0.0, 9.0),
                    )
                  ],
                ),
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  //padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    onTap: _launchLinkedin,
                    leading: FaIcon(FontAwesomeIcons.linkedin,
                        size: 26.0, color: Color(0xffb7e3ff2)),
                    title: Text(
                      'luciano-rocha-cunha',
                      style: TextStyle(fontSize: 19.5),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 30.0,
                      spreadRadius: -31.0,
                      offset: Offset(0.0, 9.0),
                    )
                  ],
                ),
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    onTap: _launchGithub,
                    leading: FaIcon(FontAwesomeIcons.github,
                        size: 24.5, color: Color(0xffb7e3ff2)),
                    title: Text(
                      'LucianoRochaDev',
                      style: TextStyle(fontSize: 19.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _launchGithub() async {
  const _url = 'https://github.com/LucianoRochaDev?tab=repositories/';
  await canLaunch(_url)
      ? await launch(_url)
      : throw "Não foi possível abrir $_url";
}

void _launchLinkedin() async {
  const _url = 'https://www.linkedin.com/in/luciano-rocha-cunha-aba70085/';
  await canLaunch(_url)
      ? await launch(_url)
      : throw "Não foi possível abrir $_url";
}

void _launchEmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'luciano.rocha.dev@gmail.com',
    query: 'subject=Usei seu App!&body=Usei o aplicativo My DevCard...',
  );
  String url = params.toString();
  launch(url);
}

void _launchWhatsapp() async {
  const _url = "https://wa.me/5527995902503?text=Usei seu App!";
  var encoded = Uri.encodeFull(_url);
  await launch(encoded, forceSafariVC: false);
}
