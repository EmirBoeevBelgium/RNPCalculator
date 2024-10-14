//
//  UserInterfaceView.swift
//  RPNCalculator
//
//  Created by emir.boeev on 14/10/2024.
//

import SwiftUI

struct UserInterfaceView: View {
    @State var result = ""
    var body: some View {
        Grid {
            GridRow {
                VStack {
                    TextEditor(text: $result).border(.black, width: 2).frame(height: 200)
                    Button(action: {
                        print("Button clicked")
                    }) {
                        Text("Show stack")
                    }
                }
                VStack {
                    HStack {
                        
                    }
                    Grid {
                        GridRow {
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("7")
                            }
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("8")
                            }
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("9")
                            }
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("/")
                            }
                        }
                        GridRow {
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("4")
                            }
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("5")
                            }
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("6")

                            }
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("X")
                            }
                        }
                        GridRow {
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("1")
                            }
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("2")
                            }
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("3")
                            }
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("-")
                            }
                        }
                        GridRow {
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("0")
                            }
                            Text("")
                            Text("")
                            Button(action: {
                                print("Button clicked")
                            }) {
                                Text("+")
                            }
                        }
                        GridRow {
                            
                        }
                    }
                    HStack {
                        Button(action: {
                            print("Button clicked")
                        }) {
                            Text("Clear")
                        }
                        Button(action: {
                            print("Button clicked")
                        }) {
                            Text("Enter")
                        }
                    }.padding()
                }.frame(width: 200)
                
                
            }
        }
    }
}

#Preview {
    UserInterfaceView()
}
