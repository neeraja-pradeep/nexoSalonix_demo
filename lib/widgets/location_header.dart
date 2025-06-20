import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class LocationHeader extends StatelessWidget {
  const LocationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 16, 18, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.location_on, size: 28, color: Color(0xFF112D4E)),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'location,',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF112D4E),
                    ),
                  ),
                  Text(
                    'state',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF112D4E),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(LucideIcons.settings, size: 26, color: Color(0xFF112D4E)),
        ],
      ),
    );
  }
}
