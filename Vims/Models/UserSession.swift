//
//  UserSession.swift
//  Vims
//
//  Created by Henrik Gregersen on 03/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

class UserSession: ObservableObject {
    @Published var isUserLoggedIn : Bool = false
    
    //Very simple login feature. To be improved. 
    func logIn(_ user: UserAuth) {
       
        //Requieres user name and password
        if !user.userName.isEmpty && !user.password.isEmpty {
            isUserLoggedIn = true
        }
    }
}
