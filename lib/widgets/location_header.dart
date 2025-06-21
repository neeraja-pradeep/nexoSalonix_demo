import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../consts.dart';
class LocationHeader extends StatelessWidget {
  const LocationHeader({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(Responsive.screenWidth(context) * 0.045,
        Responsive.screenHeight(context) * 0.03,
        Responsive.screenWidth(context) * 0.044,
        Responsive.screenHeight(context) * 0.002,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
               Icon(Icons.location_on,
                  size: Responsive.iconSize(context),
                  color: const Color(0xFF112D4E)),
              const SizedBox(width: 6),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'location,',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'state',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
                ),
              
            ],
          ),
           Icon(LucideIcons.settings,
              size: Responsive.iconSize(context),
              color: const Color(0xFF112D4E)),
        ],
      ),
    );
  }
}
