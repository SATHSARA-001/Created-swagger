//
// Device.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Device: Codable {

    public var _id: Int?
    public var deviceId: String?
    public var deviceType: String?
    public var devicePushToken: String?
    public var userId: Int?
    public var accessToken: String?
    public var accessTokenExpiresAt: String?
    public var latestIpAddress: String?
    public var createdAt: String?
    public var updatedAt: String?

    public init(_id: Int?, deviceId: String?, deviceType: String?, devicePushToken: String?, userId: Int?, accessToken: String?, accessTokenExpiresAt: String?, latestIpAddress: String?, createdAt: String?, updatedAt: String?) {
        self._id = _id
        self.deviceId = deviceId
        self.deviceType = deviceType
        self.devicePushToken = devicePushToken
        self.userId = userId
        self.accessToken = accessToken
        self.accessTokenExpiresAt = accessTokenExpiresAt
        self.latestIpAddress = latestIpAddress
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case deviceId = "device_id"
        case deviceType = "device_type"
        case devicePushToken = "device_push_token"
        case userId = "user_id"
        case accessToken = "access_token"
        case accessTokenExpiresAt = "access_token_expires_at"
        case latestIpAddress = "latest_ip_address"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }


}

