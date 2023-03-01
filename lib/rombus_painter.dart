import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';
import 'main.dart';

class RombusPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = const Color(0xFFE8BB57)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0625000, 0);
    path_0.lineTo(size.width * 0.6125000, 0);
    path_0.quadraticBezierTo(size.width * 0.6120750, size.height * 0.0239500,
        size.width * 0.6270000, size.height * 0.0290000);
    path_0.quadraticBezierTo(size.width * 0.6270000, size.height * 0.0437500,
        size.width * 0.6270000, size.height * 0.1000000);
    path_0.quadraticBezierTo(size.width * 0.6131000, size.height * 0.1000750,
        size.width * 0.6125000, size.height * 0.1250000);
    path_0.quadraticBezierTo(size.width * 0.6125875, size.height * 0.1492000,
        size.width * 0.6270000, size.height * 0.1500000);
    path_0.lineTo(size.width * 0.6270000, size.height * 0.2000000);
    path_0.quadraticBezierTo(size.width * 0.6129750, size.height * 0.2009500,
        size.width * 0.6125000, size.height * 0.2250000);
    path_0.quadraticBezierTo(size.width * 0.6127125, size.height * 0.2503500,
        size.width * 0.6270000, size.height * 0.2500000);
    path_0.lineTo(size.width * 0.6270000, size.height * 0.3000000);
    path_0.quadraticBezierTo(size.width * 0.6126375, size.height * 0.2996750,
        size.width * 0.6125000, size.height * 0.3250000);
    path_0.quadraticBezierTo(size.width * 0.6129125, size.height * 0.3491250,
        size.width * 0.6270000, size.height * 0.3500000);
    path_0.lineTo(size.width * 0.6270000, size.height * 0.4000000);
    path_0.quadraticBezierTo(size.width * 0.6127250, size.height * 0.3998000,
        size.width * 0.6125000, size.height * 0.4250000);
    path_0.quadraticBezierTo(size.width * 0.6126250, size.height * 0.4500500,
        size.width * 0.6270000, size.height * 0.4500000);
    path_0.lineTo(size.width * 0.6270000, size.height * 0.5000000);
    path_0.quadraticBezierTo(size.width * 0.6128875, size.height * 0.4993250,
        size.width * 0.6125000, size.height * 0.5250000);
    path_0.quadraticBezierTo(size.width * 0.6129000, size.height * 0.5496000,
        size.width * 0.6270000, size.height * 0.5500000);
    path_0.lineTo(size.width * 0.6270000, size.height * 0.6000000);
    path_0.quadraticBezierTo(size.width * 0.6130250, size.height * 0.5994250,
        size.width * 0.6125000, size.height * 0.6270000);
    path_0.quadraticBezierTo(size.width * 0.6126750, size.height * 0.6504250,
        size.width * 0.6270000, size.height * 0.6500000);
    path_0.lineTo(size.width * 0.6270000, size.height * 0.7000000);
    path_0.quadraticBezierTo(size.width * 0.6127375, size.height * 0.7017750,
        size.width * 0.6125000, size.height * 0.7250000);
    path_0.quadraticBezierTo(size.width * 0.6124625, size.height * 0.7503000,
        size.width * 0.6270000, size.height * 0.7500000);
    path_0.lineTo(size.width * 0.6270000, size.height * 0.8000000);
    path_0.quadraticBezierTo(size.width * 0.6129125, size.height * 0.8010750,
        size.width * 0.6125000, size.height * 0.8250000);
    path_0.quadraticBezierTo(size.width * 0.6123375, size.height * 0.8493750,
        size.width * 0.6270000, size.height * 0.8500000);
    path_0.lineTo(size.width * 0.6270000, size.height * 0.9000000);
    path_0.quadraticBezierTo(size.width * 0.6131500, size.height * 0.9015000,
        size.width * 0.6125000, size.height * 0.9250000);
    path_0.quadraticBezierTo(size.width * 0.6124875, size.height * 0.9503500,
        size.width * 0.6270000, size.height * 0.9500000);
    path_0.lineTo(size.width * 0.6270000, size.height * 0.9750000);
    path_0.quadraticBezierTo(size.width * 0.6122000, size.height * 0.9738750,
        size.width * 0.6125000, size.height);
    path_0.quadraticBezierTo(size.width * 0.4750000, size.height,
        size.width * 0.0625000, size.height);
    path_0.quadraticBezierTo(size.width * 0.0013375, size.height * 0.9976500, 0,
        size.height * 0.8750000);
    path_0.quadraticBezierTo(
        0, size.height * 0.8312500, 0, size.height * 0.6270000);
    path_0.quadraticBezierTo(size.width * 0.0622000, size.height * 0.6257750,
        size.width * 0.0625000, size.height * 0.5000000);
    path_0.quadraticBezierTo(size.width * 0.0623500, size.height * 0.3755750, 0,
        size.height * 0.3750000);
    path_0.quadraticBezierTo(
        0, size.height * 0.1875000, 0, size.height * 0.1250000);
    path_0.quadraticBezierTo(size.width * 0.0031875, size.height * 0.0027500,
        size.width * 0.0625000, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = new Paint()
      ..color = const Color(0xFFE4E4E4)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.64, 0);
    path_1.quadraticBezierTo(size.width * 0.86, 0, size.width * 0.94, 0);
    path_1.quadraticBezierTo(
        size.width * 1.00, size.height * 0.00, size.width, size.height * 0.13);
    path_1.quadraticBezierTo(
        size.width, size.height * 0.19, size.width, size.height * 0.38);
    path_1.quadraticBezierTo(size.width * 0.94, size.height * 0.37,
        size.width * 0.94, size.height * 0.50);
    path_1.quadraticBezierTo(
        size.width * 0.94, size.height * 0.62, size.width, size.height * 0.63);
    path_1.lineTo(size.width, size.height * 0.88);
    path_1.quadraticBezierTo(
        size.width * 1.00, size.height * 1.00, size.width * 0.94, size.height);
    path_1.cubicTo(size.width * 0.86, size.height, size.width * 0.71,
        size.height, size.width * 0.64, size.height);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.97,
        size.width * 0.6270, size.height * 0.975);
    path_1.lineTo(size.width * 0.6270, size.height * 0.95);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.95,
        size.width * 0.64, size.height * 0.93);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.90,
        size.width * 0.6270, size.height * 0.90);
    path_1.lineTo(size.width * 0.6270, size.height * 0.85);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.85,
        size.width * 0.64, size.height * 0.82);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.80,
        size.width * 0.6270, size.height * 0.80);
    path_1.lineTo(size.width * 0.6270, size.height * 0.75);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.75,
        size.width * 0.64, size.height * 0.72);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.70,
        size.width * 0.6270, size.height * 0.70);
    path_1.lineTo(size.width * 0.6270, size.height * 0.65);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.65,
        size.width * 0.64, size.height * 0.63);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.60,
        size.width * 0.6270, size.height * 0.60);
    path_1.lineTo(size.width * 0.6270, size.height * 0.55);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.55,
        size.width * 0.64, size.height * 0.53);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.50,
        size.width * 0.6270, size.height * 0.50);
    path_1.lineTo(size.width * 0.6270, size.height * 0.45);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.45,
        size.width * 0.64, size.height * 0.42);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.40,
        size.width * 0.6270, size.height * 0.40);
    path_1.lineTo(size.width * 0.6270, size.height * 0.35);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.35,
        size.width * 0.64, size.height * 0.33);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.30,
        size.width * 0.6270, size.height * 0.30);
    path_1.lineTo(size.width * 0.6270, size.height * 0.25);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.25,
        size.width * 0.64, size.height * 0.23);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.20,
        size.width * 0.6270, size.height * 0.20);
    path_1.lineTo(size.width * 0.6270, size.height * 0.15);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.15,
        size.width * 0.64, size.height * 0.13);
    path_1.quadraticBezierTo(size.width * 0.64, size.height * 0.10,
        size.width * 0.6270, size.height * 0.10);
    path_1.lineTo(size.width * 0.6270, size.height * 0.03);
    path_1.quadraticBezierTo(
        size.width * 0.64, size.height * 0.02, size.width * 0.64, 0);
    path_1.close();

    canvas.drawPath(path_1, paint_1);

    Paint paint_2 = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.0625000, size.height * 0.0500000);
    path_2.lineTo(size.width * 0.5500000, size.height * 0.0500000);
    path_2.quadraticBezierTo(size.width * 0.5751625, size.height * 0.0446500,
        size.width * 0.5750000, size.height * 0.1000000);
    path_2.quadraticBezierTo(size.width * 0.5750000, size.height * 0.3000000,
        size.width * 0.5750000, size.height * 0.9000000);
    path_2.quadraticBezierTo(size.width * 0.5730500, size.height * 0.9525500,
        size.width * 0.5375000, size.height * 0.9500000);
    path_2.quadraticBezierTo(size.width * 0.4187500, size.height * 0.9500000,
        size.width * 0.0625000, size.height * 0.9500000);
    path_2.quadraticBezierTo(size.width * 0.0227750, size.height * 0.9485000,
        size.width * 0.0250000, size.height * 0.8750000);
    path_2.quadraticBezierTo(size.width * 0.0250000, size.height * 0.8312500,
        size.width * 0.0250000, size.height * 0.7000000);
    path_2.quadraticBezierTo(size.width * 0.0998750, size.height * 0.6626000,
        size.width * 0.1000000, size.height * 0.5000000);
    path_2.quadraticBezierTo(size.width * 0.0976375, size.height * 0.3463750,
        size.width * 0.0250000, size.height * 0.3000000);
    path_2.quadraticBezierTo(size.width * 0.0250000, size.height * 0.1687500,
        size.width * 0.0250000, size.height * 0.1250000);
    path_2.quadraticBezierTo(size.width * 0.0254000, size.height * 0.0527000,
        size.width * 0.0625000, size.height * 0.0500000);
    path_2.close();

    canvas.drawPath(path_2, paint_2);

    Paint paint_3 = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.7125000, size.height * 0.0500000);
    path_3.quadraticBezierTo(size.width * 0.8812500, size.height * 0.0500000,
        size.width * 0.9375000, size.height * 0.0500000);
    path_3.quadraticBezierTo(size.width * 0.9736875, size.height * 0.0485750,
        size.width * 0.9750000, size.height * 0.1250000);
    path_3.cubicTo(
        size.width * 0.9750000,
        size.height * 0.1687500,
        size.width * 0.9750000,
        size.height * 0.2562500,
        size.width * 0.9750000,
        size.height * 0.3000000);
    path_3.cubicTo(
        size.width * 0.9508750,
        size.height * 0.3115750,
        size.width * 0.9045000,
        size.height * 0.3680250,
        size.width * 0.9000000,
        size.height * 0.5000000);
    path_3.quadraticBezierTo(size.width * 0.9065125, size.height * 0.6526250,
        size.width * 0.9750000, size.height * 0.7000000);
    path_3.quadraticBezierTo(size.width * 0.9750000, size.height * 0.8500000,
        size.width * 0.9750000, size.height * 0.9000000);
    path_3.quadraticBezierTo(size.width * 0.9723500, size.height * 0.9500750,
        size.width * 0.9375000, size.height * 0.9500000);
    path_3.lineTo(size.width * 0.7000000, size.height * 0.9500000);
    path_3.quadraticBezierTo(size.width * 0.6735875, size.height * 0.9556750,
        size.width * 0.6750000, size.height * 0.9000000);
    path_3.cubicTo(
        size.width * 0.6750000,
        size.height * 0.7000000,
        size.width * 0.6750000,
        size.height * 0.3000000,
        size.width * 0.6750000,
        size.height * 0.1000000);
    path_3.cubicTo(
        size.width * 0.6773875,
        size.height * 0.0457000,
        size.width * 0.6879625,
        size.height * 0.0512750,
        size.width * 0.7125000,
        size.height * 0.0500000);
    path_3.close();

    canvas.drawPath(path_3, paint_3);
  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(92, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.71;


    Path path0 = Path();
    path0.moveTo(size.width*0.1209083,size.height*0.3332571);
    path0.cubicTo(size.width*0.6387833,size.height*0.1780143,size.width*0.6387833,size.height*0.1780143,size.width*0.8113750,size.height*0.1263429);
    path0.cubicTo(size.width*0.8648917,size.height*0.1223571,size.width*0.9422667,size.height*0.1298000,size.width*0.9540500,size.height*0.3127143);
    path0.quadraticBezierTo(size.width*0.9540500,size.height*0.4247286,size.width*0.9534167,size.height*0.5823429);
    path0.quadraticBezierTo(size.width*0.9279250,size.height*0.8037857,size.width*0.8170000,size.height*0.8075000);
    path0.quadraticBezierTo(size.width*0.7619083,size.height*0.8092143,size.width*0.5965667,size.height*0.8139000);
    path0.quadraticBezierTo(size.width*0.0874333,size.height*0.8367143,size.width*0.0857250,size.height*0.7788714);
    path0.cubicTo(size.width*0.0275583,size.height*0.6830286,size.width*0.0594750,size.height*0.5946857,size.width*0.0508083,size.height*0.5334714);
    path0.cubicTo(size.width*0.0683083,size.height*0.4832714,size.width*0.0307083,size.height*0.3519429,size.width*0.1209083,size.height*0.3332571);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
