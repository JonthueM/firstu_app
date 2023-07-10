import 'package:flutter/material.dart';
import './reusable_text_topbar.dart';


class AccountBar extends StatelessWidget {
  const AccountBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Account();
  }
}

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(Icons.account_circle),
        TextTopBar(topbarText: 'Guest - Login/sigup')
      ],
    );
  }
}