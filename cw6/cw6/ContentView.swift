//
//  ContentView.swift
//  cw6
//
//  Created by Ali AlShammari on 20/09/2022.
//

import SwiftUI

struct Viewtwo: View {
    @Binding var cl: String
    @Binding  var chosenColor: Color
    var body: some View {
            Text(cl)
                .foregroundColor(Color.black)
                .frame(width: 1100, height: 1100)
                .background(chosenColor)
    }
}

struct ContentView: View {
    @State var Colors = [Color.blue, Color.red, Color.orange, Color.brown]
    @State var chosenColor = Color("")
    @State var text = ""
    var body: some View {
NavigationView{
            ZStack{
                Color.cyan
                    .ignoresSafeArea(.all)
                VStack{
                    Spacer()
                    Text("إختر لونك المفضل")
                        .font(.title2)
                    HStack{
                    ForEach(Colors, id: \.self) { Color in
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color)
                            .onTapGesture {
                                chosenColor = Color
                            }
                        }
                    }.padding()
                    Text("ماذا تريد ان تكتب")
                        .font(.title2)
                        .padding()
                    TextField("اكتب هنا", text: $text)
                        .frame(width: 250, height: 40)
                        .multilineTextAlignment(.trailing)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    Spacer()
                    NavigationLink(destination: Viewtwo(cl: $text, chosenColor: $chosenColor)) {
                        Text("احفظ")
                            .font(.largeTitle)
                            .frame(width: 300, height: 50)
                            .foregroundColor(Color.white)
                            .background(.green)
                            .clipShape(Capsule())
                    }
                    .navigationTitle(Text("دفتر يومياتي"))

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
