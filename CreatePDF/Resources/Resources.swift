//
//  Resources.swift
//  CreatePDF
//
//  Created by Nikolai  on 25.06.2023.
//

import Foundation

enum Resources {
    
    enum CVTitles: String {
        case summary = "Summary"
        case workExperience = "WorkExperience"
        case skills = "Skills"
        case education = "Education"
    }
    
    enum Summary: String {
        case first = """
        Passionate junior ios developer with a love for learning and a knack for problem solving. Over two years of experience developing mobile apps in Swift. Srilled in using Apple's Xcode development environment and the Cocao Touch framework.
        """
    }
    
    enum WorkExperience: Int {
        case oneYear = 0, twoYear, threeYear
        
        var description: String {
            switch self {
            case .oneYear:
                return """
            Horns and hooves, Junior ios Developer                                                  May '22 - Current
            
            • Collaborated with designers to implement new features in existing apps as well as create new ones from scratch using Swift programming language.
            • Participated in daily stand-up meeting, biweekly sprint planning meeting, and monthly status update meetings where progress is reviewed among team members and feedback provided on perfomance if necessary.
            """
                
            case .twoYear:
                return """
            Horns and hooves, Junior ios Developer                                                  May '21 - Current
            
            • Developed and maintained ios applications for the company's clients.
            • Collaborated with designers to implement new features in existing apps as well as create new ones from scratch using Swift programming language.
            • Participated in daily stand-up meeting, biweekly sprint planning meeting, and monthly status update meetings.
            """
                
            case .threeYear:
                return """
            Horns and hooves, Junior ios Developer                                                  May '20 - May '22
            • Collaborated with designers to implement new features in existing apps as well as create new ones from scratch using Swift programming language.
            • Participated in daily stand-up meeting, biweekly sprint planning meeting, and monthly status update meetings.
            
            Gallay, Junior ios Developer                                                                        May '22 - Current
            • Created and maintained the ios version of a popular firness tracking app for iPhone users.
            • Collaborated with other developers on bug fixes and new features for existing apps.
            • Improved user experience by implementing UI updates based on feedback from customers.
            """
            }
        }
    }
    
    enum Skills: Int {
        case oneYear = 0, twoTesr, threeYear
        
        var description: String {
            switch self {
            case .oneYear:
                return """
            Xcode
            UIKit
            Playground, Xib
            URLSession, Alamofire
            UserDefaults, KeyChain
            MVC, MVP
            OOP, DRY
            GCD
            """
                
            case .twoTesr:
                return """
            Xcode
            UIKit
            Playground, Xib, Autolayout
            URLSession, Alamofire
            UserDefaults, KeyChain, Realm
            MVC, MVP, MVVM
            OOP, DRY, SOLID, KISS
            GCD, Operation
            """
                
            case .threeYear:
                return """
            Xcode
            UIKit
            Playground, Xib, Autolayout, SnapKit
            URLSession, Alamofire
            UserDefaults, KeyChain, Realm, CoreData
            MVC, MVP, MVVM, VIPER
            OOP, DRY, SOLID, KISS, Design Patterns
            GCD, Operation, Thread
            """
            }
        }
    }
    
    enum Education: String {
        case university = "Lomonosov Moscow State University"
    }
    
}
