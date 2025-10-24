//
//  UserDefault.swift
//  Contexta
//
//  Created by Hari on 15/10/25.
//


import Foundation

enum UserDefaultKey: String {
    
    case selectedTab
}


@propertyWrapper struct UserDefault<T> {
    
    var defaultValue: T
    
    var key: UserDefaultKey
    
    var wrappedValue: T {
        
        get {
            
            UserDefaults.standard.object(forKey: key.rawValue) as? T ?? defaultValue
        }
        
        set {
            
            UserDefaults.standard.set(newValue, forKey: key.rawValue)
        }
    }
    
    init(defaultValue: T, key: UserDefaultKey) {
        
        self.defaultValue = defaultValue
        self.key = key
    }
}


enum AppGroupUserDefaultKey: String {
    
    case time
}

@propertyWrapper struct AppGroupUserDefault<T> {
    
    var defaultValue: T
    
    var key: AppGroupUserDefaultKey
    
    var wrappedValue: T {
        
        get {
            
            UserDefaults.standard.object(forKey: key.rawValue) as? T ?? defaultValue
        }
        
        set {
            
            UserDefaults.standard.set(newValue, forKey: key.rawValue)
        }
    }
    
    init(defaultValue: T, key: AppGroupUserDefaultKey) {
        
        self.defaultValue = defaultValue
        self.key = key
    }
}
