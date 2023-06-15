import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Agendar extends StatefulWidget {
  const Agendar({super.key});

  @override
  State<Agendar> createState() => _AgendarState();
}

class _AgendarState extends State<Agendar> {
  _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            child: AlertDialog(
              actions: [
                Container(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.horizontal_rule_rounded,
                          size: 39,
                        )))
              ],
            ),
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff0E1647), Color(0xff0A1033)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          title: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 50),
            child: const Text(
              'Agendar partida',
              style: TextStyle(
                  fontFamily: 'rajdhani',
                  fontSize: 20,
                  color: Color(0xffDDE3F0),
                  fontWeight: FontWeight.w700),
            ),
          ),
          leading: const Icon(Icons.arrow_back),
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff171F52), Color(0xff1D2766)])),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 32, left: 24, bottom: 16),
              child: const Expanded(
                  child: Text(
                'Categoria',
                style: TextStyle(
                    fontFamily: 'rajdhani',
                    fontSize: 18,
                    color: Color(0xffDDE3F0),
                    fontWeight: FontWeight.w700),
              )),
            ),
            Container(
              height: 120,
              margin: EdgeInsets.only(left: 24),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xff243189), Color(0xff1B2565)])),
                    child: Column(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(
                              right: 8, top: 8, bottom: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                  width: 1, color: Color(0xff243189))),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 16),
                            child: Image.asset('assets/images/5.png')),
                        const Text(
                          'Ranqueada',
                          style: TextStyle(
                              fontFamily: 'rajdhani',
                              fontSize: 15,
                              color: Color(0xffDDE3F0),
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    height: 120,
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xff243189), Color(0xff1B2565)])),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(
                              right: 8, top: 8, bottom: 4),
                          child: Image.asset('assets/images/8.png'),
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: Image.asset('assets/images/6.png')),
                        const Text(
                          'Duelo 1x1',
                          style: TextStyle(
                              fontFamily: 'rajdhani',
                              fontSize: 15,
                              color: Color(0xffDDE3F0),
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    height: 120,
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xff243189), Color(0xff1B2565)])),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(
                              right: 8, top: 8, bottom: 4),
                          child: Image.asset('assets/images/8.png'),
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            child: Image.asset('assets/images/7.png')),
                        const Text(
                          'Diversão',
                          style: TextStyle(
                              fontFamily: 'rajdhani',
                              fontSize: 15,
                              color: Color(0xffDDE3F0),
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    height: 120,
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xff243189), Color(0xff1B2565)])),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(
                              right: 8, top: 8, bottom: 4),
                          child: Image.asset('assets/images/8.png'),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 16),
                            child: Image.asset('assets/images/5.png')),
                        const Text(
                          'Ranqueada',
                          style: TextStyle(
                              fontFamily: 'rajdhani',
                              fontSize: 15,
                              color: Color(0xffDDE3F0),
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32, right: 24),
              width: 327,
              height: 68,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xff1B2565),
                    width: 1,
                  )),
              child: Row(
                children: [
                  Container(
                    height: 68,
                    width: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff171F52), Color(0xff1D2766)])),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: const Text(
                      'Selecione um servidor',
                      style: TextStyle(
                          fontFamily: 'rajdhani',
                          fontSize: 18,
                          color: Color(0xffDDE3F0),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _showDialog();
                    },
                    icon: const Icon(Icons.chevron_right_outlined),
                    color: const Color(0xffABB1CC),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 28, left: 24, bottom: 28),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        const Text(
                          'Dia e mês',
                          style: TextStyle(
                              fontFamily: 'rajdhani',
                              fontSize: 18,
                              color: Color(0xffDDE3F0),
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 99),
                          child: const Text(
                            'Horário',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 18,
                                color: Color(0xffDDE3F0),
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 48,
                        width: 156,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff171F52),
                                  Color(0xff1D2766)
                                ])),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 16),
                          child: const Text(
                            'dd/mm',
                            style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 13,
                                color: Color(0xffABB1CC),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        height: 48,
                        width: 156,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff171F52),
                                  Color(0xff1D2766)
                                ])),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 16),
                          child: const Text(
                            'hh:mm',
                            style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 13,
                                color: Color(0xffABB1CC),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: [
                      const Text(
                        'Descrição',
                        style: TextStyle(
                            fontFamily: 'rajdhani',
                            fontSize: 18,
                            color: Color(0xffDDE3F0),
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 136),
                        child: const Text(
                          'Max 100 caracteres',
                          style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 13,
                              color: Color(0xffABB1CC),
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 24, top: 12),
                  height: 95,
                  width: 328,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Color(0xff243189), Color(0xff1B2565)]),
                      borderRadius: BorderRadius.circular(8)),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 56, right: 24),
              height: 56,
              width: 328,
              child: const Center(
                child: Text('Agendar',
                    style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 15,
                        color: Color(0xffDDE3F0),
                        fontWeight: FontWeight.w500)),
              ),
              decoration: BoxDecoration(
                  color: Color(0xffE51C44).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8)),
            )
          ],
        ),
      ),
    );
  }
}
