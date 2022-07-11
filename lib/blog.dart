import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'config.dart';
import 'widgets.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    SiteConfig.screenHeight = MediaQuery.of(context).size.height;
    SiteConfig.screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: SiteConfig.getAppBar(context, "Blog"),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: SiteConfig.screenHeight * 0.2,
                width: SiteConfig.screenWidth * 0.9,
                color: Colors.amber.withAlpha(100),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Blog",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
              ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.center,
                rowPadding: const EdgeInsets.all(20),
                columnPadding: const EdgeInsets.all(16),
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Column(
                      children: [
                        const MyContainer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Ler mais"),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Column(
                      children: [
                        const MyContainer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Ler mais"),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Column(
                      children: [
                        const MyContainer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Ler mais"),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Column(
                      children: [
                        const MyContainer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Ler mais"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.center,
                rowPadding: const EdgeInsets.all(20),
                columnPadding: const EdgeInsets.all(16),
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Column(
                      children: [
                        const MyContainer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Ler mais"),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Column(
                      children: [
                        const MyContainer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Ler mais"),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Column(
                      children: [
                        const MyContainer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Ler mais"),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Column(
                      children: [
                        const MyContainer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Ler mais"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: SiteConfig.screenHeight * 0.2,
                width: SiteConfig.screenWidth * 0.9,
                color: Colors.amber.withAlpha(100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: const [
                          Text(
                            "Redes sociais",
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(Icons.add_a_photo)
                        ],
                      ),
                    ),
                    Column(
                      children: const [
                        Text(
                          "Contato",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.chat_rounded)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: const [
                          Text(
                            "Alguma coisa",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
