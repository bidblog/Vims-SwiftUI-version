//
//  ContentView.swift
//  Vims
//
//  Created by Henrik Gregersen on 03/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $userSession.isUserLoggedIn) {
                    Text ("Er bruger logget ind")
                }.padding()
                
                
                NavigationLink(destination: LoginView()) {
                    Text ("Hop til næste skærm")
                }
 
                
                Text("BRAND FARVE").foregroundColor(.brandAccent)
                
            }.navigationBarTitle("Test Environment")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static let environmentSession = UserSession()
    
    static var previews: some View {
        ContentView().environmentObject(environmentSession)
    }
}
