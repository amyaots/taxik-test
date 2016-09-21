//
//  ErrorEntitie.swift
//  AutoAngel-Customer
//
//  Created by Myaots Alexandr on 22.08.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import Alamofire
import ObjectMapper

protocol Translatable {
    func translated(locale l: NSLocale) -> String
}

class BackendError: Mappable, Error, Translatable {
    
    // MARK: - Properties
    var code: String
    var error: Error?
    var status: Int?
    
    
    // MARK: - Life cycle
    init(code: String = "UNKNOWN_ERROR", error: Error? = nil, status: Int? = nil) {
        self.code = code
        self.error = error
        self.status = status
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    // MARK: - Methods
    func mapping(map: Map) {
        self.code   <- map["code"]
        self.status <- map["status"]
    }
    
    func translated(locale l: NSLocale) -> String {
        return code
    }
    
}

enum ValidationError: Error, Translatable {
    case WrongValue(reason: String)
    case Empty(field: String)
    case EmptyCredentials
    case NotMatch
    case Offline
    
    func translated(locale l: NSLocale) -> String {
        switch self {
        case .Empty(field: let field):
            return ("EMPTY" + field)
        case .Offline:
            return "INTERNET_OFFLINE"
        default:
            return "VALIDATION_ERROR"
        }
    }
}
