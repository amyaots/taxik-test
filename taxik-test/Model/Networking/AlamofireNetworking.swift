//
//  AlamofireNetworking.swift
//  AutoAngel-Customer
//
//  Created by Myaots Alexandr on 22.08.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper
import PromiseKit
import ObjectMapper

class AlamofireNetworking: NetworkingType {
    
    func requestArray<ObjectType: Mappable>(URLString: String) -> Promise<[ObjectType]> {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        return Promise(resolvers: { (fulfill, reject) in
            Alamofire.request(URLString).responseArray { (response: DataResponse<[ObjectType]>) in
                UIApplication.shared.isNetworkActivityIndicatorVisible = false
                switch response.result {
                case .success(let array):
                    fulfill(array)
                case .failure(let error):
                    reject(self.composeError(error: error, data: response.data))
                }
            }
        })
    }
    
    func composeError(error: Error, data: Data? = nil) -> Error {
        if let data = data , data.count != 0 {
            let errorJSONString = NSString(data: data, encoding:String.Encoding.utf8.rawValue)
            if let error = Mapper<BackendError>().map(JSONString: errorJSONString as! String) {
                return error
            }
        }
        
        let error = error as NSError
        switch error.code {
        case -1009:
            return BackendError(code: "INTERNET_OFFLINE", error: error)
        case -1004:
            return BackendError(code: "SERVER_OFFLINE", error: error)
        default:
            return BackendError(error: error)
        }
    }
}
