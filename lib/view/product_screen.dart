import 'package:first_app/models/produto_model.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final ProdutoModel produto;

  const ProductScreen({
    super.key,
    required this.produto
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.ios_share_outlined), onPressed: () {})
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                produto.imagem,
                width: MediaQuery.of(context).size.width,
                height: 160,
                fit: BoxFit.fill,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(produto.titulo,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                     const Icon(Icons.favorite_border_outlined, color: Colors.red,)
                ],
              ),
              const Row(
                children: [
                  Text("1Kg, price",
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.3),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.remove,
                            size: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.2),
                                borderRadius:
                                    BorderRadius.circular(100) // add this line
                                ),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.green,
                            size: 30,
                          ),
                        ],
                      ),
                      const Text(
                        "R\$4.99",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Details",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
              Column(children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 0.3),
                  )),
                  child: const Text(
                      "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                      style: TextStyle()),
                )
              ]),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(width: 0.3),
                )),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Nutritions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.2),
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(
                                    255, 218, 218, 218) // add this line
                                ),
                            child: const Row(
                              children: [
                                Text("100g"),
                                Icon(Icons.chevron_right_rounded)
                              ],
                            )
                            
                            ),
                      ]),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Review",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.star_sharp,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star_sharp,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star_sharp,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star_sharp,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star_sharp,
                      color: Colors.orange,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.green, // Change the background color here
                        minimumSize: const Size(320, 50),
                      ),
                      child: const Text(
                        "Add To Basket",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
