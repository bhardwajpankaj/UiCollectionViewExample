//
//  Service.swift
//  Collection_learning
//
//  Created by Pankaj on 21/07/16.
//  Copyright © 2016 Pankaj. All rights reserved.
//

import Foundation

public class Service: NSObject, SQServiceProtocol {
    var classForResponseObject: AnyClass?
    
    class func getBaseURL() -> String? {
        assert(false, "Implement getBaseURL in child class")
        return nil
    }
    
    func createRequestForServiceHelper(serviceHelper: SQServiceDescription) throws -> NSMutableURLRequest? {
        assert(false, "Implement createRequestForServiceHelper in child class")
        return nil
    }
    
    func createRequestForRequestingModel(requestModel: SQRequestObject) -> SQURLRequest? {
        assert(false, "Implement createRequestForRequestingModel: in child class")
        return nil
    }
    
    func createObjectFromResponse(response: SQURLResponse) -> ResponseObject? {
        assert(false, "Implement createObjectFromResponse: in child class")
        return nil
    }
    
    func setClassForResponseObjects(classs: AnyClass) {
        if !classs.isSubclassOfClass(ResponseObject.self) {
            assert(false, "Response Object Should be subclass of SQResponseObject and should conform ro protocol Mappable")
        }
        self.classForResponseObject = classs
    }
    
    class func getSecureBaseURL() -> String? {
        return ApiManager.getSecureBaseURL()
    }
    
    class func objectforKey(key: String) -> AnyObject? {
        return ApiManager.objectforKey(key)
    }
    
    class func httpCookie() -> NSHTTPCookie? {
        return ApiManager.httpCookie()
    }
}
