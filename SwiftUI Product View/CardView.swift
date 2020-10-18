//
//  CardView.swift
//  SwiftUI Product View
//
//  Created by elhajjaji on 10/16/20.
//

import SwiftUI

struct CardView: View {
    @State private var quantity = 1
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("BUDWEISER")
                    .font(.title)
                    .fontWeight(.bold)
                Text("\(quantity) Bottle")
                    .foregroundColor(.secondary)
            }
            .padding(.top)
            .frame(maxWidth: .infinity, alignment: .leading)
            
        HStack{
            Stepper("\(quantity) "){
              quantity += 1
            }onDecrement: {
                quantity -= 1

            }
            .frame(width: 120)
            Spacer()
            Text("$\(quantity).00")
                .font(.title)
                .bold()
            }
        .padding(.vertical)
            
            Text("The King of Beers")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .center)
            
            Text("Grab an ice-cold Budweiser today. Experience why this medium-body, flavorful,  American-style lager since 1876.")
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .font(.largeTitle)
                        .foregroundColor(Color("BackgroundC"))
                        .padding()
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Add to cart")
                        .foregroundColor(.white)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)


                })
                .padding()
                .background(Color("BackgroundC"))
                .cornerRadius(30)
            }
            .padding(.bottom)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(30)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
