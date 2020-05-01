//
//  RoutineView.swift
//  TromboneRoutines
//
//  Created by Alex Burdiss on 4/30/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct RoutineView: View {
    @ObservedObject var settings = settingsModel()
    
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
        checkDefaults()
        
        var tempExercise: String
        var newRoutine: [String] = []
        
        /// Adds one long tone
        if self.settings.longTonesToggle {
             newRoutine.append(longTones.randomElement()!)
        }
       
        /// Adds two slow lip slurs
        if self.settings.slowLipSlursToggle {
            newRoutine.append(slowLipSlurs.randomElement()!)
            repeat {
                tempExercise = slowLipSlurs.randomElement()!
            } while newRoutine.contains(tempExercise)
            newRoutine.append(tempExercise)
        }
       
        
        /// Adds two fast lip slurs
        if self.settings.fastLipSlursToggle {
            newRoutine.append(fastLipSlurs.randomElement()!)
            repeat {
                tempExercise = fastLipSlurs.randomElement()!
            } while newRoutine.contains(tempExercise)
            newRoutine.append(tempExercise)
        }

        /// Adds two static articulation
        if self.settings.staticArticulationToggle {
             newRoutine.append(staticArticulation.randomElement()!)
            repeat {
                tempExercise = staticArticulation.randomElement()!
            } while newRoutine.contains(tempExercise)
            newRoutine.append(tempExercise)
        }

        /// Adds two variable articulation
        if settings.variableArticulationToggle {
            newRoutine.append(variableArticulation.randomElement()!)
            repeat {
                tempExercise = variableArticulation.randomElement()!
            } while newRoutine.contains(tempExercise)
            newRoutine.append(tempExercise)
        }

        /// Adds one scale
        if settings.majorScalesToggle {
            newRoutine.append(scales.randomElement()!)
        }

        /// Adds one high range
        if settings.highRangeToggle {
            newRoutine.append(highRange.randomElement()!)
        }

        /// Adds one low range
        if settings.lowRangeToggle  {
            newRoutine.append(lowRange.randomElement()!)
        }
        
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
    
    func checkDefaults() {
        if !settings.longTonesToggle &&
            !settings.slowLipSlursToggle &&
            !settings.fastLipSlursToggle &&
            !settings.staticArticulationToggle &&
            !settings.variableArticulationToggle &&
            !settings.majorScalesToggle &&
            !settings.highRangeToggle &&
            !settings.lowRangeToggle
        {
            settings.longTonesToggle = true
            settings.slowLipSlursToggle = true
            settings.fastLipSlursToggle = true
            settings.staticArticulationToggle = true
            settings.variableArticulationToggle = true
            settings.majorScalesToggle = true
            settings.highRangeToggle = true
            settings.lowRangeToggle = true
        }
    }
}

struct RoutineView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineView(showSelf: .constant(true))
    }
}
