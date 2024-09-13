import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hisaab/home.dart';

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
          builder: (context) => const Home(),
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
                      color: Theme.of(context).primaryColorDark,
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
                            ? Expanded(
                                child: ListView(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    TextField(
                                      autofocus: true,
                                      maxLines: 1,
                                      expands: false,
                                      style: TextStyle(
                                        fontSize: 24,
                                        height: 1,
                                        color: Colors.white,
                                        decorationThickness: 0,
                                      ),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 16),
                                          filled: true,
                                          fillColor:
                                              Color.fromRGBO(3, 4, 14, 0.5),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: 'Username...',
                                          hintStyle: TextStyle(
                                            fontSize: 24.0,
                                            fontFamily: 'Dongle',
                                            color: Colors.grey.shade300,
                                          ),
                                          hintFadeDuration: Durations.medium2),
                                    ),
                                    const SizedBox(height: 10),
                                    TextField(
                                      maxLines: 1,
                                      expands: false,
                                      obscureText: true,
                                      style: TextStyle(
                                        fontSize: 24,
                                        height: 1,
                                        color: Colors.white,
                                        decorationThickness: 0,
                                      ),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 16),
                                          filled: true,
                                          fillColor:
                                              Color.fromRGBO(3, 4, 14, 0.5),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: 'Password...',
                                          hintStyle: TextStyle(
                                            fontSize: 24.0,
                                            fontFamily: 'Dongle',
                                            color: Colors.grey.shade300,
                                          ),
                                          hintFadeDuration: Durations.medium2),
                                    ),
                                    const SizedBox(height: 10),
                                    TextField(
                                      autofocus: true,
                                      maxLines: 1,
                                      expands: false,
                                      style: TextStyle(
                                        fontSize: 24,
                                        height: 1,
                                        color: Colors.white,
                                        decorationThickness: 0,
                                      ),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 16),
                                          filled: true,
                                          fillColor:
                                              Color.fromRGBO(3, 4, 14, 0.5),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: 'E-mail...',
                                          hintStyle: TextStyle(
                                            fontSize: 24.0,
                                            fontFamily: 'Dongle',
                                            color: Colors.grey.shade300,
                                          ),
                                          hintFadeDuration: Durations.medium2),
                                    ),
                                    const SizedBox(height: 20),
                                    GestureDetector(
                                        onTap: _onSignUp,
                                        child: Center(
                                            child: const Text(
                                          'Sign Up',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                234, 228, 221, 1),
                                          ),
                                        ))),
                                  ],
                                ),
                              )
                            : Text(
                                'Sign Up',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      fontSize: 24,
                                      color: Color.fromRGBO(234, 228, 221, 1),
                                    ),
                              ),
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
                                      maxLines: 1,
                                      expands: false,
                                      style: TextStyle(
                                        fontSize: 24,
                                        height: 1,
                                        color: Colors.white,
                                        decorationThickness: 0,
                                      ),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 16),
                                          filled: true,
                                          fillColor:
                                              Color.fromRGBO(3, 4, 14, 0.5),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: 'Username...',
                                          hintStyle: TextStyle(
                                            fontSize: 24.0,
                                            fontFamily: 'Dongle',
                                            color: Colors.grey.shade300,
                                          ),
                                          hintFadeDuration: Durations.medium2),
                                    ),
                                    const SizedBox(height: 10),
                                    TextField(
                                      obscureText: true,
                                      maxLines: 1,
                                      expands: false,
                                      style: TextStyle(
                                        fontSize: 24,
                                        height: 1,
                                        color: Colors.white,
                                        decorationThickness: 0,
                                      ),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 16),
                                          filled: true,
                                          fillColor:
                                              Color.fromRGBO(3, 4, 14, 0.5),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          hintText: 'Password...',
                                          hintStyle: TextStyle(
                                            fontSize: 24.0,
                                            fontFamily: 'Dongle',
                                            color: Colors.grey.shade300,
                                          ),
                                          hintFadeDuration: Durations.medium2),
                                    ),
                                    const SizedBox(height: 20),
                                    GestureDetector(
                                      onTap: () {
                                        _onSignUp;
                                      },
                                      child: Text('Log In',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  234, 228, 221, 1))),
                                    ),
                                  ],
                                ),
                              )
                            : Text(
                                'Log In',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      fontSize: 24,
                                      color: Color.fromRGBO(234, 228, 221, 1),
                                    ),
                              ),
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
