//
//  MainView.swift
//  TromboneRoutines
//
//  Created by Alex Burdiss on 4/30/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State var showDetail = false
    
    
    var body: some View {
        NavigationView() {
            VStack {
                NavigationLink(destination:
                    RoutineView(showSelf: $showDetail),
                               isActive: $showDetail
                ) {
                    Text("Begin Routine")
                        .font(.headline)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.yellow, lineWidth: 1))
                        .padding()
                }
            }
            
            .navigationBarTitle("Trombone Routines")
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }
    

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
