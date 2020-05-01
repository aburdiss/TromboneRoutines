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
                //TODO: Make this list static
                Section(header: Text("Long Tones")) {
                    NavigationLink(destination: ExerciseDetailView(image: "1")) {
                        Text("1")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "2")) {
                        Text("2")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "3")) {
                        Text("3")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "4")) {
                        Text("4")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "5")) {
                        Text("5")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "6")) {
                        Text("6")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "7")) {
                        Text("7")
                    }
                }
                Section(header: Text("Slow Lip Slurs")) {
                    NavigationLink(destination: ExerciseDetailView(image: "10")) {
                        Text("10")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "11")) {
                        Text("11")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "12")) {
                        Text("12")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "13")) {
                        Text("13")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "14")) {
                        Text("14")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "15")) {
                        Text("15")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "16")) {
                        Text("16")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "17")) {
                        Text("17")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "18")) {
                        Text("18")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "19")) {
                        Text("19")
                    }
                }
                Section(header: Text("Fast Lip Slurs")) {
                    NavigationLink(destination: ExerciseDetailView(image: "21")) {
                        Text("21")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "22")) {
                        Text("22")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "23")) {
                        Text("23")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "24")) {
                        Text("24")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "25")) {
                        Text("25")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "26")) {
                        Text("26")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "27")) {
                        Text("27")
                    }
                }
                Section(header: Text("Single Note Articulation")) {
                    NavigationLink(destination: ExerciseDetailView(image: "30")) {
                        Text("30")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "31")) {
                        Text("31")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "32")) {
                        Text("32")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "33")) {
                        Text("33")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "34")) {
                        Text("34")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "35")) {
                        Text("35")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "36")) {
                        Text("36")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "37")) {
                        Text("37")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "38")) {
                        Text("38")
                    }
                }
                Section(header: Text("Moving Note Articulation")) {
                    NavigationLink(destination: ExerciseDetailView(image: "40")) {
                        Text("40")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "41")) {
                        Text("41")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "42")) {
                        Text("42")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "43")) {
                        Text("43")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "44")) {
                        Text("44")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "45")) {
                        Text("45")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "46")) {
                        Text("46")
                    }
                }
                Section(header: Text("Scales")) {
                    Section {
                        NavigationLink(destination: ExerciseDetailView(image: "50")) {
                            Text("50 (B♭ Major)")
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "51")) {
                            Text("51 (B Major)")
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "52")) {
                            Text("52 (C Major)")
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "53")) {
                            Text("53 (D♭ Major)")
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "54")) {
                            Text("54 (D Major)")
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "55")) {
                            Text("55 (E♭ Major)")
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "56")) {
                            Text("56 (E Major)")
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "57")) {
                            Text("57 (F Major)")
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "58")) {
                            Text("58 (G♭ Major)")
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "59")) {
                            Text("59 (G Major)")
                        }
                    }
                    Section {
                        NavigationLink(destination: ExerciseDetailView(image: "60")) {
                            Text("60 (A♭ Major)")
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "61")) {
                            Text("61 (A Major)")
                        }
                    }
                }
                
                Section(header: Text("High Range")) {
                    NavigationLink(destination: ExerciseDetailView(image: "70")) {
                        Text("70")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "71")) {
                        Text("71")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "72")) {
                        Text("72")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "73")) {
                        Text("73")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "74")) {
                        Text("74")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "75")) {
                        Text("75")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "76")) {
                        Text("76")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "77")) {
                        Text("77")
                    }
                }
                Section(header: Text("Low Range")) {
                    NavigationLink(destination: ExerciseDetailView(image: "80")) {
                        Text("80")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "81")) {
                        Text("81")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "82")) {
                        Text("82")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "83")) {
                        Text("83")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "84")) {
                        Text("84")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "85")) {
                        Text("85")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "86")) {
                        Text("86")
                    }
                    NavigationLink(destination: ExerciseDetailView(image: "87")) {
                        Text("87")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("All Exercises")
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
