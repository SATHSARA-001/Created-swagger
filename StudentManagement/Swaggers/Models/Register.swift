//
// Register.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Register: Codable {

    public var email: String?
    public var password: String?
    public var passwordConfirmation: String?
    public var firstName: String?
    public var lastName: String?
    public var phone: String?
    public var timezone: String?
    public var deviceId: String?
    public var deviceType: String?
    public var devicePushToken: String?

    public init(email: String?, password: String?, passwordConfirmation: String?, firstName: String?, lastName: String?, phone: String?, timezone: String?, deviceId: String?, deviceType: String?, devicePushToken: String?) {
        self.email = email
        self.password = password
        self.passwordConfirmation = passwordConfirmation
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        self.timezone = timezone
        self.deviceId = deviceId
        self.deviceType = deviceType
        self.devicePushToken = devicePushToken
    }

    public enum CodingKeys: String, CodingKey { 
        case email
        case password
        case passwordConfirmation = "password_confirmation"
        case firstName = "first_name"
        case lastName = "last_name"
        case phone
        case timezone
        case deviceId = "device_id"
        case deviceType = "device_type"
        case devicePushToken = "device_push_token"
    }


}

