import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ecommerce_assignment/features/home/view/widgets/bottom_nav_bar.dart';
import 'package:ecommerce_assignment/features/home/view/widgets/cloths_card_slider.dart';
import 'package:ecommerce_assignment/features/home/view/widgets/icons_nav_bar.dart';
import 'package:ecommerce_assignment/features/home/view/widgets/product_banner.dart';
import 'package:ecommerce_assignment/features/home/view/widgets/search_bar.dart';
import 'package:ecommerce_assignment/features/home/view/widgets/suggestion_slider.dart';
import 'package:ecommerce_assignment/features/home/view/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _hasInternet = true;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkConnection();

    Connectivity().onConnectivityChanged.listen((result) {
      _checkConnection();
    });
    checkLoading();
  }

  Future<void> _checkConnection() async {
    final result = await Connectivity().checkConnectivity();
    log(result.toString());
    setState(() {
      _hasInternet =
          result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.wifi);
    });
  }

  checkLoading() {
    Future.delayed(Duration(seconds: 2)).then(
      (_) => setState(() {
        _isLoading = false;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: !_hasInternet
            ? Center(child: Text("NO Internet Connect Found"))
            : _isLoading
            ? Center(child: CircularProgressIndicator())
            : GestureDetector(
                onTap: () => FocusScope.of(context).focusedChild?.unfocus(),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.2, 0.4, 1],
                            colors: [
                              Colors.blue.shade200,
                              Colors.blue.shade100,
                              Colors.white,
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            TopBar(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  Text(
                                    "201013 ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Select delivery location ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.blue,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                            SearchBarWidget(),
                          ],
                        ),
                      ),

                      IconNavBar(),
                      ProductBanner(),
                      SuggestionSlider(),
                      ClothsCardSlider(),
                    ],
                  ),
                ),
              ),
      ),
      bottomNavigationBar: _isLoading && _hasInternet
          ? SizedBox()
          : Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                const Divider(
                  height: 0, // no extra space
                  thickness: 1,
                  color: Colors.grey,
                ),
                const BottomNavBar(),
              ],
            ),
    );
  }
}
