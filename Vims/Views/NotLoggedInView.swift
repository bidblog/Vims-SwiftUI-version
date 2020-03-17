//
//  NotLoggedInView.swift
//  Vims
//
//  Created by Henrik Gregersen on 10/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct NotLoggedInView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    @State private var showingLoginSheet = false
    
    var showTheSheet : Bool {
        
        var showDaSheet = false
        
        showDaSheet = !self.userSession.isUserLoggedIn && showingLoginSheet
        
        return showDaSheet
    }
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: 104.0, height: 104.0)
                Image(systemName: "exclamationmark.triangle.fill")
                    .font(Font.system(size: 64.0))
                    .foregroundColor(.yellow)
                    .offset(y: -5)
            }
            
            Text("Du er ikke logget ind").font(.title)
            
            Button(action: {
                
                self.showingLoginSheet = true
                
            }) {
                Text ("Log ind")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding([.leading, .trailing], 100)
                    .padding([.top, .bottom], 10)
                    .background(Color.brandAction)
                    .cornerRadius(5.0)
                    .shadow(radius: 4.0)
                    .padding(.top, 30)
                
            }
            .sheet(isPresented: $showingLoginSheet) {
                
                LoginView {
                    self.showingLoginSheet = false
                }.environmentObject(self.userSession)

            }
        }
        
    }
}

struct NotLoggedInView_Previews: PreviewProvider {
    
    static let userSession = UserSession()
    
    static var previews: some View {
        NotLoggedInView().environmentObject(userSession)
    }
}
