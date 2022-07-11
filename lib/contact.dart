import 'package:flutter/material.dart';
import 'config.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SiteConfig.screenHeight = MediaQuery.of(context).size.height;
    SiteConfig.screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: SiteConfig.getAppBar(context, "Contato"),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: Container(
                height: SiteConfig.screenHeight * 0.5,
                width: SiteConfig.screenHeight * 0.5,
                color: Colors.amber,
              ),
            ),
          ),
        ));
  }
}
