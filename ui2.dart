import 'package:flutter/material.dart';

void main() {
runApp(new MaterialApp(
  home: MyApp(),
));
}

class MyApp extends StatelessWidget {
Widget build(BuildContext context) {
return MaterialApp(
title: 'Gemstore App',
home: GemstorePage(),
);
}
}

class GemstorePage extends StatefulWidget {
createState() => GemstorePageState();
}

class GemstorePageState extends State<GemstorePage> {
int bottomIndex = 0;

Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
appBar: AppBar(
backgroundColor: Colors.white,
elevation: 0,
leading: Icon(Icons.menu, color: Colors.black),
title: Text(
'Gemstore',
style: TextStyle(
color: Colors.black,
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
centerTitle: true,
actions: [
Icon(Icons.notifications_outlined, color: Colors.black),
SizedBox(width: 15),
],
),
body: SingleChildScrollView(
padding: EdgeInsets.all(20),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
decoration: BoxDecoration(
color: Colors.grey[100],
borderRadius: BorderRadius.circular(10),
),
child: Row(
children: [
Icon(Icons.search, color: Colors.grey),
SizedBox(width: 10),
Text(
'Search',
style: TextStyle(
color: Colors.grey,
fontSize: 16,
),
),
],
),
),

SizedBox(height: 20),

Container(
height: 160,
decoration: BoxDecoration(
color: Color(0xFFD4A574),
borderRadius: BorderRadius.circular(15),
),
child: Stack(
children: [
Positioned(
left: 20,
top: 20,
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Autumn',
style: TextStyle(
color: Colors.white,
fontSize: 28,
fontWeight: FontWeight.bold,
),
),
Text(
'Collection',
style: TextStyle(
color: Colors.white,
fontSize: 28,
fontWeight: FontWeight.bold,
),
),
Text(
'2027',
style: TextStyle(
color: Colors.white,
fontSize: 20,
),
),
],
),
),
Positioned(
right: 0,
top: 0,
bottom: 0,
child: Container(
width: 120,
decoration: BoxDecoration(
borderRadius: BorderRadius.only(
topRight: Radius.circular(15),
bottomRight: Radius.circular(15),
),
image: DecorationImage(
image: NetworkImage('https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&w=300&h=400&fit=crop'),
fit: BoxFit.cover,
),
),
),
),
],
),
),

SizedBox(height: 30),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Text(
'Feature Products',
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
color: Colors.black,
),
),
Text(
'Show all',
style: TextStyle(
fontSize: 14,
color: Colors.grey,
),
),
],
),

SizedBox(height: 20),
Row(
children: [
Expanded(
child: Container(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
height: 120,
decoration: BoxDecoration(
color: Colors.grey[100],
borderRadius: BorderRadius.circular(10),
image: DecorationImage(
image: NetworkImage('https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?ixlib=rb-4.0.3&w=200&h=300&fit=crop'),
fit: BoxFit.cover,
),
),
),
SizedBox(height: 8),
Text(
'5 Sweater',
style: TextStyle(
fontSize: 12,
color: Colors.grey[600],
),
),
Text(
'\$45.00',
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.bold,
color: Colors.black,
),
),
],
),
),
),

SizedBox(width: 15),
Expanded(
child: Container(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
height: 120,
decoration: BoxDecoration(
color: Colors.grey[100],
borderRadius: BorderRadius.circular(10),
image: DecorationImage(
image: NetworkImage('https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?ixlib=rb-4.0.3&w=200&h=300&fit=crop'),
fit: BoxFit.cover,
),
),
),
SizedBox(height: 8),
Text(
'Long Sleeve Dress',
style: TextStyle(
fontSize: 12,
color: Colors.grey[600],
),
),
Text(
'\$45.00',
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.bold,
color: Colors.black,
),
),
],
),
),
),

SizedBox(width: 15),
Expanded(
child: Container(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
height: 120,
decoration: BoxDecoration(
color: Colors.grey[100],
borderRadius: BorderRadius.circular(10),
image: DecorationImage(
image: NetworkImage('https://images.unsplash.com/photo-1551698618-1dfe5d97d256?ixlib=rb-4.0.3&w=200&h=300&fit=crop'),
fit: BoxFit.cover,
),
),
),
SizedBox(height: 8),
Text(
'Sportswear Set',
style: TextStyle(
fontSize: 12,
color: Colors.grey[600],
),
),
Text(
'\$80.00',
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.bold,
color: Colors.black,
),
),
],
),
),
),
],
),

SizedBox(height: 20),
Row(
children: [
Expanded(
child: Container(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
height: 120,
decoration: BoxDecoration(
color: Colors.grey[100],
borderRadius: BorderRadius.circular(10),
image: DecorationImage(
image: NetworkImage('https://images.unsplash.com/photo-1506629905607-d52d9ee4a4b3?ixlib=rb-4.0.3&w=200&h=300&fit=crop'),
fit: BoxFit.cover,
),
),
),
SizedBox(height: 8),
Text(
'Winter Jacket',
style: TextStyle(
fontSize: 12,
color: Colors.grey[600],
),
),
Text(
'\$95.00',
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.bold,
color: Colors.black,
),
),
],
),
),
),

SizedBox(width: 15),
Expanded(
child: Container(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
height: 120,
decoration: BoxDecoration(
color: Colors.grey[100],
borderRadius: BorderRadius.circular(10),
image: DecorationImage(
image: NetworkImage('https://images.unsplash.com/photo-1576995853123-5a10305d93c0?ixlib=rb-4.0.3&w=200&h=300&fit=crop'),
fit: BoxFit.cover,
),
),
),
SizedBox(height: 8),
Text(
'Casual Shirt',
style: TextStyle(
fontSize: 12,
color: Colors.grey[600],
),
),
Text(
'\$35.00',
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.bold,
color: Colors.black,
),
),
],
),
),
),
],
),
],
),
),
bottomNavigationBar: BottomNavigationBar(
backgroundColor: Colors.white,
selectedItemColor: Colors.black,
unselectedItemColor: Colors.grey,
currentIndex: bottomIndex,
onTap: (index) {
setState(() {
bottomIndex = index;
});
},
type: BottomNavigationBarType.fixed,
items: [
BottomNavigationBarItem(
icon: Icon(Icons.home),
label: 'home',
),
BottomNavigationBarItem(
icon: Icon(Icons.search_outlined),
label: 'search',
),
BottomNavigationBarItem(
icon: Icon(Icons.shopping_cart_outlined),
label: 'cart',
),
BottomNavigationBarItem(
icon: Icon(Icons.person_outline),
label: 'Me',
),
],
),
);
}
}
