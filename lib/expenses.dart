import 'package:flutter/material.dart';

import 'models/expense.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }

}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Grocery Shopping',
      amount: 45.80,
      date: DateTime(2026, 2, 25),
      category: Category.food,
    ),
    Expense(
      title: 'Flight to New York',
      amount: 320.00,
      date: DateTime(2026, 2, 20),
      category: Category.travel,
    ),
    Expense(
      title: 'Cinema Tickets',
      amount: 18.50,
      date: DateTime(2026, 2, 22),
      category: Category.leisure,
    ),
    Expense(
      title: 'Office Supplies',
      amount: 67.30,
      date: DateTime(2026, 2, 18),
      category: Category.work,
    ),
    Expense(
      title: 'Restaurant Dinner',
      amount: 92.00,
      date: DateTime(2026, 2, 24),
      category: Category.food,
    ),
    Expense(
      title: 'Uber Ride',
      amount: 14.75,
      date: DateTime(2026, 2, 26),
      category: Category.travel,
    ),
    Expense(
      title: 'Online Course',
      amount: 49.99,
      date: DateTime(2026, 2, 15),
      category: Category.work,
    ),
    Expense(
      title: 'Concert Tickets',
      amount: 110.00,
      date: DateTime(2026, 2, 10),
      category: Category.leisure,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        const Text("The chart"),
        const Text("Expenses List")
      ],
    ),);
  }
  
}