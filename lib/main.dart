import 'package:agmdm/CameraContainer.dart';
import 'package:agmdm/GpsContainer.dart';
import 'package:agmdm/Log1Container.dart';
import 'package:agmdm/SignalStrengthcontainer.dart';
import 'package:flutter/material.dart';
import 'package:agmdm/BatteryContainer.dart';
import 'package:agmdm/ComposContainer.dart';
import 'package:agmdm/FligthComputerContainer.dart';
import 'package:agmdm/Log2Container.dart';
import 'package:agmdm/Log3Container.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AGMDM_UI(),
  ));
}

class AGMDM_UI extends StatefulWidget {
  const AGMDM_UI({super.key});
  
  @override
  State<AGMDM_UI> createState() => _AGMDMState();
}

class _AGMDMState extends State<AGMDM_UI> {
  late Battery batterycontainer;
  late Camera cameracontainer;
  late Composcontainer composcontainer;
  late FligthComputer fligthcomputercontainer;
  late GPS gpscontainer;
  late Log1 log1container;
  late Log2 log2container;
  late Log3 log3container;
  late SignalStrength signalstrengthcontainer;

  final GlobalKey scaffoldKey = GlobalKey();
  
  @override
  void initState() {
    super.initState();
    // Pass this state instance to the Cameracontainer
    batterycontainer = Battery(state: _AGMDMState());
    cameracontainer = Camera(state: _AGMDMState());
    composcontainer = Composcontainer(state: _AGMDMState());
    fligthcomputercontainer = FligthComputer(state: _AGMDMState());
    gpscontainer = GPS(state: _AGMDMState());
    log1container = Log1(state: _AGMDMState());
    log2container = Log2(state: _AGMDMState());
    log3container = Log3(state: _AGMDMState());
    signalstrengthcontainer = SignalStrength(state: _AGMDMState());
  }
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF201F1F),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Container(
                    width: 1920,
                    height: 1080,
                    decoration: const BoxDecoration(
                      color: Color(0xFF201F1F),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 0, 0),
                                        child: cameracontainer.buildCameraWidget(context),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    19, 30, 0, 10),
                                            child: log1container.buildLog1WidgeT(context),
                                          ),
                                        ),
                                        Align(
                                          alignment: const AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    19, 10, 0, 0),
                                            child: log2container.buildLog2Widget(context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-0.24, 1),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50, 10, 0, 0),
                                    child: gpscontainer.buildGPSWidgeT(context),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.24, 1),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        75, 10, 0, 0),
                                    child: composcontainer.buildComposWidget(context),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.24, 1),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        75, 15, 0, 0),
                                    child: fligthcomputercontainer.buildFligthComputerWidget(context),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.24, 1),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        75, 10, 0, 0),
                                    child: signalstrengthcontainer.buildSignalStrengthWidget(context),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.24, 1),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50, 10, 10, 0),
                                    child: batterycontainer.buildBatteryWidget(context),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.24, 1),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        69, 10, 10, 0),
                                    child: log3container.buildLog3Widget(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}