//
//  DetailView.swift
//  Guanyuchi
//
//  Created by Xiaochun Shen on 2020/7/23.
//

import SwiftUI

struct DetailView: View {
    
    var currentCategory: Categories
    
    @State var showOrderSheet = false
    
    var body: some View {
        List(filterData(by: currentCategory)) { food in
            DetailRow(food: food, showOrderSheet: $showOrderSheet)
            
        }
        .navigationBarTitle(Text(categoryString(for: currentCategory)), displayMode: .inline)
        .sheet(isPresented: $showOrderSheet) {
            OrderForm(showOrderSheet: $showOrderSheet)
        }
    }
}


#if DEBUG
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(currentCategory: .burger)
    }
}
#endif
