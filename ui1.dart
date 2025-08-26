import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int bottomIndex = 0;
  int filterIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[10],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Lokesh ✌️ ',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Explore the world',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),),],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage('https://imgs.search.brave.com/TcJfTLuni3pBPa4YR8vS2NTLT1vX3cD0Jfw8k4PMQ_A/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTM1/NTA1MTEwMi9waG90/by9pbmRvb3ItcG9y/dHJhaXQtb2YtY2hl/ZXJmdWwtYnVzaW5l/c3NtYW4taW4tY29y/cG9yYXRlLWF0dGly/ZS5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9R016MThpTmQw/OTBlbHNVQy1ONUtR/SDhvS0tVTzdHeGhK/TDN3NmEwZ0dLTT0'),
                  ),],),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    Text('Search places', style: TextStyle(color: Colors.grey)),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.tune, color: Colors.grey, size: 20),
                    ),],),),

              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Popular place',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        filterIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: filterIndex == 0 ? Colors.black : Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Most Viewed',
                        style: TextStyle(
                          color: filterIndex == 0 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: filterIndex == 1 ? Colors.black : Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Nearby',
                        style: TextStyle(
                          color: filterIndex == 1 ? Colors.white : Colors.grey,
                        ),),),),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        filterIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: filterIndex == 2 ? Colors.black : Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Latest',
                        style: TextStyle(
                          color: filterIndex == 2 ? Colors.white : Colors.grey,
                        ),),),),],),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 350,
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage('https://imgs.search.brave.com/Rsmu70OZHXUznEB5a4vTsw8YdadjuKik6AoP8JR7XwA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzM3Lzg2/Lzg0LzM3ODY4NDE5/YTlhN2M5YzUzYTg1/ZjUyZDFhNTZjMzQ2/LmpwZw'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.transparent, Colors.black.withOpacity(0.9)],),),),
                          Positioned(
                            top: 15,
                            right: 15,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.favorite_border, size: 20),),),
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mount Fuji, Tokyo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,),),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.location_on, color: Colors.white70, size: 16),
                                    SizedBox(width: 4),
                                    Text(
                                      'Tokyo, Japan',
                                      style: TextStyle(color: Colors.white70, fontSize: 14),),],),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.blue, size: 16),
                                    SizedBox(width: 4),
                                    Text(
                                      '4.0',
                                      style: TextStyle(color: Colors.white, fontSize: 14),
                                    ),],),],),
                          ),],),),),
                  Expanded(
                    child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage('https://imgs.search.brave.com/pBumR41I-xOVFJqfB1TNoUm1ZNd2u9-leTTDgwkV46Q/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzYxLzZj/LzVlLzYxNmM1ZTFl/OTY0YjkyNDcxNWI2/MmIyODAyNzc5OWE4/LmpwZw'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                              ),
                            ),),
                          Positioned(
                            top: 15,
                            right: 15,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(Icons.favorite_border, size: 20),
                            ),),
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Andes, Santiago',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,),),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.location_on, color: Colors.white70, size: 16),
                                    SizedBox(width: 4),
                                    Text(
                                      'South America',
                                      style: TextStyle(color: Colors.white70, fontSize: 14),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.blue, size: 16),
                                    SizedBox(width: 4),
                                    Text(
                                      '4.6',
                                      style: TextStyle(color: Colors.white, fontSize: 14),
                                    ),],),],),
                          ),
                        ],
                      ),),),],),],),),),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.grey[1050],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: bottomIndex,
          onTap: (index) {
            setState(() {
              bottomIndex = index;
            });},
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: 'time',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'fav',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
            ),
          ],),),
    );
  }
}
