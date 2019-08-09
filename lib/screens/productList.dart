import 'package:flutter/material.dart';
import 'package:yemek_tarifleri/widgets/productListRow.dart';

class ProductList extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: _buildProductListPage(),
    );
  }

  _buildProductListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildFilterWidgets(screenSize);
          } else if (index == 4) {
            return SizedBox(
              height: 12.0,
            );
          } else {
            return _buildProductListRow();
          }
        },
      ),
    );
  }

  _buildFilterWidgets(Size screenSize) {
    return Container(
      margin: EdgeInsets.all(12.0),
      width: screenSize.width,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildFilterButton("Sort"),
              Container(
                color: Colors.black,
                width: 2.0,
                height: 24.0,
              ),
              _buildFilterButton("Filter"),
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell(
      onTap: (){
        print(title);
      },
      child: Row(
        children: <Widget>[
          Icon(Icons.arrow_drop_down, color: Colors.black),
          SizedBox(
            width: 2.0,
          ),
          Text(title)
        ],
      ),
    );
  }

  _buildProductListRow() {
    return ProductListRow(name:"Kazak", currentPrice:150,originalPrice:300, discount:50, imageUrl:"https://cdn-gap.akinon.net/products/2018/10/11/84846/61128184-614c-4cc8-808a-8bc55b772d70_size520x693_cropCenter.jpg");
  }
}
