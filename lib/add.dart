import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  Widget _imagePreview() {
    return Container(
      width: Get.width,
      height: Get.width,
      color: Colors.grey,
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: const [
                Text(
                  "갤러리",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: const [
                    Icon(Icons.check_outlined),
                    Text("여러 항목 선택")
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.camera_alt_outlined),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _imageSelectList() {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            childAspectRatio: 1),
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.red,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(15.0),
          ),
        ),
        title: const Text(
          "Photo",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _imagePreview(),
            _header(),
            _imageSelectList(),
          ],
        ),
      ),
    );
  }
}
