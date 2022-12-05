//
//  ColorSelectorView.swift
//  ColorSelectorFramework
//
//  Created by Молочков Сергей on 05.12.2022.
//

import SwiftUI

@available(iOS 13.0, *)
public struct ColorSelectorView: View {
    @Binding var selectedColor: Color
    
    let colors: [Color] = [.red, .purple, .green, .yellow, .blue]
    
    public var body: some View {
        HStack {
            ForEach(colors, id: \.self) {color in
                Image(systemName: selectedColor == color ?
                      "record.circle.fill" : "circle.fill")
                .foregroundColor(color)
                .onTapGesture {
                    selectedColor = color
                }
            }
        }
    }
    
   public init(selectedColor: Binding<Color>) {
        self._selectedColor = selectedColor
    }
}

@available(iOS 13.0.0, *)
struct ColorSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSelectorView(selectedColor: .constant(.blue))
    }
}
