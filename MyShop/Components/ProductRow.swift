//
//  ProductRow.swift
//  MyShop
//
//  Created by Hyunyou Lim on 2022/06/27.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
            VStack(alignment: .leading, spacing: 10){
                Text(product.name)
                    .bold()
                Text("\(product.price)")
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.72, brightness: 0.792))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding()
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
            .environmentObject(CartManager())
    }
}
