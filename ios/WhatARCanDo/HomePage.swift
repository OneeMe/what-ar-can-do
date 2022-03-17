//
//  HomePage.swift
//  WhatARCanDo
//
//  Created by Onee on 2022/3/17.
//

import SwiftUI

let list = [
    ARFunction.LiDar,
]



struct HomePage: View {
    var body: some View {
        NavigationView {
            List(list) { item in
                NavigationLink {
                    ContentView(arFunction: item)
                } label: {
                    Text(item.rawValue)
                }
            }
            .navigationTitle("What AR Can Do")
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomePage()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
        }
    }
}
