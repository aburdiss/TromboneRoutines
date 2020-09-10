//
//  CreateCustomView.swift
//  TromboneRoutines
//
//  Created by Alexander Burdiss on 9/9/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

/**
 A view that allows the user to select elements to be put into a routine, name the routine, and save it to local memory
 */
struct CreateCustomView: View {
    /**
     The user created routines
     */
    @EnvironmentObject var customRoutines: CustomRoutines
    
    /**
     The user interface
     */
    var body: some View {
        VStack {
            Text("He")
        }
        .navigationBarTitle("Create Routine")
    }
    
}

struct CreateCustomView_Previews: PreviewProvider {
    static var previews: some View {
        CreateCustomView()
    }
}
