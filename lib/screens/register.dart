import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  get fit => null;

  get child => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.loose,
          children:[
            Positioned(
                top: 7.8 * 965.3 / 731,
                child: Container(
                    height: 532 * 965.3 / 731,
                    width: 424.8,
                    child: Image.asset("assets/register_vector_bg.png",
                        fit: BoxFit.fill))),
            Positioned(
                top: 10,
                left: 20,
                height: size.height * 0.9,
                width: size.width * 0.6,
                child: const Text(
                  " Sup'Com Junior Entreprise ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
            const Positioned(
                top: 170,
                height: 250,
                width: 250,
                right: 150,
                child: Text(
                  "Register ",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            const Positioned(
                top: 245,
                height: 250,
                width: 270,
                right: 110,
                child: Text(
                  "Get Started now ",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )),
            const Positioned(
                height: 100,
                width: 100,
                left: 70,
                top: 50,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    "assets/sje_logo.png",
                  ),
                )),
            Positioned(
                height: 40,
                width: 191,
                top: 750,
                left: 140,
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.pushNamed(context, 'main_page');
                    },
                  child: Text("Sign up"),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    backgroundColor: MaterialStateProperty.all(
                        
                        Color.fromARGB(145, 15, 155, 250)),
                  ),
                )),
            Positioned(
              top: 300,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38.0 * 580 / 411),
                    child: Container(
                      
                      width: 280 * 965.3 / 731,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: <BoxShadow>[BoxShadow(offset: Offset(0, 2), blurRadius: 4, color: Color.fromARGB(255, 192, 192, 192))]
                      ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                          child: const TextField(
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            labelStyle: const TextStyle(
                                height: 4,
                                color: Color.fromARGB(255, 160 , 160, 160)),
                            labelText: "Username",
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                          ), 
                          ),
                        ),
                      ),
                    ),
              ),
            Positioned(
              top: 390,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38.0 * 580 / 411),
                child: Container(
                  width: 280 * 965.3 / 731,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: <BoxShadow>[BoxShadow(offset: Offset(0, 2), blurRadius: 4, color: Color.fromARGB(255, 192, 192, 192))]
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                        style: TextStyle(fontSize: 14),
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.mail,
                            color: Colors.grey,
                          ),
                          labelStyle: const TextStyle(
                              height: 4,
                              color: Color.fromARGB(255, 160, 160, 160)),
                          labelText: "Email",
                          fillColor: Colors.white,
                          filled: true,
                          hintText: '*******@supcom.tn',
                          border: InputBorder.none
                      )),),
                  ),
              ),
            ),
            Positioned(
              top: 480,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38.0 * 580 / 411),
                child: Container(
                  width: 280 * 965.3 / 731,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: <BoxShadow>[BoxShadow(offset: Offset(0, 2), blurRadius: 4, color: Color.fromARGB(255, 192, 192, 192))]
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        style: TextStyle(fontSize: 14),
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          labelStyle: const TextStyle(
                              height: 4,
                              color: Color.fromARGB(255, 160, 160, 160)),
                          labelText: "Password",
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'pick a strong password',
                          suffixIcon: const Icon(Icons.visibility_off),
                          border: InputBorder.none
                      )),
                    ),),
              ),
            ),
            Positioned(
              top: 570,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38.0 * 580 / 411),
                child: Container(
                    width: 280 * 965.3 / 731,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: <BoxShadow>[BoxShadow(offset: Offset(0, 2), blurRadius: 4, color: Color.fromARGB(255, 192, 192, 192))]
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        style: TextStyle(fontSize: 14),
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          labelStyle: const TextStyle(
                              height: 4,
                              color: Color.fromARGB(255, 160, 160, 160)),
                          labelText: "Confirm Password",
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'pick a strong password',
                          suffixIcon: const Icon(Icons.visibility_off),
                          border: InputBorder.none
                      )),
                    ),),
              ),
            ),
            Positioned(
              top: 800,
              left: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    " Already Registred ?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const Text(
                    " instead",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
