//
//  NrButtonView.swift
//  RPNCalculator
//
//  Created by emir.boeev on 14/10/2024.
//

import SwiftUI

struct NrButtonView: View {
    var number: Int
    var body: some View {
        Button(action: {
            
        }) {
            Text(String(number))
        }.background(.black).foregroundStyle(.white).cornerRadius(5)
    }
}

#Preview {
    NrButtonView(number: 1)
}
