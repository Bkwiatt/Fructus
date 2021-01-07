//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Brandon Kwiatkowski on 8/22/20.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPS
    var fruit: Fruit
    let nutriets: [String] = ["Enery", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutriets.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutriets[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                    }
                }
            }
        } //: BOX
    }
}


// MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
