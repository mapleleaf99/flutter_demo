import 'package:flutter/material.dart';
import 'package:flutter_demo/models/home/home_banner_model.dart';
import 'package:flutter_demo/network/http_request.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/home/logo.png", width: 80,),
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(66),
            child: Image.asset("assets/images/home/default.png", width: 66,)
        ),
      ),
      body: const HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  
  @override
  void initState() {
    super.initState();
    
    HttpRequest.requestData("/app/banner/list").then((res) {
      List<HomeBannerModel> list = [];
      for (var item in res) {
        list.add(HomeBannerModel.fromMap(item));
      }
    }).catchError((error) {
      print(error);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
