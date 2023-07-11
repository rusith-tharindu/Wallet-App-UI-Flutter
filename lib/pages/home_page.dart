// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_button.dart';
import 'package:walletappui/util/my_card.dart';
import 'package:walletappui/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // pagecontroller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //bottom appbar
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: Icon(
          Icons.monetization_on,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.grey[500],
                  size: 28,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 28,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple[700],
                        ),
                      ),
                      Text(
                        ' Wallet',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple[900],
                        ),
                      ),
                    ],
                  ),

                  // plus button
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 23600.56,
                    cardNumber: 123445678,
                    expiryMonth: 10,
                    expiryYear: 25,
                    color: Colors.red[900],
                  ),
                  MyCard(
                    balance: 436789.00,
                    cardNumber: 245345678,
                    expiryMonth: 05,
                    expiryYear: 27,
                    color: Colors.blue[900],
                  ),
                  MyCard(
                    balance: 786453.00,
                    cardNumber: 238568739,
                    expiryMonth: 08,
                    expiryYear: 26,
                    color: Colors.grey[700],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade700,
              ),
            ),

            SizedBox(height: 40),
            //3 buttons -> send + pay + bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                    iconImagePath: 'lib/icons/send-money.png',
                    buttonText: 'Send',
                  ),

                  //pay button
                  MyButton(
                    iconImagePath: 'lib/icons/credit-card.png',
                    buttonText: 'Payments',
                  ),

                  // deposits button
                  MyButton(
                    iconImagePath: 'lib/icons/deposits.png',
                    buttonText: 'Deposits',
                  ),

                  // bills button
                  MyButton(
                    iconImagePath: 'lib/icons/bill.png',
                    buttonText: 'Bills',
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // column -> stats + transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTile(
                    iconImagePath: 'lib/icons/statistics.png',
                    tileTitle: 'Statistics',
                    tileSubTitle: 'Payments and Income',
                  ),

                  //transaction
                  MyListTile(
                    iconImagePath: 'lib/icons/transactions.png',
                    tileTitle: 'Transactions',
                    tileSubTitle: 'Transaction History',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
