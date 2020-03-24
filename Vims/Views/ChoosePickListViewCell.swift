//
//  ChoosePickListViewCell.swift
//  Vims
//
//  Created by Henrik Gregersen on 17/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ChoosePickListViewCell: View {
    
    @Binding var pickList : PickList
    
    var body: some View {
        
        
        HStack {
            NumberBoxView(numberOfProducts: $pickList.toBePicked)
                .frame(width: 80)
            
            VStack(alignment: .leading) {
                Text("Ordrenr").font(.title)
                    .padding(.bottom, -20)
                RoundedRectangle(cornerRadius: 0)
                    .frame(height: 3.0)
                    .foregroundColor(.brandBackgroundBorder)
                Text(self.pickList.salesOrder.id)
                    .padding(.top, -5)
            }.padding(.trailing)
        }.cornerRadius(5.0)
    }
}

struct ChoosePickListViewCell_Previews: PreviewProvider {

    static let pickList = PickList(salesOrder: SalesOrder(id: "4711"), toBePicked: 2)
    
    static var previews: some View {
        
        ChoosePickListViewCell(pickList: .constant(pickList)).previewLayout(.fixed(width: 375, height: 90))
    }
}
