import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Luigi Gontijo, ex-estudante em Engenharia Elétrica atualmente cursando Ciências da Computação na UFG, experiência com estúdio de gravação para cursos ead e manutenção geral de equipamentos eletrônicos na Rede Juris. Amante da tecnologia buscando um espaço para aprender e desenvolver meus conhecimentos.\n\nAtualmente sou gerente de Esports da UFG Eagles.",
                ),
              ),
              ExperienceCard(numOfExp: "02"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Conhecimento em:\n- Flutter\n- Git\n- Javascript\n- C\n- Design UI/UX With Figma",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Me Contrate!",
                press: () {},
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Baixar CV",
                press: () async {
                  {
                    const url =
                        'https://drive.google.com/u/0/uc?id=1nzql1M02qdnHK6oHd5HbwMhqv-A-tNVe&export=download';
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
        ],
      ),
    );
  }
}
