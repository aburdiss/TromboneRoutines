//
//  Model.swift
//  TromboneRoutines
//
//  Created by Alex Burdiss on 4/30/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import Foundation

let longTones: [String] = ["1", "2", "3", "4", "5", "6", "7"]
let slowLipSlurs: [String] = ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19"]
let fastLipSlurs: [String] = ["21", "22", "23", "24", "25", "26", "27"]
let staticArticulation: [String] = ["30", "31", "32", "33", "34", "35", "36", "37", "38"]
let variableArticulation: [String] = ["40", "41", "42", "43", "44", "45", "46"]
let scales: [String] = ["50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61"]
let highRange: [String] = ["70", "71", "72", "73", "74", "75", "76", "77"]
let lowRange: [String] = ["80", "81", "82", "83", "84", "85", "86", "87"]


class settingsModel: ObservableObject {
    
    @Published var longTonesToggle: Bool = UserDefaults.standard.bool(forKey: "LongTones") {
        didSet {
            UserDefaults.standard.set(self.longTonesToggle, forKey: "LongTones")
        }
    }
    
    @Published var slowLipSlursToggle: Bool = UserDefaults.standard.bool(forKey: "SlowLipSlurs") {
        didSet {
            UserDefaults.standard.set(self.slowLipSlursToggle, forKey: "SlowLipSlurs")
        }
    }
    
    @Published var fastLipSlursToggle: Bool = UserDefaults.standard.bool(forKey: "FastLipSlurs"){
        didSet {
            UserDefaults.standard.set(self.fastLipSlursToggle, forKey: "FastLipSlurs")
        }
    }
    
    @Published var staticArticulationToggle: Bool = UserDefaults.standard.bool(forKey: "StaticArticulation") {
        didSet {
            UserDefaults.standard.set(self.staticArticulationToggle, forKey: "StaticArticulation")
        }
    }
    
    @Published var variableArticulationToggle: Bool = UserDefaults.standard.bool(forKey: "VariableArticulation") {
        didSet {
            UserDefaults.standard.set(self.variableArticulationToggle, forKey: "VariableArticulation")
        }
    }
    
    @Published var majorScalesToggle: Bool = UserDefaults.standard.bool(forKey: "MajorScales") {
        didSet {
            UserDefaults.standard.set(self.majorScalesToggle, forKey: "MajorScales")
        }
    }
    
    @Published var highRangeToggle: Bool = UserDefaults.standard.bool(forKey: "HighRange") {
        didSet {
            UserDefaults.standard.set(self.highRangeToggle, forKey: "HighRange")
        }
    }
    
    @Published var lowRangeToggle: Bool = UserDefaults.standard.bool(forKey: "LowRange") {
        didSet {
            UserDefaults.standard.set(self.lowRangeToggle, forKey: "LowRange")
        }
    }
}
