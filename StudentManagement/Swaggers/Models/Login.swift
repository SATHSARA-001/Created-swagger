//
// Login.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Login: Codable {

    public var email: String?
    public var password: String?
    public var deviceId: String?
    public var deviceType: String?
    public var devicePushToken: String?

    public init(email: String?, password: String?, deviceId: String?, deviceType: String?, devicePushToken: String?) {
        self.email = email
        self.password = password
        self.deviceId = deviceId
        self.deviceType = deviceType
        self.devicePushToken = devicePushToken
    }

    public enum CodingKeys: String, CodingKey { 
        case email
        case password
        case deviceId = "device_id"
        case deviceType = "device_type"
        case devicePushToken = "device_push_token"
    }


}

