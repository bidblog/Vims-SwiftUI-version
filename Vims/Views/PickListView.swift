//
//  PickListView.swift
//  Vims
//
//  Created by Henrik Gregersen on 24/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct PickListView: View {
    
    @State private var pickLists : [PickList] = PickList.demoData
        
    //TODO: Remove this...
    var pickListData : [PickList]
    
    init() {
        // Perhaps we could launch the code here that gets the data form the server.
        self.pickListData = PickList.demoData
    }
    
    var body: some View {
        
        List {
            // Traversing the array, by index to get the individual pickLists.
            ForEach(0..<pickLists.count) { ix in
                                
                // Example of inline binding
                ChoosePickListViewCell(pickList: Binding(
                    get: {
                        return self.pickLists[ix]
                },
                    set: { (newValue) in
                        self.pickLists[ix] = newValue
                }
                ))
                
            }
            
        }
       
    }
}

struct PickListView_Previews: PreviewProvider {
    static var previews: some View {
        PickListView()
    }
}
