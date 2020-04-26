//
//  DetailView.swift
//  swiftUIDemo
//
//  Created by 许楠楠 on 2020/4/26.
//  Copyright © 2020 许楠楠. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @State var zoomed = false

    var body: some View {
        Image("list_icon_left")
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .onTapGesture {
                withAnimation { 
                    self.zoomed.toggle()
                }
            }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
