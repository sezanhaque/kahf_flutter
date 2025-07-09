import 'package:flutter/material.dart';

class CustomBottomNavigationBarWidget extends StatefulWidget {
  const CustomBottomNavigationBarWidget({super.key});

  @override
  State<CustomBottomNavigationBarWidget> createState() =>
      _CustomBottomNavigationBarWidgetState();
}

class _CustomBottomNavigationBarWidgetState
    extends State<CustomBottomNavigationBarWidget> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final bool isSelected = _currentIndex == index;

    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () => _onItemTapped(index),
          splashColor: Colors.grey[300],
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: isSelected ? Colors.blue[900] : Colors.grey),
                const SizedBox(height: 4),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).devicePixelRatio * 5.5,
                    fontWeight: FontWeight.w600,
                    color: isSelected ? Colors.blue[900] : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCenterButton() {
    return Expanded(
      child: GestureDetector(
        onTap: () => _onItemTapped(2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.add, color: Colors.white),
            ),
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.shade200)),
        ),
        child: Row(
          children: [
            _buildNavItem(icon: Icons.home, label: 'Home', index: 0),
            _buildNavItem(
              icon: Icons.video_collection,
              label: 'Clips',
              index: 1,
            ),
            _buildCenterButton(),
            _buildNavItem(
              icon: Icons.subscriptions,
              label: 'Subscribed',
              index: 3,
            ),
            _buildNavItem(icon: Icons.person, label: 'You', index: 4),
          ],
        ),
      ),
    );
  }
}
