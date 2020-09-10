//
//  CustomView.swift
//  TromboneRoutines
//
//  Created by Alexander Burdiss on 9/9/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

/**
 A list of all of the custom routines in the app.
 */
struct CustomListView: View {
    /**
     The list of user selected routines
     */
    @EnvironmentObject var customRoutines: CustomRoutines
    /**
     The user interface
     */
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CustomView(routine: CustomRoutine(name: "Test Routine", routine: ["1", "2", "3"]))) {
                    Text("Test Routine")
                }
            }
            .navigationBarTitle("Custom Routines")
            .navigationBarItems(trailing:
                NavigationLink(destination:
                    CreateCustomView()
                ) {
                    Text("Create")
                    Image(systemName: "pencil")
                }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CustomListView_Previews: PreviewProvider {
    static var previews: some View {
        CustomListView()
    }
}
