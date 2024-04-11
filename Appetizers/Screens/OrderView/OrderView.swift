//
//  OrderView.swift
//  Appetizers
//
//  Created by Yanina Kovrakh on 29.03.2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack() {
                    List {
                        ForEach(order.items) { order in
                            AppetizerListCell(appetizer: order)
                        }
                        .onDelete(perform: { indexSet in
                            order.deleteItems(at: indexSet)
                        })
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Place order")
                    } label: {
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Add to order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Add to order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    OrderView()
}
