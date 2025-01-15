import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Мои билеты',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Верхний текст "Сегодня"
            Text(
              'Сегодня',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[700]),
            ),
            SizedBox(height: 16),
            // Карточка билета
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Логотип "ОNAY!"
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'ОNAY!',
                      style: TextStyle(
                        fontSize: 24,
                        backgroundColor: Colors.yellow[200],
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Информация о маршруте (81)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.directions_bus, color: Colors.black, size: 28),
                      SizedBox(width: 8),
                      Text(
                        '81',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  // Информация о маршруте (499)973LU02
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(499)973LU02',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Color(0xFFFDE658), // Применяем фон только для этой строки
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Время
                  Text(
                    'Время:',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    '13.01.25 20:17',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  // Код проверки
                  Text(
                    'Код проверки:',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    'V854YIP2L',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  // QR-код
                  Container(
                    width: 150,
                    height: 150,

                    color: Colors.white,
                    child: Image.asset('assets/img/qr.png'),
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
