//
//  SwiftUIView.swift
//  
//
//  Created by Sai Kallepalli on 5/1/22.
//

import SwiftUI

public struct GrowButton: View {
    
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
            Text(isSelected ? "Tap to Shrink" : "Tap to Grow")
                .animation(.default)
                .padding(isSelected ? 50 : 20)
                .foregroundColor(isSelected ? .white : .white)
                .background(isSelected ? Color.blue : Color.black)
                .clipShape(
                    RoundedRectangle(cornerRadius: isSelected ? 15 : 30)
                )
        }
    }
}
