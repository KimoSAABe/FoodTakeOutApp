import 'package:flutter/material.dart';

enum actions { add, receive }

Color darkBlue = Color(0xff071d40);
Color lightBlue = Color(0xff1b4dff);

String username = "Manager";

List<Map<String, dynamic>> historyContainerList = [
  {
    'title': 'Edit Menu',
    'subtitle': 'Add new Dish',
    'actionType': actions.add,
    'usersImg': [
      'https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_960_720.jpg',
      'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
      'https://cdn.pixabay.com/photo/2015/01/08/18/30/entrepreneur-593371_960_720.jpg',
    ],
  },
  {
    'title': 'View History',
    'subtitle': '3811 Orders',
    'actionType': actions.receive,
    'usersImg': [
      'https://cdn.pixabay.com/photo/2015/09/18/11/46/man-945482_960_720.jpg',
      'https://cdn.pixabay.com/photo/2014/07/31/23/49/guitarist-407212_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/09/24/03/20/passion-1690965_960_720.jpg',
    ],
  }
];

List<Map<String, dynamic>> transactions_stat = [
  {
    'count': 73,
    'color': Colors.deepOrange,
    'text': 'Ready to TakeAway',
    'text_color': Colors.white,
  },
  {
    'count': 49,
    'color': Colors.redAccent,
    'text': 'Cancelled',
    'text_color': Colors.white,
  },
  {
    'count': 9,
    'color': Colors.amberAccent,
    'text': 'In Preparation',
    'text_color': Colors.white,
  },
  {
    'count': 231,
    'color': Colors.white,
    'text': 'Completed',
    'text_color': Colors.black,
    'border' : Border.all(color: Colors.black54)
  },
  {
    'count': 0,
    'color': Color(0xfff3e8d9),
    'text': 'Objection or failure',
    'text_color': Color(0xffe59f45),
  },
];

List<Map<String, dynamic>> transactions = [
  {
    'title' : 'Customer id: 37',
    'originator' : 'BBQ Chicken x1',
    'transaction_number' : '98217302193491',
    'type' : 'Public',
    'status' : 'Pending',
  },
  {
    'title' : 'Customer id: 38',
    'originator' : 'Tandoori Roti x10 \nChicken Tikaa Masala x2',
    'transaction_number' : '98217302193491',
    'type' : 'Public',
    'status' : 'Pending',
  },
  {
    'title' : 'Customer id: 39',
    'originator' : 'Methi Mutter x5 \nNaan x12',
    'transaction_number' : '98217302193491',
    'type' : 'Public',
    'status' : 'Pending',
  },
  {
    'title' : 'Customer id: 40',
    'originator' : 'Rava Dosa x2 \nIdli x6 \nUttappam x2',
    'transaction_number' : '98217302193491',
    'type' : 'Public',
    'status' : 'Pending',
  },
  {
    'title' : 'Customer id: 41',
    'originator' : 'Choco Lava Cake x3',
    'transaction_number' : '98217302193491',
    'type' : 'Public',
    'status' : 'Pending',
  },
  {
    'title' : 'Customer id: 42',
    'originator' : 'Momos x100',
    'transaction_number' : '98217302193491',
    'type' : 'Public',
    'status' : 'Pending',
  },
  {
    'title' : 'Customer id: 43',
    'originator' : 'Fish Cutlet x7',
    'transaction_number' : '98217302193491',
    'type' : 'Public',
    'status' : 'Pending',
  },
];