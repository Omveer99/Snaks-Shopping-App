//
//  ContentView.swift
//  Snack Shopping App
//
//  Created by Omveer Panwar on 06/10/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottom){
                Home()
                    .environmentObject(cartManager)
                
                if cartManager.products.count > 0 {
                    NavigationLink(destination: CardView().environmentObject(cartManager)){
                        HStack(spacing: 30){
                            Text("\(cartManager.products.count)")
                                .padding()
                                .background(.yellow)
                                .clipShape(Circle())
                                .foregroundColor(.black)
                            
                            VStack(alignment: .leading){
                                Text("Cart")
                                    .font(.system(size: 26, weight: .semibold))
                                Text("\(cartManager.products.count) Item")
                                    .font(.system(size: 18))
                            }
                            Spacer()
                            ForEach(cartManager.products, id: \.name){ products in Image(products.image)
                                    .resizable()
                                    .scaledToFit()
                                    .padding(8)
                                    .frame(width: 60, height: 60)
                                    .background(.white)
                                    .clipShape(Circle())
                                    .padding(.leading, -60)
                                
                            }
                        }
                        .padding(30)
                        .frame(width: .infinity, height: 120)
                        .background(.black)
                        .clipShape(.rect(topLeadingRadius:60, topTrailingRadius:60))
                        .foregroundColor(.white)
                        .edgesIgnoringSafeArea(.bottom)
                    }
                    }
                  
            }.edgesIgnoringSafeArea(.bottom)

        }
        .edgesIgnoringSafeArea(.bottom)
     
    }
}

#Preview {
    ContentView()
}
