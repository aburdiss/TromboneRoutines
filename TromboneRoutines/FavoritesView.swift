//
//  FavoritesView.swift
//  TromboneRoutines
//
//  Created by Alexander Burdiss on 9/9/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

/**
 A view that randomizes the user selected favorite exercises. 
 */
struct FavoritesView: View {
    /**
     The user selected favorites.
     */
    @EnvironmentObject var favorites: Favorites
    
    /**
     The user interface
     */
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
