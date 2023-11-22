import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Skills"),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/Assets/images/BG.jpg"),
            fit: BoxFit.contain,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSkillTile(Icons.code, "Languages: Java, Dart"),
              _buildSkillTile(Icons.computer, "IDE: Android Studio"),
              _buildSkillTile(Icons.design_services, "UI Design: XML, Flutter"),
              _buildSkillTile(Icons.layers, "Architecture: Components"),
              _buildSkillTile(Icons.code, "Version Control: Git"),
              _buildSkillTile(Icons.api, "API Integration: Retrofit"),
              _buildSkillTile(Icons.bug_report, "Testing: Debugging"),
              _buildSkillTile(Icons.design_services, "Designing: UI/UXI"),
              _buildSkillTile(Icons.design_services, "Designing: Graphic Design")
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillTile(IconData icon, String text) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.lightGreenAccent,
      ),
      title: Text(text, style: TextStyle(fontSize: 18, color: Colors.white)),
    );
  }
}
