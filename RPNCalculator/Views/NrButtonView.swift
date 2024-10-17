//
//  NrButtonView.swift
//  RPNCalculator
//
//  Created by emir.boeev on 14/10/2024.
//

import SwiftUI

struct NrButtonView: View {
    var number: String
    @State var calcEngine: CalcEngine
    var body: some View {
        Button(number) {
            calcEngine.input(number: number)
        }.background(.black).foregroundStyle(.white).cornerRadius(5)
    }
}

#Preview {
    NrButtonView(number: "1", calcEngine: CalcEngine())
}
