//
//  SmallAddButton.swift
//  TodoDemo
//
//  Created by Arshia Shirzad on 6/25/22.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width:60)
                .foregroundColor(Color(hue: 0.0, saturation: 0.682, brightness: 0.866))
            
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height:60)
        
    }
}

struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
