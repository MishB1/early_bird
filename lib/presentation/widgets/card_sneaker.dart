import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:early_bird/core/constants/app_constants.dart';

class CardSneaker extends StatefulWidget {
  const CardSneaker({super.key});

  @override
  State<CardSneaker> createState() => _CardSneakerState();
}

class _CardSneakerState extends State<CardSneaker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        width: 370,
        height: 190,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              color: Color(0x4B1A1F24),
              offset: Offset(0.0, 2),
            ),
          ],
          gradient: LinearGradient(
            colors: [Color(0xFFEE8B60), Color(0xFF4B39EF)],
            stops: [0, 1],
            begin: AlignmentDirectional(0.94, -1),
            end: AlignmentDirectional(-0.94, 1),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/default-project-widgets-xzsp5v/assets/ddr0sc80h0hs/@3xlogoMark_outline.png',
                width: 44,
                height: 44,
                fit: BoxFit.cover,
              ),
              Text(
                'Balance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '\$7,630',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 4),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '**** 0149',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '05/25',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
