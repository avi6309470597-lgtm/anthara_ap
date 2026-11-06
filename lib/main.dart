import 'package:flutter/material.dart';

void main() {
  runApp(const AntharaApp());
}

class AntharaApp extends StatelessWidget {
  const AntharaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anthara',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anthara'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('🙏', style: TextStyle(fontSize: 80)),
              const SizedBox(height: 20),
              const Text(
                'Anthara',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Inspired by Gita and Science\nFor Human Welfare and Development',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
             ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const JourneyScreen(),
      ),
    );
  },
  child: const Text('Start Journey'),
), 
                  const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HealthDropScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.emergency),
                  label: const Text('🚨 Sudden Health Drop - Help'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),const SizedBox(height: 12),
ElevatedButton.icon(
  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_) => const FakeCallScreen())); },
  icon: const Icon(Icons.call),
  label: const Text('📞 Fake Call - Amma Calling'),
),
const SizedBox(height: 12),
ElevatedButton.icon(
  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_) => const PersonalSpaceScreen())); },
  icon: const Icon(Icons.person),
  label: const Text('🛡️ Personal Space - Naa Space'),
),
              ),            
                
            
          ),
        ),
      ),
    );
class JourneyScreen extends StatelessWidget {
  const JourneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Anthara')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            '🙏 Welcome to Anthara\n\nInspired by Gita and Science\n\nYour Journey Started!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
  }
}

class HealthDropScreen extends StatelessWidget {
  const HealthDropScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Help'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              '🙏 Nenu Unna Mama!\nHelp Vastundi!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _helpCard('😵 Dizzy / Chakkar', 'Kurchoni Undandi, Neellu Thagandi'),
            _helpCard('💔 Chest / Breath Problem', 'Rest Theesukondi, Bayapadakandi'),
            _helpCard('🤕 Fall / Faint Ayya', 'Padukondi, Chuttu Vallaki Cheppandi'),
            const SizedBox(height: 20),
            const Text(
              'Manam Diagnosis Cheppam - Help Matrame!',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }class FakeCallScreen extends StatelessWidget {
  const FakeCallScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(radius: 60, child: Icon(Icons.person, size: 80)),
            const SizedBox(height: 20),
            const Text('Amma Calling...', style: TextStyle(color: Colors.white, fontSize: 28)),
            const Text('Mama - Bayapadaku, Idi Fake Call', style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(backgroundColor: Colors.red, onPressed: () { Navigator.pop(context); }, child: const Icon(Icons.call_end)),
                FloatingActionButton(backgroundColor: Colors.green, onPressed: () { Navigator.pop(context); }, child: const Icon(Icons.call)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalSpaceScreen extends StatefulWidget {
  const PersonalSpaceScreen({super.key});
  @override
  State<PersonalSpaceScreen> createState() => _PersonalSpaceScreenState();
}

class _PersonalSpaceScreenState extends State<PersonalSpaceScreen> {
  double space = 1.0;
  @override
  Widget build(BuildContext context) {
    bool danger = space < 1.0;
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Space')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.shield, size: 80, color: danger ? Colors.red : Colors.green),
            Text(danger ? '🚨 Evvaru Dhaggarlo Unnaru!' : '✅ Safe - Space Bagundhi', style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            Text('Space: ${space.toStringAsFixed(1)} m'),
            Slider(value: space, min: 0.3, max: 2.0, onChanged: (v) { setState(() { space = v; }); }),
            const Text('Slider Taggi - Chudu Mama! 1m Kanna Thakkuva Aithe Red Avuthundi'),
          ],
        ),
      ),
    );
  }
}

  Widget _helpCard(String title, String desc) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.favorite, color: Colors.red),
        title: Text(title),
        subtitle: Text(desc),
      ),
    );
  }
}
