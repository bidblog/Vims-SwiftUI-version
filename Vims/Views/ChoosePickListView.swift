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
        
        return VStack {
                   
            
            if !userSession.isUserLoggedIn {
                NotLoggedInView()
            } else {
                PickListView()
            }
            
            EmptyView()
        }
        
        
    }
}

struct ChoosePickListView_Previews: PreviewProvider {
    
    static let userSession = UserSession()
    
    static var previews: some View {
        
        userSession.isUserLoggedIn = true
        
    return ChoosePickListView().environmentObject(userSession)
    }
}
