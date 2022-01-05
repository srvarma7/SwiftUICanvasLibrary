//
//  SwiftUIView.swift
//  
//
//  Created by Sai Kallepalli on 5/1/22.
//

import SwiftUI

struct APreviewer: View {
    
    @State var jai: Bool = false
    @State var sai: Bool = false
    
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            SwitchButton(isSelected: $jai)
            GrowButton(isSelected: $sai)
        }
    }
}

struct APreviewer_Previews: PreviewProvider {
    static var previews: some View {
        APreviewer()
    }
}
