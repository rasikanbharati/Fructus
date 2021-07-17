//
//  FruitNutritentsView.swift
//  Fructus
//
//  Created by Rahul on 09/07/21.
//

import SwiftUI

struct FruitNutritentsView: View {
    //MARK: - PROPERITES
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    //MARK: - BODY
    
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \ .self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }.foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//:BOX
    }
}
    //MARK: - PREVIEW

struct FruitNutritentsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritentsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
