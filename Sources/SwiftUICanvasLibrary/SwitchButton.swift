//
//  SwiftUIView 2.swift
//  
//
//  Created by Sai Kallepalli on 5/1/22.
//

import SwiftUI

public struct SwitchButton: View {
    
    @Binding private var isSelected: Bool
    
    public init(isSelected: Binding<Bool>) {
        _isSelected = isSelected
    }
    
    public var body: some View {
        Button {
            withAnimation {
                isSelected.toggle()
            }
        } label: {
            VStack {
                Circle()
                    .foregroundColor(isSelected ? .green : .gray)
                    .frame(width: 15, height: 15)
                Text(isSelected ? "Tap to Off" : "Tap to On")
                    .padding([.horizontal], 20)
            }
            .padding([.vertical], 10)
            .foregroundColor(isSelected ? .white : .white)
            .background(isSelected ? Color.blue : Color.black)
            .clipShape(Capsule())
            .animation(.default)
        }
    }
}
