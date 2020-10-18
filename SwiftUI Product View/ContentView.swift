//
//  ContentView.swift
//  SwiftUI Product View
//
//  Created by elhajjaji on 10/16/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DetailView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
         
        }
    }
}


//MARK: - DetailView
struct DetailView : View {
    var body: some View {
        ZStack{
            Color("BackgroundC")
                .ignoresSafeArea(.all)
            VStack{
                Spacer()
                ProductView()
                Spacer()
                CardView()
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
//MARK: - ProductView
struct ProductView : View {
    var body : some View {
        TabView{
            ForEach(0..<5){ _ in
                Image("beer")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding()
        }
        .frame(width: UIScreen.main.bounds.width)
        .tabViewStyle(PageTabViewStyle())
    }
}

