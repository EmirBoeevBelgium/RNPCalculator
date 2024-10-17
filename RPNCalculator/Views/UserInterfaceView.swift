//
//  UserInterfaceView.swift
//  RPNCalculator
//
//  Created by emir.boeev on 14/10/2024.
//

import SwiftUI

struct UserInterfaceView: View {
    @State var calcEngine = CalcEngine()
    var body: some View {
        Grid {
            GridRow {
                VStack {
                    TextEditor(text: .constant(calcEngine.temporaryInput + "\n" + calcEngine.result)).border(.black, width: 2).frame(height: 220)
                    Button("Show stack") {
                        calcEngine.showStack()
                    }
                    Button("Clear stack") {
                        calcEngine.clearStack()
                    }
                }
                VStack {
                    Grid {
                        GridRow {
                            ForEach(7...9, id: \.self) {
                                column in
                                Button("\(column)") {
                                    calcEngine.input(number: "\(column)")
                                }.background(.black).foregroundStyle(.white).cornerRadius(5)
                            }
                            Button("/") {
                                calcEngine.divide()
                            }
                        }
                        GridRow {
                            ForEach(4...6, id: \.self) {
                                column in
                                Button("\(column)") {
                                    calcEngine.input(number: "\(column)")
                                }.background(.black).foregroundStyle(.white).cornerRadius(5)
                            }
                            Button("X") {
                                calcEngine.multiply()
                            }
                        }
                        GridRow {
                            ForEach(1...3, id: \.self) {
                                column in
                                Button("\(column)") {
                                    calcEngine.input(number: "\(column)")
                                }.background(.black).foregroundStyle(.white).cornerRadius(5)
                            }
                            Button("-") {
                                calcEngine.subtract()
                            }
                        }
                        GridRow {
                            Button("0") {
                                calcEngine.input(number: "0")
                            }.background(.black).foregroundStyle(.white).cornerRadius(5)
                            Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                            Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                            Button("+") {
                                calcEngine.sum()
                            }
                        }
                        GridRow {
                            Button("Clear") {
                                calcEngine.clear()
                            }.gridCellColumns(2)
                            Button("Enter") {
                                calcEngine.save()
                            }.gridCellColumns(2)
                        }
                    }
                    
                    
                
                }.frame(width: 200)
                
                
            }
        }
    }
}

#Preview {
    UserInterfaceView()
}
