//
//  ChoosePickListView.swift
//  Vims
//
//  Created by Henrik Gregersen on 10/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ChoosePickListView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    var body: some View {
        
        VStack {
            if !userSession.isUserLoggedIn {
                NotLoggedInView()
            } else {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
            EmptyView()
        }
        
        
    }
}

struct ChoosePickListView_Previews: PreviewProvider {
    
    static let userSession = UserSession()
    
    static var previews: some View {
        ChoosePickListView().environmentObject(userSession)
    }
}
