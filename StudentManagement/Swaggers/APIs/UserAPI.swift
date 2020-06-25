//
// UserAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class UserAPI {
    /**
     List
     
     - parameter q: (query) Query to filter the list (optional)
     - parameter page: (query) query (optional)
     - parameter perPage: (query) Items per page (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersGet(q: String? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping ((_ data: UserListResponse?,_ error: Error?) -> Void)) {
        usersGetWithRequestBuilder(q: q, page: page, perPage: perPage).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List
     - GET /users
     - 
     - API Key:
       - type: apiKey x-access-token 
       - name: accessToken
     - API Key:
       - type: apiKey x-api-key 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "result" : true,
  "payload" : [ {
    "access_token" : "access_token",
    "full_name" : "full_name",
    "avatar_url" : "avatar_url",
    "timezone" : "timezone",
    "firebase_id" : "firebase_id",
    "last_name" : "last_name",
    "id" : "id",
    "uuid" : "uuid",
    "first_name" : "first_name",
    "email" : "email"
  }, {
    "access_token" : "access_token",
    "full_name" : "full_name",
    "avatar_url" : "avatar_url",
    "timezone" : "timezone",
    "firebase_id" : "firebase_id",
    "last_name" : "last_name",
    "id" : "id",
    "uuid" : "uuid",
    "first_name" : "first_name",
    "email" : "email"
  } ],
  "message" : "message",
  "paginator" : {
    "per_page" : 6.02745618307040320615897144307382404804229736328125,
    "to" : 1.46581298050294517310021547018550336360931396484375,
    "current_page" : 0.80082819046101150206595775671303272247314453125
  }
}}]
     
     - parameter q: (query) Query to filter the list (optional)
     - parameter page: (query) query (optional)
     - parameter perPage: (query) Items per page (optional)

     - returns: RequestBuilder<UserListResponse> 
     */
    open class func usersGetWithRequestBuilder(q: String? = nil, page: Int? = nil, perPage: Int? = nil) -> RequestBuilder<UserListResponse> {
        let path = "/users"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "q": q, 
            "page": page?.encodeToJSON(), 
            "per_page": perPage?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<UserListResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
