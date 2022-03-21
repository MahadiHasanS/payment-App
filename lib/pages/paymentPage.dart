import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors/colors.dart';
import 'package:flutter_application_1/pages/my_home_page.dart';
import 'package:flutter_application_1/widgets/buttons.dart';
import 'package:flutter_application_1/widgets/largeButton.dart';
import 'package:get/get.dart';

class PayMent extends StatelessWidget {
  const PayMent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        height: h,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assete/paymentbackground.png")),
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h * 0.14,
              // height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage("assete/success.png")),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Success !",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.mainColor,
                )),
            Text("Payment is completed for 2 bills",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColor.idColor,
                )),
            SizedBox(
              height: h * 0.045,
              // height: 30,
            ),
            Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: Colors.grey.withOpacity(0.5),
                  )),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 15, left: 20),
                                  height: 40,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.green,
                                  ),
                                  child: Icon(
                                    Icons.done,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "MCD GROUP",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.mainColor),
                                    ),
                                    Text(
                                      "ID:4759379",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.idColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.mainColor),
                                    ),
                                    Text(
                                      "Tk1000",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.mainColor),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 2,
                              color: Colors.grey.withOpacity(0.5),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Column(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.idColor,
                  ),
                ),
                Text(
                  "Tk4000",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.mainColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                  icon: Icons.share_sharp,
                  onTap: () {},
                  text: "share",
                ),
                SizedBox(
                  width: 80,
                ),
                AppButton(
                  icon: Icons.print_outlined,
                  onTap: () {},
                  text: "print",
                ),
              ],
            ),
            SizedBox(
              height: h * 0.02,
            ),
            AppLargeButton(
              text: "done",
              backgroundColor: Colors.white,
              textColor: AppColor.mainColor,
              onTap: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
