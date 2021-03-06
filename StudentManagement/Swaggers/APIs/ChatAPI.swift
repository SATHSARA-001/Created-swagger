//
// ChatAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ChatAPI {
    /**
     Upload file
     
     - parameter file: (form) Supported file types: doc,pdf,docx,jpg,jpeg,png,gif,mpga,mp3,wav,mp4,mov,ogg,qt 
     - parameter thumbnail: (form) Supported file types: png (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func chatFilesPost(file: URL, thumbnail: URL? = nil, completion: @escaping ((_ data: ChatUploadFileResponse?,_ error: Error?) -> Void)) {
        chatFilesPostWithRequestBuilder(file: file, thumbnail: thumbnail).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Upload file
     - POST /chat/files
     - 
     - API Key:
       - type: apiKey x-access-token 
       - name: accessToken
     - API Key:
       - type: apiKey x-api-key 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "result" : true,
  "payload" : {
    "thumbnail_url" : "thumbnail_url",
    "type" : "type",
    "uuid" : "uuid",
    "url" : "url"
  },
  "message" : "message"
}}]
     
     - parameter file: (form) Supported file types: doc,pdf,docx,jpg,jpeg,png,gif,mpga,mp3,wav,mp4,mov,ogg,qt 
     - parameter thumbnail: (form) Supported file types: png (optional)

     - returns: RequestBuilder<ChatUploadFileResponse> 
     */
    open class func chatFilesPostWithRequestBuilder(file: URL, thumbnail: URL? = nil) -> RequestBuilder<ChatUploadFileResponse> {
        let path = "/chat/files"
        let URLString = SwaggerClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "file": file,
            "thumbnail": thumbnail
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ChatUploadFileResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
