//
//  ManufacturerExtension.swift
//  ANTMessageProtocol
//
//  Created by Kevin Hoogheem on 11/11/17.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


import Foundation

@available(swift 4.0)
public extension Manufacturer {

    /// Unknown ID
    class var unknown: Manufacturer { return Manufacturer(id: 0, name: "Unknown") }
    /// Development ID
    class var development: Manufacturer { return Manufacturer(id: 255, name: "Development") }


    /// Garmin
     class var garmin: Manufacturer { return Manufacturer(id: 1, name: "Garmin") }
    /// Garmin FR405 ANTFS
     class var garminFR405: Manufacturer { return Manufacturer(id: 2, name: "Garmin FR405 ANTFS") }
    /// Zephyr
     class var zephyr: Manufacturer { return Manufacturer(id: 3, name: "Zephyr") }
    /// Dayton
     class var dayton: Manufacturer { return Manufacturer(id: 4, name: "Dayton") }
    /// IDT
     class var idt: Manufacturer { return Manufacturer(id: 5, name: "IDT") }
    /// SRM
     class var srm: Manufacturer { return Manufacturer(id: 6, name: "SRM") }
    /// Quarq
     class var quarq: Manufacturer { return Manufacturer(id: 7, name: "Quarq") }
    /// iBike
     class var iBike: Manufacturer { return Manufacturer(id: 8, name: "iBike") }
    /// Saris
     class var saris: Manufacturer { return Manufacturer(id: 9, name: "Saris") }
    /// Spart HK
     class var spartHK: Manufacturer { return Manufacturer(id: 10, name: "Spart HK") }
    /// Tanita
     class var tanita: Manufacturer { return Manufacturer(id: 11, name: "Tanita") }
    /// Echowell
     class var echowell: Manufacturer { return Manufacturer(id: 12, name: "Echowell") }
    /// Dynastream OEM
     class var dynastreamOem: Manufacturer { return Manufacturer(id: 13, name: "Dynastream OEM") }
    /// Nautilus
     class var nautilus: Manufacturer { return Manufacturer(id: 14, name: "Nautilus") }
    /// Dynastream
     class var dynastream: Manufacturer { return Manufacturer(id: 15, name: "Dynastream") }
    /// Timex
     class var timex: Manufacturer { return Manufacturer(id: 16, name: "Timex") }
    /// Metrigear
     class var metrigear: Manufacturer { return Manufacturer(id: 17, name: "Metrigear") }
    /// Xelic
     class var xelic: Manufacturer { return Manufacturer(id: 18, name: "Xelic") }
    /// Beurer
     class var beurer: Manufacturer { return Manufacturer(id: 19, name: "Beurer") }
    /// Cardiosport
     class var cardioSport: Manufacturer { return Manufacturer(id: 20, name: "Cardiosport") }
    /// A & D
     class var aAndD: Manufacturer { return Manufacturer(id: 21, name: "A & D") }
    /// HMM
     class var hmm: Manufacturer { return Manufacturer(id: 22, name: "HMM") }
    /// SUUNTO
     class var suunto: Manufacturer { return Manufacturer(id: 23, name: "SUUNTO") }
    /// Thita Elektronik
     class var thitaElektronik: Manufacturer { return Manufacturer(id: 24, name: "Thita Elektronik") }
    /// G.Pulse
     class var gPulse: Manufacturer { return Manufacturer(id: 25, name: "G.Pulse") }
    /// Clean Mobile
     class var cleanMobile: Manufacturer { return Manufacturer(id: 26, name: "Clean Mobile") }
    /// Pedal Brain
     class var pedalBrain: Manufacturer { return Manufacturer(id: 27, name: "Pedal Brain") }
    /// Peaksware
     class var peaksware: Manufacturer { return Manufacturer(id: 28, name: "Peaksware") }
    /// Saxonar
     class var saxonar: Manufacturer { return Manufacturer(id: 29, name: "Saxonar") }
    /// Lemond Fitness
     class var lemondFitness: Manufacturer { return Manufacturer(id: 30, name: "Lemond Fitness") }
    /// Dexcom
     class var dexcom: Manufacturer { return Manufacturer(id: 31, name: "Dexcom") }
    /// Wahoo Fitness
     class var wahooFitness: Manufacturer { return Manufacturer(id: 32, name: "Wahoo Fitness") }
    /// Octane Fitness
     class var octaneFitness: Manufacturer { return Manufacturer(id: 33, name: "Octane Fitness") }
    /// Archinoetics
     class var archinoetics: Manufacturer { return Manufacturer(id: 34, name: "Archinoetics") }
    /// The Hurt Box
     class var theHurtBox: Manufacturer { return Manufacturer(id: 35, name: "The Hurt Box") }
    /// Citizen Systems
     class var citizenSystems: Manufacturer { return Manufacturer(id: 36, name: "Citizen Systems") }
    /// Magellan
     class var magellan: Manufacturer { return Manufacturer(id: 37, name: "Magellan") }
    /// Osynce
     class var osynce: Manufacturer { return Manufacturer(id: 38, name: "Osynce") }
    /// Holux
     class var holux: Manufacturer { return Manufacturer(id: 39, name: "Holux") }
    /// Concept2
     class var concept2: Manufacturer { return Manufacturer(id: 40, name: "Concept2") }

    // 41 Left Blank

    /// One Giant Leap
     class var oneGiantLeap: Manufacturer { return Manufacturer(id: 42, name: "One Giant Leap") }
    /// Ace Sensor
     class var aceSensor: Manufacturer { return Manufacturer(id: 43, name: "Ace Sensor") }
    /// Brim Brothers
     class var brimBrothers: Manufacturer { return Manufacturer(id: 44, name: "Brim Brothers") }
    /// Xplova
     class var xplova: Manufacturer { return Manufacturer(id: 45, name: "Xplova") }
    /// Perception Digital
     class var perceptionDigital: Manufacturer { return Manufacturer(id: 46, name: "Perception Digital") }
    /// bf1systems Ltd
     class var bf1Systems: Manufacturer { return Manufacturer(id: 47, name: "bf1systems Ltd") }
    /// Pioneer
     class var pioneer: Manufacturer { return Manufacturer(id: 48, name: "Pioneer") }
    /// Spantec
     class var spantec: Manufacturer { return Manufacturer(id: 49, name: "Spantec") }
    /// Metalogics
     class var metalogics: Manufacturer { return Manufacturer(id: 50, name: "Metalogics") }
    /// 4IIII Innovations Inc.
     class var fouriii: Manufacturer { return Manufacturer(id: 51, name: "4IIII Innovations Inc.") }
    /// Seiko Epson
     class var seikoEpson: Manufacturer { return Manufacturer(id: 52, name: "Seiko Epson") }
    /// Seiko Epson OEM
     class var seikoEpsonOem: Manufacturer { return Manufacturer(id: 53, name: "Seiko Epson OEM") }
    /// IFor Powell
     class var iForPowell: Manufacturer { return Manufacturer(id: 54, name: "IFor Powell") }
    /// Maxwell Guider
     class var maxwellGuider: Manufacturer { return Manufacturer(id: 55, name: "Maxwell Guider") }
    /// Star Trac
     class var starTrac: Manufacturer { return Manufacturer(id: 56, name: "Star Trac") }
    /// Breakaway
     class var breakaway: Manufacturer { return Manufacturer(id: 57, name: "Breakaway") }
    /// Alatech Technology LTD.
     class var alatechTechnology: Manufacturer { return Manufacturer(id: 58, name: "Alatech Technology LTD.") }
    /// MIO Technology Europe
     class var mioTechnologyEurope: Manufacturer { return Manufacturer(id: 59, name: "MIO Technology Europe") }
    /// Rotor
     class var rotor: Manufacturer { return Manufacturer(id: 60, name: "Rotor") }
    /// Geonaute
     class var geonaute: Manufacturer { return Manufacturer(id: 61, name: "Geonaute") }
    /// ID Bike
     class var idBike: Manufacturer { return Manufacturer(id: 62, name: "ID Bike") }
    /// Specialized
     class var specialized: Manufacturer { return Manufacturer(id: 63, name: "Specialized") }
    /// WTek
     class var wTek: Manufacturer { return Manufacturer(id: 64, name: "WTek") }
    /// Physical Enterprises
     class var physicalEnterprises: Manufacturer { return Manufacturer(id: 65, name: "Physical Enterprises") }
    /// North Pole Engineering
     class var northPoleEngineering: Manufacturer { return Manufacturer(id: 66, name: "North Pole Engineering") }
    /// BKool
     class var bKool: Manufacturer { return Manufacturer(id: 67, name: "BKool") }
    /// Cateye
     class var cateye: Manufacturer { return Manufacturer(id: 68, name: "Cateye") }
    /// Stages Cycling
     class var stagesCycling: Manufacturer { return Manufacturer(id: 69, name: "Stages Cycling") }
    /// SIGMA SPORT
     class var sigmaSport: Manufacturer { return Manufacturer(id: 70, name: "SIGMA SPORT") }
    /// Tom Tom
     class var tomTom: Manufacturer { return Manufacturer(id: 71, name: "Tom Tom") }
    /// Peripedal
     class var peripedal: Manufacturer { return Manufacturer(id: 72, name: "Peripedal") }
    /// Wattbike
     class var wattBike: Manufacturer { return Manufacturer(id: 73, name: "Wattbike") }

    //74-75 NOT ASSIGNED

    /// MOXY
     class var moxy: Manufacturer { return Manufacturer(id: 76, name: "MOXY") }
    /// CicloSport
     class var cicloSport: Manufacturer { return Manufacturer(id: 77, name: "CicloSport") }
    /// POWERbahn
     class var powerBahn: Manufacturer { return Manufacturer(id: 78, name: "POWERbahn") }
    /// Acorn Project Aps.
     class var acornProjectAps: Manufacturer { return Manufacturer(id: 79, name: "Acorn Project Aps.") }
    /// LifeBEAM
     class var lifeBeam: Manufacturer { return Manufacturer(id: 80, name: "LifeBEAM") }
    /// Bontrager
     class var bontrager: Manufacturer { return Manufacturer(id: 81, name: "Bontrager") }
    /// Wellgo
     class var wellgo: Manufacturer { return Manufacturer(id: 82, name: "Wellgo") }
    /// Scosche
     class var scosche: Manufacturer { return Manufacturer(id: 83, name: "Scosche") }
    /// MAGURA
     class var magura: Manufacturer { return Manufacturer(id: 84, name: "MAGURA") }
    /// Woodway
     class var woodway: Manufacturer { return Manufacturer(id: 85, name: "Woodway") }
    /// Elite
     class var elite: Manufacturer { return Manufacturer(id: 86, name: "Elite") }
    /// Nielsen-Kellerman
     class var nielsenKellerman: Manufacturer { return Manufacturer(id: 87, name: "Nielsen-Kellerman") }
    /// DK City
     class var dkCity: Manufacturer { return Manufacturer(id: 88, name: "DK City") }
    /// Tacx
     class var tacx: Manufacturer { return Manufacturer(id: 89, name: "Tacx") }
    /// Direction Technology
     class var directionTechnology: Manufacturer { return Manufacturer(id: 90, name: "Direction Technology") }
    /// Magtonic
     class var magtonic: Manufacturer { return Manufacturer(id: 91, name: "Magtonic") }
    /// 1partCarbon Inc.
     class var onePartCarbon: Manufacturer { return Manufacturer(id: 92, name: "1partCarbon Inc.") }
    /// Inside Ride
     class var insideRide: Manufacturer { return Manufacturer(id: 93, name: "Inside Ride") }
    /// Sound Of Motion
     class var soundOfMotion: Manufacturer { return Manufacturer(id: 94, name: "Sound Of Motion") }
    /// Stryd
     class var stryd: Manufacturer { return Manufacturer(id: 95, name: "Stryd") }
    /// Indoor Cycling Group
     class var indoorCyclingGroup: Manufacturer { return Manufacturer(id: 96, name: "Indoor Cycling Group") }
    /// Mi Pulse
     class var miPulse: Manufacturer { return Manufacturer(id: 97, name: "Mi Pulse") }
    /// BSX Athletics
     class var bsxAthletics: Manufacturer { return Manufacturer(id: 98, name: "BSX Athletics") }
    /// Look
     class var look: Manufacturer { return Manufacturer(id: 99, name: "Look") }
    /// Campagnolo Srl
     class var campagnolo: Manufacturer { return Manufacturer(id: 100, name: "Campagnolo Srl") }
    /// Body Bike Smart
     class var bodyBikeSmart: Manufacturer { return Manufacturer(id: 101, name: "Body Bike Smart") }
    /// Praxisworks
     class var praxisworks: Manufacturer { return Manufacturer(id: 102, name: "Praxisworks") }
    /// Limits Technology
     class var limitsTechnology: Manufacturer { return Manufacturer(id: 103, name: "Limits Technology") }
    /// TopAction Technology
     class var topActionTechnology: Manufacturer { return Manufacturer(id: 104, name: "TopAction Technology") }
    /// Cosinuss
     class var cosinuss: Manufacturer { return Manufacturer(id: 105, name: "Cosinuss") }
    /// Fitcare
     class var fitCare: Manufacturer { return Manufacturer(id: 106, name: "Fitcare") }
    /// Magene
     class var magene: Manufacturer { return Manufacturer(id: 107, name: "Magene") }
    /// Giant Manufacturing Co
     class var giantManufacturing: Manufacturer { return Manufacturer(id: 108, name: "Giant Manufacturing Co") }
    /// TiGRA Sport
     class var tigraSport: Manufacturer { return Manufacturer(id: 109, name: "TiGRA Sport") }
    /// Salutron
     class var salutron: Manufacturer { return Manufacturer(id: 110, name: "Salutron") }
    /// TechnoGym
     class var technogym: Manufacturer { return Manufacturer(id: 111, name: "TechnoGym") }
    /// Bryton Sensors
     class var brytonSensors: Manufacturer { return Manufacturer(id: 112, name: "Bryton Sensors") }
    /// Latitude Limited
     class var latitudeLimited: Manufacturer { return Manufacturer(id: 113, name: "Latitude Limited") }
    /// Soaring Technology
     class var soaringTechnology: Manufacturer { return Manufacturer(id: 114, name: "Soaring Technology") }
    /// IGP Sport
     class var igpSport: Manufacturer { return Manufacturer(id: 115, name: "IGP Sport") }
    /// Think Rider
     class var thinkRider: Manufacturer { return Manufacturer(id: 116, name: "Think Rider") }
    /// Gopher Sport
     class var gopherSport: Manufacturer { return Manufacturer(id: 117, name: "Gopher Sport") }
    /// Water Rower
     class var waterRower: Manufacturer { return Manufacturer(id: 118, name: "Water Rower") }
    /// Orange Theory
     class var orangeTheory: Manufacturer { return Manufacturer(id: 119, name: "Orange Theory") }
    /// Inpeak
     class var inpeak: Manufacturer { return Manufacturer(id: 120, name: "Inpeak") }
    /// Kinetic
     class var kinetic: Manufacturer { return Manufacturer(id: 121, name: "Kinetic") }
    /// Johnson Health Tech
     class var johnsonHealthTech: Manufacturer { return Manufacturer(id: 122, name: "Johnson Health Tech") }
    /// Polar Electro
     class var polarElectro: Manufacturer { return Manufacturer(id: 123, name: "Polar Electro") }
    /// SeeSense
     class var seeSense: Manufacturer { return Manufacturer(id: 124, name: "SeeSense") }

    //125-254 NOT ASSIGNED
    //256 NOT ASSIGNED

    /// Health and Life
     class var healthAndLife: Manufacturer { return Manufacturer(id: 257, name: "Health and Life") }
    /// Lezyne
     class var lezyne: Manufacturer { return Manufacturer(id: 258, name: "Lezyne") }
    /// Scribe Labs
     class var scribeLabs: Manufacturer { return Manufacturer(id: 259, name: "Scribe Labs") }
    /// Zwift
     class var zwift: Manufacturer { return Manufacturer(id: 260, name: "Zwift") }
    /// Watteam
     class var watteam: Manufacturer { return Manufacturer(id: 261, name: "Watteam") }
    /// Recon
     class var recon: Manufacturer { return Manufacturer(id: 262, name: "Recon") }
    /// Favero Electronics
     class var faveroElectronics: Manufacturer { return Manufacturer(id: 263, name: "Favero Electronics") }
    /// Dyno Velo
     class var dynoVelo: Manufacturer { return Manufacturer(id: 264, name: "Dyno Velo") }
    /// Strava
     class var strava: Manufacturer { return Manufacturer(id: 265, name: "Strava") }
    /// Precor
     class var precore: Manufacturer { return Manufacturer(id: 266, name: "Precor") }
    /// Bryton
     class var byrton: Manufacturer { return Manufacturer(id: 267, name: "Bryton") }
    /// SRAM
     class var sram: Manufacturer { return Manufacturer(id: 268, name: "SRAM") }
    /// Mio Technology
     class var mioTechnology: Manufacturer { return Manufacturer(id: 269, name: "Mio Technology") }
    /// COBI GmbH
     class var cobi: Manufacturer { return Manufacturer(id: 270, name: "COBI GmbH") }
    /// Spivi
     class var spivi: Manufacturer { return Manufacturer(id: 271, name: "Spivi") }
    /// Mio Magellan
     class var mioMagellan: Manufacturer { return Manufacturer(id: 272, name: "Mio Magellan") }
    /// Evesports
     class var eveSports: Manufacturer { return Manufacturer(id: 273, name: "Evesports") }
    /// Sensitivus Gauge
     class var sensitivusGauge: Manufacturer { return Manufacturer(id: 274, name: "Sensitivus Gauge") }
    /// Podoon
     class var podoon: Manufacturer { return Manufacturer(id: 275, name: "Podoon") }
    /// Life Time Fitness
     class var lifeTimeFitness: Manufacturer { return Manufacturer(id: 276, name: "Life Time Fitness") }
    /// Falco eMotors Inc.
     class var falcoEMotors: Manufacturer { return Manufacturer(id: 277, name: "Falco eMotors Inc.") }
    /// Minoura
     class var minoura: Manufacturer { return Manufacturer(id: 278, name: "Minoura") }
    /// Cycliq
     class var cycliq: Manufacturer { return Manufacturer(id: 279, name: "Cycliq") }
    /// Luxxottica
     class var luxottica: Manufacturer { return Manufacturer(id: 280, name: "Luxxottica") }
    /// Trainer Road
     class var trainerRoad: Manufacturer { return Manufacturer(id: 281, name: "Trainer Road") }
    /// The Sufferfest
     class var theSufferfest: Manufacturer { return Manufacturer(id: 282, name: "The Sufferfest") }
    /// Full Speed Ahead
     class var fullSpeedAhead: Manufacturer { return Manufacturer(id: 283, name: "Full Speed Ahead") }
    /// Virtual Training
     class var virtualTraining: Manufacturer { return Manufacturer(id: 284, name: "Virtual Training") }
    /// Feedback Sports
     class var feedbackSports: Manufacturer { return Manufacturer(id: 285, name: "Feedback Sports") }
    /// Omata
     class var omata: Manufacturer { return Manufacturer(id: 286, name: "Omata") }
    /// VDO
     class var vdo: Manufacturer { return Manufacturer(id: 287, name: "VDO") }
    /// Magnetic Days
     class var magneticDays: Manufacturer { return Manufacturer(id: 288, name: "Magnetic Days") }
    /// HammerHead
     class var hammerHead: Manufacturer { return Manufacturer(id: 289, name: "HammerHead") }
    /// Kinetic by Kurt
     class var kineticByKurt: Manufacturer { return Manufacturer(id: 290, name: "Kinetic by Kurt") }
    /// ShapeLog
     class var shapeLog: Manufacturer { return Manufacturer(id: 291, name: "ShapeLog") }
    /// Dabuziduo
     class var dabuziduo: Manufacturer { return Manufacturer(id: 292, name: "Dabuziduo") }
    /// Jet Black
     class var jetBlack: Manufacturer { return Manufacturer(id: 293, name: "Jet Black") }
    /// Coros
     class var coros: Manufacturer { return Manufacturer(id: 294, name: "Coros") }
    /// VirtuGo
     class var virtugo: Manufacturer { return Manufacturer(id: 295, name: "VirtuGo") }
    /// Velosense
     class var velosense: Manufacturer { return Manufacturer(id: 296, name: "Velosense") }
    /// Cycligent Inc
     class var cycligent: Manufacturer { return Manufacturer(id: 297, name: "Cycligent Inc") }
    /// Trailforks
     class var trailforks: Manufacturer { return Manufacturer(id: 298, name: "Trailforks") }

    /// ActiGraph
     class var actiGraph: Manufacturer { return Manufacturer(id: 5769, name: "ActiGraph") }
}
