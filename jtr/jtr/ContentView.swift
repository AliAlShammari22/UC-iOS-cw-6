//
//  ContentView.swift
//  CW6ALI
//
//  Created by Ali AlShammari on 19/09/2022.
//

import SwiftUI

struct StudentsDetails: Identifiable {
    let id = UUID()
    
    var Name: String
    var Year: Int
    var Age: Int
}

struct ContentView: View {
    @State var students = [StudentsDetails(Name: "Ali", Year: 3, Age: 21),
                           StudentsDetails(Name: "Abdullah", Year: 2, Age: 26),
                           StudentsDetails(Name: "Saad", Year: 4, Age: 23)
    ]
    
    var body: some View {
        VStack{
            Image("idc")
                .resizable()
                .scaledToFit()
            Text("سجل الطلبة")
                .font(.largeTitle)
            List(students) {student in
                VStack{
                HStack{
                Text("Name:")
                Text(student.Name)
                }
                .frame(width: 200, height: 13, alignment: .leading)
                .multilineTextAlignment(.leading)
                HStack{
                Text("Year:")
                Text("\(student.Year)")
                }
                .frame(width: 200, height: 13, alignment: .leading)
                .multilineTextAlignment(.leading)
                HStack{
                Text("Age:")
                Text("\(student.Age)")
                }
                .frame(width: 200, height: 13, alignment: .leading)
                .multilineTextAlignment(.leading)
                }
            }
            .frame(width: 400, height: 300)
            HStack{
                Text("عدد الطلبة المسجلين: \(students.count)")
                    .font(.system(size: 25))
            Image(systemName: "exclamationmark.circle")
                    .font(.system(size: 25))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
