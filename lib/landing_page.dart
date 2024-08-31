import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hisaab/notes.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isExpandedLogin = false;
  bool isExpandedSignup = false;

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  void toggleExpansionLogin() {
    setState(() {
      isExpandedLogin = !isExpandedLogin;
      if (isExpandedSignup) {
        isExpandedSignup = !isExpandedSignup;
      }
    });
  }

  void toggleExpansionSignup() {
    setState(() {
      if (isExpandedLogin) {
        isExpandedLogin = !isExpandedLogin;
      }
      isExpandedSignup = !isExpandedSignup;
    });
  }

  void _onSignUp() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Notes(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hisaab',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.75,
                          child: Text(
                            'Pai pai ka hisaab hoga aaj se bhai, aur kucch random aarthik vichaar aye to usse bhi likha jaega.',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text('Tera bhai ameer ho ke hi manega ✊🏻'),
                    const SizedBox(height: 80),
                    Card(
                      elevation: 6,
                      color: Theme.of(context).colorScheme.secondary,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Center(
                              child: Icon(
                                Icons.format_quote_rounded,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            Text(
                              'Kaam Ke Alaawa Kuch Soojhta Hi Nai ',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Text(
                              'Tere Jaison Ko To Launda Poochta Hi Nai',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Text(
                              'Log Bante Shane Favour Ke Chakkar Mein',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Text(
                              'Free Mein To Bhai Tera Mootta Bhi Nai',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '😎🔥🔥🔥😎',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 200,
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Column(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Easing.legacy,
                      width: isExpandedSignup
                          ? MediaQuery.sizeOf(context).width * 0.8
                          : MediaQuery.sizeOf(context).width * 0.4,
                      height: isExpandedSignup ? 260 : 50,
                      child: ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: toggleExpansionSignup,
                        child: isExpandedSignup
                            ? SingleChildScrollView(
                                child: Column(
                                  children: [
                                    TextField(
                                      autofocus: true,
                                      decoration: InputDecoration(
                                        hintText: 'Name',
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Email',
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Password',
                                      ),
                                      obscureText: true,
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Notes(),
                                            ));
                                      },
                                      child: const Text('Sign Up'),
                                    ),
                                  ],
                                ),
                              )
                            : const Text('Sign Up'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Easing.legacy,
                      width: isExpandedLogin
                          ? MediaQuery.sizeOf(context).width * 0.8
                          : MediaQuery.sizeOf(context).width * 0.4,
                      height: isExpandedLogin ? 200 : 50,
                      child: ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: toggleExpansionLogin,
                        child: isExpandedLogin
                            ? SingleChildScrollView(
                                child: Column(
                                  children: [
                                    TextField(
                                      autofocus: true,
                                      decoration: InputDecoration(
                                        hintText: 'Name',
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Password',
                                      ),
                                      obscureText: true,
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        _onSignUp;
                                      },
                                      child: const Text('Log In'),
                                    ),
                                  ],
                                ),
                              )
                            : const Text('Log In'),
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
