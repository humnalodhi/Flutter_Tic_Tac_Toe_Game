import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe_game/Screens/game.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(const Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>GameScreen()));

  }

  static var customFontWhite = GoogleFonts.coiny(
      textStyle:
      const TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 28));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tic-Tac-Toe Game', style: customFontWhite),
          ],
        ),
      ),
    );
  }
}
