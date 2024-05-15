import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nectar/features/order_accepted/presentation/views/widgets/order_accepted_view_body.dart';
class OrderAcceptedView extends StatelessWidget {
  const OrderAcceptedView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: OrderAcceptedViewBody(),
      ),
    );;
  }
}
