import 'package:flutter/material.dart';
import 'barrelfile_screens.dart';
import './top_widget_bar.dart';




class TemplateMainPortal extends StatelessWidget {
  const TemplateMainPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMain();
  }
}

class TemplateMain extends StatefulWidget {
  const TemplateMain({super.key});

  @override
  State<TemplateMain> createState() => _TemplateMainState();
}

class _TemplateMainState extends State<TemplateMain> {
  int currentIdex = 2;
  final screens = [
      GrowGroup(),
      Events(),
      Dashboard(),
      Messages(),
      Volunteers(),
      
      
  ];
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: TopWidgetBar(),
      ),
      body: IndexedStack( //Keeps the state from other pages alive.
        index: currentIdex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
           type: BottomNavigationBarType.fixed,
           selectedFontSize: 10,
           unselectedFontSize: 10,
          currentIndex: currentIdex,
          onTap: (index) => setState(() => currentIdex = index),
        items: const[
        BottomNavigationBarItem(
            icon: Icon(Icons.diversity_3_outlined),
            label: "Grow Groups"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: "Events",backgroundColor: Color.fromARGB(255, 246, 246, 246),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label:'Dashboard'
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Messages'
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.volunteer_activism),
                    label: 'Volunteer'
                    ),
        ],
      ),
    );
  }
}