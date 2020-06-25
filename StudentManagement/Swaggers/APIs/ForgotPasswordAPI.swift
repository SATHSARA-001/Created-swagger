//
// ForgotPasswordAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ForgotPasswordAPI {
    /**
     Reset Password
     
     - parameter body: (body) PasswordEmail 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func passwordEmailPost(body: PasswordEmail, completion: @escaping ((_ data: SuccessResponse?,_ error: Error?) -> Void)) {
        passwordEmailPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Reset Password
     - POST /password/email
     - 
     - API Key:
       - type: apiKey x-api-key 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "result" : true,
  "payload" : "{}",
  "message" : "message"
}}]
     
     - parameter body: (body) PasswordEmail 

     - returns: RequestBuilder<SuccessResponse> 
     */
    open class func passwordEmailPostWithRequestBuilder(body: PasswordEmail) -> RequestBuilder<SuccessResponse> {
        let path = "/password/email"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SuccessResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
