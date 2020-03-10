//
//  NumberBoxView.swift
//  Vims
//
//  Created by Henrik Gregersen on 10/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct NumberBoxView: View {
    var body: some View {

        ZStack {
            Image(systemName: "cube.box")
                .font(Font.system(size: 58.0))
                .foregroundColor(.brandBackgroundBorder)

            Image(systemName: "cube.box.fill")
                .font(Font.system(size: 51.0))
                .foregroundColor(.brandBackground)

        }
        /*
        RoundedRectangle(cornerRadius: 5.0).frame(width:52.0, height:52.0).foregroundColor(.brandBackground)
         */

    }
}

struct NumberBoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NumberBoxView().previewLayout(.fixed(width: 80.0, height: 80.0))
                .previewDisplayName("View")
            
            NumberBoxView().previewLayout(.fixed(width: 375.0, height: 80.0))
                .padding(.trailing, 300)
            .previewDisplayName("Tabel Cell Example")
        }
    }
}
