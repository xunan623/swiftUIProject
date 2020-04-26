//
//  ContentView.swift
//  swiftUIDemo
//
//  Created by 许楠楠 on 2020/4/26.
//  Copyright © 2020 许楠楠. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                ListViewCell()
            }
        .navigationBarTitle(Text("SwiftUI演示"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListViewCell: View {
    var body: some View {
        NavigationLink(destination: DetailView()) {
            Image("list_icon_left")
                .frame(minWidth: 100, idealWidth: 100, maxWidth: 100, minHeight: 100, idealHeight: 100, maxHeight: 100, alignment: Alignment.center)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text("荷兰风车")
                Text("阿萨姆奶茶")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
