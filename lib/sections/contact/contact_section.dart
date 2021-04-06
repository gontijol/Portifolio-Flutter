import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/socal_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contato",
            subTitle: "Entre em contato para qualquer projeto Front-End",
            color: Colors.tealAccent[100],
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                color: Colors.tealAccent[100],
                iconSrc: "assets/images/skype.png",
                name: 'LinkedIn',
                press: () async {
                  {
                    const url = 'https://br.linkedin.com/in/luigigontijo';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }
                },
              ),
              SocalCard(
                color: Colors.tealAccent[400],
                iconSrc: "assets/images/whatsapp.png",
                name: 'Whatsapp',
                press: () async {
                  {
                    const url =
                        'https://api.whatsapp.com/send?phone=5562996084744&text=Ol%C3%A1%20Luigi!%20Tudo%20Bem%20%3F';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }
                },
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Nome",
                hintText: "Nome Completo",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Entre com seu endereço de Email",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Tipo de Projeto",
                hintText: "Dê um",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Descrição",
                hintText: "Escvreva uma descrição do seu projeto.",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: () async {
                  final Uri params = Uri(
                    scheme: 'mailto',
                    path: 'gontijol@live.com',
                    query: 'Contato Email',
                  );
                  String url = params.toString();
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    print('Could not launch $url');
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
