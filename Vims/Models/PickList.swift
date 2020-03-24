//
//  PickList.swift
//  Vims
//
//  Created by Henrik Gregersen on 17/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

class PickList: Identifiable, ObservableObject {
    public let id = UUID()
    public let salesOrder : SalesOrder
    @Published public var toBePicked = 0
    
    init(salesOrder: SalesOrder, toBePicked:Int) {
        self.salesOrder = salesOrder
        self.toBePicked = toBePicked
    }
}

extension PickList {
    static let demoData = [
        PickList(salesOrder: SalesOrder(id: "4711"), toBePicked: 11),
        PickList(salesOrder: SalesOrder(id: "4712"), toBePicked: 4),
        PickList(salesOrder: SalesOrder(id: "4713"), toBePicked: 300),
        PickList(salesOrder: SalesOrder(id: "4714"), toBePicked: 1),
    ]
}
