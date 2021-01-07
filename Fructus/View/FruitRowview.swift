//
//  FruitRowview.swift
//  Fructus
//
//  Created by Brandon Kwiatkowski on 8/20/20.
//

import SwiftUI

struct FruitRowview: View {
    // MARK: - PROP
    var fruit: Fruit
    
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                    
                    
            }//:VSTACK
        }//:HSTACK
    }
}
    //MARK: - PREVIEW
struct FruitRowview_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowview(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
