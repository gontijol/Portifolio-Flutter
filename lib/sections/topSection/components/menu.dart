import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/about_section.dart';
import 'package:web_app/sections/contact/contact_section.dart';
import 'package:web_app/sections/feedback/feedback_section.dart';
import 'package:web_app/sections/recent_work/recent_work_section.dart';
import 'package:web_app/sections/service/service_section.dart';
import 'package:web_app/sections/topSection/top_section.dart';

final controller = ScrollController();

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Inicio",
    "Sobre",
    "Serviços",
    "Portifolio",
    "Contato"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1200),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
            if (selectedIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstRoute()),
              );
            } else if (selectedIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            } else if (selectedIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdRoute()),
              );
            } else if (selectedIndex == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FourthRoute()),
              );
            } else if (selectedIndex == 4) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FivethRoute()),
              );
            }
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: TextStyle(fontSize: 20, color: kTextColor),
              ),
              // Hover
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -20 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
              // Select
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
            ],
          ),
        ),
      );
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: kDefaultPadding * 2),
              Container(
                margin: EdgeInsets.only(top: kDefaultPadding),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.tealAccent[700], // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.reply_sharp),
                  label: Text(
                    'Clique aqui para voltar!',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              AboutSection(),
              SizedBox(height: kDefaultPadding),
              // This SizeBox just for demo
              // SizedBox(
              //   height: 500,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: kDefaultPadding * 2),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.tealAccent[700], // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.reply_sharp),
                label: Text(
                  'Clique aqui para voltar!',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ServiceSection(),
              SizedBox(height: kDefaultPadding),
              // This SizeBox just for demo
              // SizedBox(
              //   height: 500,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class FourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: kDefaultPadding * 2),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.tealAccent[700], // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.reply_sharp),
                label: Text(
                  'Clique aqui para voltar!',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              RecentWorkSection(),
              SizedBox(height: kDefaultPadding),
              // This SizeBox just for demo
              // SizedBox(
              //   height: 500,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class FivethRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: kDefaultPadding * 2),
              Container(
                padding: const EdgeInsets.all(1.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.tealAccent[700], // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.reply_sharp),
                  label: Text(
                    'Clique aqui para voltar!',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding * 2),
              ContactSection(),
              SizedBox(height: kDefaultPadding),
              // This SizeBox just for demo
              // SizedBox(
              //   height: 500,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
