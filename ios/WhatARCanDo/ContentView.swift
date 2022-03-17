//
//  ContentView.swift
//  WhatARCanDo
//
//  Created by onee on 2022/3/7.
//

import SwiftUI

enum ARFunction: String {
    case LiDar = "LiDar"
}

extension ARFunction:  Identifiable{
    var id: Self { self }
}

struct ContentView: View {
    let arFunction: ARFunction;
    
    init(arFunction: ARFunction) {
        self.arFunction = arFunction
    }
    
    var body: some View {
        switch arFunction {
        case .LiDar:
            LiDAR()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(arFunction: ARFunction.LiDar)
        .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
    }
}
