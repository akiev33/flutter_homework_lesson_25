import 'package:flutter/material.dart';
import 'package:flutter_project_lesson_24/theme/colors.dart';
import 'package:flutter_project_lesson_24/theme/text_styles.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: const HomePage(),
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(initialPage: 0);
  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () => controller.previousPage(
                duration: const Duration(seconds: 1), curve: Curves.easeInOut),
            child: Text('Back', style: TextStyles.nunito16w400),
          ),
          TextButton(
            onPressed: () => controller.nextPage(
                duration: const Duration(seconds: 1), curve: Curves.easeInOut),
            child: Text('Skip', style: TextStyles.nunito16w400),
          ),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset('assets/images/1x.png'),
                  ),
                  const SizedBox(height: 114),
                  Text(
                    'Welcome!',
                    style: TextStyles.nunito40w700,
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'There are so many things you have to \nexperience in your life...',
                    style:
                        TextStyles.nunito16w400.copyWith(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    height: 270,
                    width: double.infinity,
                    child: Image.asset('assets/images/second.png'),
                  ),
                  const SizedBox(height: 84),
                  Text(
                    'MyDay team',
                    style: TextStyles.nunito40w700,
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'prepared for you list of tasks to keep yourself \nbusy and challenged every day, making it more \nfun and enjoyable',
                    style:
                        TextStyles.nunito16w400.copyWith(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
