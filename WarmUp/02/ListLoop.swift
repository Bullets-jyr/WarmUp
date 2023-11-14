//
//  ListLoop.swift
//  WarmUp
//
//  Created by xinapse on 11/13/23.
//

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListLoop: View {
    
    @State var favoriteFruits = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 3000),
        Fruit(name: "Cherry", matchFruitName: "Double Kiwi", price: 4000),
        Fruit(name: "Double Kiwi", matchFruitName: "Elder berry", price: 2400),
        Fruit(name: "Elder berry", matchFruitName: "Double Kiwi", price: 8000),
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
    ]
    
//    var fruits = [
//        "Apple",
//        "Banana",
//        "Cherry",
//        "Double Kiwi",
//        "Elder berry",
//    ]
    
//    var MatchFruits = [
//        "Banana",
//        "Banana",
//        "Double Kiwi",
//        "Elder berry",
//        "Double Kiwi",
//    ]
    
//    var price = [
//        "1000",
//        "3000",
//        "4000",
//        "2400",
//        "8000",
//    ]
    
//    var count = 0
    
    @State var fruitName: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("insert fruit name", text: $fruitName)
                    Button {
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: "Apple", price: 1000))
                    } label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                List {
                    ForEach(favoriteFruits, id: \.self) { fruit in
                        VStack(alignment: .leading) {
                            Text("name: \(fruit.name)")
                            Text("matchFruitName: \(fruit.matchFruitName)")
                            Text("price: \(fruit.price)")
                        }
                    }.onDelete { indexSet in
                        // favoriteFruits.remove(atOffsets: indexSet)
                        favoriteFruits.remove(at: 0)
                    }
                }.navigationTitle("Fruit List")
            }
        }
    }
}

#Preview {
    ListLoop()
}
