//
//  DetailRow.swift
//  Guanyuchi
//
//  Created by Xiaochun Shen on 2020/7/23.
//

import SwiftUI

struct DetailRow: View {
    
    var food: Food
    @Binding var showOrderSheet: Bool
    
    
    var body: some View {
       
            HStack {
                VStack(alignment: .leading) {
                    Text(food.title)
                        .font(.headline)
                        .padding(.top, 10)
                    Text("\(food.price, specifier: "%2.2f") $")
                        .font(.caption)
                }
                Spacer()
                
                Button(action: { showOrderSheet = true } ) {
                    Text("ORDER")
                        .foregroundColor(.white)
                }
                .frame(width: 80, height: 50)
                .background(Color.orange)
                .cornerRadius(10.0)
                
            }
            .padding(20)
            
            
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(food: foodData[0], showOrderSheet: .constant(false))
    }
}
