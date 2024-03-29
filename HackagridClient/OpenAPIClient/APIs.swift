// APIs.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

class OpenAPIClientAPI {
    static var basePath = "https://gateway.gr1d.io/sandbox/mongeral/v1"
    static var credential: URLCredential?
    static var customHeaders: [String:String] = ["x-api-key":"3cd346aa-a061-4242-b249-08985f4ce862"]
    static var requestBuilderFactory: RequestBuilderFactory = AlamofireRequestBuilderFactory()
}

class RequestBuilder<T> {
    var credential: URLCredential?
    var headers: [String:String]
    let parameters: [String:Any]?
    let isBody: Bool
    let method: String
    let URLString: String

    /// Optional block to obtain a reference to the request's progress instance when available.
    var onProgressReady: ((Progress) -> ())?

    required init(method: String, URLString: String, parameters: [String:Any]?, isBody: Bool, headers: [String:String] = [:]) {
        self.method = method
        self.URLString = URLString
        self.parameters = parameters
        self.isBody = isBody
        self.headers = headers

        addHeaders(OpenAPIClientAPI.customHeaders)
    }

    func addHeaders(_ aHeaders:[String:String]) {
        for (header, value) in aHeaders {
            headers[header] = value
        }
    }

    func execute(_ completion: @escaping (_ response: Response<T>?, _ error: Error?) -> Void) { }

    func addHeader(name: String, value: String) -> Self {
        if !value.isEmpty {
            headers[name] = value
        }
        return self
    }

    func addCredential() -> Self {
        self.credential = OpenAPIClientAPI.credential
        return self
    }
}

protocol RequestBuilderFactory {
    func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type
    func getBuilder<T:Decodable>() -> RequestBuilder<T>.Type
}
