import 'package:flutter/material.dart';
import 'package:modul_cam_qr_2047/camera.dart';
import 'package:modul_cam_qr_2047/qr_generate.dart';
import 'package:modul_cam_qr_2047/qr_scan.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' : (context) => const HomePage(),
        '/qr_generate' : (context) => const GenerateQRPage(),
        '/qr_scan' : (context) => const BarcodeScannerPageView(),
        '/qr_cam' : (context) => CameraView(),
      },     
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Modul QR, Camera, Scanner'),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/qr_generate');
            }, child: const Text("Generate QR Code")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/qr_cam');
            }, child: const Text("Camera")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/qr_scan');
            }, child: const Text("QR Scanning")),
          ],
        ),
      ),
    );
  }
}
