//
//  RoutineView.swift
//  TromboneRoutines
//
//  Created by Alex Burdiss on 4/30/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct RoutineView: View {
    @State private var longTonesSelect = UserDefaults.standard.bool(forKey: "Long Tones")
    @State private var slowLipSlursSelect = UserDefaults.standard.bool(forKey: "Slow Lip Slurs")
    @State private var fastLipSlursSelect = UserDefaults.standard.bool(forKey: "Fast Lip Slurs")
    @State private var staticArticulationSelect = UserDefaults.standard.bool(forKey: "Static Articulation")
    @State private var variableArticulationSelect = UserDefaults.standard.bool(forKey: "Variable Articulation")
    @State private var scalesSelect = UserDefaults.standard.bool(forKey: "Scales")
    @State private var HighRangeSelect = UserDefaults.standard.bool(forKey: "High Range")
    @State private var LowRangeSelect = UserDefaults.standard.bool(forKey: "Low Range")
    
    
    
    @Binding var showSelf: Bool
    @State private var finishedRoutine = false
    
    @State var routine = ["1", "2", "3", "4"]
    @State var thisExercise = 0
    
    var body: some View {
        VStack() {
            Image(routine[thisExercise])
                .resizable()
                .scaledToFit()
        }
        .alert(isPresented: $finishedRoutine) {
            Alert(title: Text("Daily Routine Complete!"), dismissButton: .default(Text("Return")) {
                    self.showSelf = false
                })
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.getPreviousExercise()
        }) {
            HStack {
                Image(systemName: "chevron.left")
                Text("Back")
                
            }
            }, trailing: Button(action: {
                self.getNextExercise()
            }) {
                HStack {
                    Text("Next")
                    Image(systemName: "chevron.right")
                }
        })
        
        .onAppear() {
            self.generateRoutine()
        }
    }
    
    /**
     Generates a random routine from available exercises
     */
    func generateRoutine() {
        var tempExercise: String
        var newRoutine: [String] = []
        
        /// Adds one long tone
        
        newRoutine.append(longTones.randomElement()!)
        /// Adds two slow lip slurs
        newRoutine.append(slowLipSlurs.randomElement()!)
        repeat {
            tempExercise = slowLipSlurs.randomElement()!
        } while newRoutine.contains(tempExercise) == true
        newRoutine.append(tempExercise)
        /// Adds two fast lip slurs
        
        /// Adds one static articulation
        
        /// Adds one variable articulation
        
        /// Adds one scale
        
        /// Adds one high range
        
        /// Adds one low range
        
        /// Sets new routine
        self.routine = newRoutine
    }
    
    /**
     Goes forward one exercise. If at last exercise, shows alert that exits routine.
     */
    func getNextExercise() {
        if (self.thisExercise == routine.count - 1) {
            self.finishedRoutine = true
        } else {
           self.thisExercise += 1
        }
    }
    
    /**
     Goes back one exercise. If at first exercise, exits routine.
     */
    func getPreviousExercise() {
        if (self.thisExercise == 0) {
            self.showSelf = false
        } else {
            self.thisExercise -= 1
        }
    }
}

struct RoutineView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineView(showSelf: .constant(true))
    }
}
