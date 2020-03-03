//
//  LoginView.swift
//  Vims
//
//  Created by Henrik Gregersen on 03/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    var body: some View {
        Toggle(isOn: $userSession.isUserLoggedIn) {
            Text ("LOGINVIEW Er bruger logget ind")
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    
    static let userSession = UserSession()
    
    static var previews: some View {
        LoginView().environmentObject(userSession)
    }
}
