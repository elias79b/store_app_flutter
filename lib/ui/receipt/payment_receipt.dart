import 'package:flutter/material.dart';
import 'package:store_flutter/theme.dart';

class PaymentReceiptScreen extends StatelessWidget {
  const PaymentReceiptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('رسید پرداخت'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: themeData.dividerColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  'پرداخت با موفقیت انجام شد',
                  style: themeData.textTheme.headline6!
                      .apply(color: themeData.colorScheme.primary),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'وضعیت سفارش',
                      style:
                          TextStyle(color: LightThemeColors.secondaryTextColor),
                    ),
                    Text(
                      'پرداخت شده',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
                const Divider(
                  height: 32,
                  thickness: 1,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'مبلغ',
                      style:
                          TextStyle(color: LightThemeColors.secondaryTextColor),
                    ),
                    Text(
                      '۱۴۹۰۰۰ تومان',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text('بازگشت به صفحه اصلی'))
        ],
      ),
    );
  }
}
