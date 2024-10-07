//
//  CollectionView.swift
//  Snack Shopping App
//
//  Created by Omveer Panwar on 06/10/24.
//

import SwiftUI

struct CollectionView: View {
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.presentationMode) var mode
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HStack{
                        Text("Order From The BEST OF **SNAKS** ")
                            .font(.system(size: 30))
                            .padding(.trailing)
                        Spacer()
                        Button{
                         //   NavigationLink(destination: Home().envir, label: <#T##() -> View#>)
                        }label: {
                            Image(systemName: "arrow.left").imageScale(.large)
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                        }
                       
                        }
                    .padding(30)
                   
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], content: {
                        ForEach(productList, id: \.id){
                            item in
                            SmallProductCard(product: item)
                                .environmentObject(cartManager)
                        }
                    })
                    .padding(.horizontal )
                    
                }
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    CollectionView()
        .environmentObject(CartManager())
}

struct SmallProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    
    var body: some View {
        ZStack{
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding(.trailing, -200)
                .rotationEffect(Angle(degrees: 30))
            ZStack {
                VStack(alignment: .leading , content:{
                    Text("\(product.name)")
                        .font(.system(size: 18, weight: .semibold))
                        .frame(width: 70)
                    
                    Text(product.category)
                        .font(.system(size: 18, weight: .semibold))
                        .padding()
                        .background(.white.opacity(0.5))
                        .clipShape(Capsule())
                    Spacer()
                    
                    HStack{
                        Text("$\(product.prices).0")
                            .font(.system(size: 14, weight: .semibold))
                        Spacer()
                        Button{
                            cartManager.addtoCart(product: product)
                        } label: {
                            Image(systemName: "basket")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 45, height: 40)
                                .background(.black)
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.trailing, -12)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .background(.white.opacity(0.9))
                    .clipShape(Capsule())
                })
            }
            .padding(20)
                .frame(width: 170, height: 215)
        }
            .frame(width: 170, height: 225)
            .background(product.color.opacity(0.13))
            .clipShape(.rect(cornerRadius: 30))
            .padding(.leading,10)
    }
}
