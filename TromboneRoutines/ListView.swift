//
//  ListView.swift
//  TromboneRoutines
//
//  Created by Alex Burdiss on 4/30/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Long Tones")) {
                    ForEach(0 ..< longTones.count) { item in
                        NavigationLink(destination: ExerciseDetailView(image: longTones[item])) {
                           Text(longTones[item])
                        }
                    }
                }
                Section(header: Text("Slow Lip Slurs")) {
                    ForEach(0 ..< slowLipSlurs.count) { item in
                        NavigationLink(destination: ExerciseDetailView(image: slowLipSlurs[item])) {
                           Text(slowLipSlurs[item])
                        }
                    }
                }
                Section(header: Text("Fast Lip Slurs")) {
                    ForEach(0 ..< fastLipSlurs.count) { item in
                        NavigationLink(destination: ExerciseDetailView(image: fastLipSlurs[item])) {
                           Text(fastLipSlurs[item])
                        }
                    }
                }
                Section(header: Text("Single Note Articulation")) {
                    ForEach(0 ..< staticArticulation.count) { item in
                        NavigationLink(destination: ExerciseDetailView(image: staticArticulation[item])) {
                           Text(staticArticulation[item])
                        }
                    }
                }
                Section(header: Text("Moving Note Articulation")) {
                    ForEach(0 ..< variableArticulation.count) { item in
                        NavigationLink(destination: ExerciseDetailView(image: variableArticulation[item])) {
                           Text(variableArticulation[item])
                        }
                    }
                }
                Section(header: Text("Scales")) {
                    ForEach(0 ..< scales.count) { item in
                        NavigationLink(destination: ExerciseDetailView(image: scales[item])) {
                           Text(scales[item])
                        }
                    }
                }
                Section(header: Text("High Range")) {
                    ForEach(0 ..< highRange.count) { item in
                        NavigationLink(destination: ExerciseDetailView(image: highRange[item])) {
                           Text(highRange[item])
                        }
                    }
                }
                Section(header: Text("Low Range")) {
                    ForEach(0 ..< lowRange.count) { item in
                        NavigationLink(destination: ExerciseDetailView(image: lowRange[item])) {
                           Text(lowRange[item])
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("All Exercises")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
