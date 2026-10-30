import 'package:flutter/material.dart';
import 'package:flutter_application_1/register_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart'; 
import 'register_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> registrarSocio(String nombreSocio, String correoSocio) async {
    final supabase = Supabase.instance.client; 

    try {
      await supabase.from('usuario').insert({
        'nombre': nombreSocio,
        'correo': correoSocio,
      });
      print('¡Socio registrado con éxito en el gimnasio!');
    } catch (error) {
      print('Error al registrar: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "POLI GYM",
          style: TextStyle(
            color: Color(0xFFFF6B00), 
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 1.2,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              children: [
                Icon(Icons.circle, size: 12, color: Colors.black),
                SizedBox(width: 5),
                Text("menu", style: TextStyle(color: Colors.black, fontSize: 12)),
              ],
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              "imgprincipal/gym_bg.jpg",
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(color: Colors.black87, child: const Center(child: Text("Pon una foto en imgprincipal/gym_bg.jpg", style: TextStyle(color: Colors.white))));
              },
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "TRANSFORMA TU CUERPO HOY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.1,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context) => const RegisterScreen())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFC107),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text(
                    "Comienza Ahora",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}