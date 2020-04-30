//
//  SettingsView.swift
//  TromboneRoutines
//
//  Created by Alex Burdiss on 4/30/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @State var longTonesToggle = true {
        didSet {
            UserDefaults.standard.set(self.longTonesToggle, forKey: "Long Tones")
        }
    }
    
    @State var slowLipSlursToggle = true {
        didSet {
            UserDefaults.standard.set(self.slowLipSlursToggle, forKey: "Slow Lip Slurs")
        }
    }
    
    @State var fastLipSlursToggle = true {
        didSet {
            UserDefaults.standard.set(self.fastLipSlursToggle, forKey: "Fast Lip Slurs")
        }
    }
    
    @State var staticArticulationToggle = true {
        didSet {
            UserDefaults.standard.set(self.staticArticulationToggle, forKey: "Static Articulation")
        }
    }
    
    @State var variableArticulationToggle = true {
        didSet {
            UserDefaults.standard.set(self.variableArticulationToggle, forKey: "Variable Articulation")
        }
    }
    
    @State var majorScalesToggle = true {
        didSet {
            UserDefaults.standard.set(self.majorScalesToggle, forKey: "Major Scales")
        }
    }
    
    @State var highRangeToggle = true {
        didSet {
            UserDefaults.standard.set(self.highRangeToggle, forKey: "High Range")
        }
    }
    
    @State var lowRangeToggle = true {
        didSet {
            UserDefaults.standard.set(self.lowRangeToggle, forKey: "Low Range")
        }
    }
    
    var highNoteNames: [String] = ["F4", "F♯4", "G♭4", "G4", "G♯4", "A♭4", "A4", "A♯4", "B♭4", "B4", "C5", "C♯5", "D♭5", "D5", "D♯5", "E♭5", "E5", "F5"]
    
    @State var highestNote = 0
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Fundamentals")) {
                        Toggle(isOn: $longTonesToggle) {
                            Text("Long Tones")
                        }
                        Toggle(isOn: $slowLipSlursToggle) {
                            Text("Slow Lip Slurs")
                        }
                        Toggle(isOn: $fastLipSlursToggle) {
                            Text("Fast Lip Slurs")
                        }
                        Toggle(isOn: $staticArticulationToggle) {
                            Text("Single Note Articulation")
                        }
                        Toggle(isOn: $variableArticulationToggle) {
                            Text("Changing Note Articulation")
                        }
                        Toggle(isOn: $majorScalesToggle) {
                            Text("Major Scales")
                        }
                        Toggle(isOn: $highRangeToggle) {
                            Text("High Range")
                        }
                        Toggle(isOn: $lowRangeToggle) {
                            Text("Low Range")
                        }
                    }
                    Section(header: Text("Range")) {
                        Picker(selection: $highestNote, label:Text("Highest Note")) {
                            ForEach(0 ..< highNoteNames.count) {
                                Text(self.highNoteNames[$0])
                            }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                
                Text("©2020 Alexander Burdiss and Qian Yu")
                    .padding(.bottom)
                
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
