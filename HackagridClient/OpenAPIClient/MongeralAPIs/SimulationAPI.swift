//
// SimulaoAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire

class SimulationAPI {
    /**

     - parameter codigoModeloProposta: (query)  (optional)
     - parameter cnpj: (query)  (optional)
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func simulacaoPost(codigoModeloProposta: String? = nil, cnpj: String? = nil, body: SimulationRequest? = nil, completion: @escaping ((_ data: SimulationResponses?,_ error: Error?) -> Void)) {
        simulacaoPostWithRequestBuilder(codigoModeloProposta: codigoModeloProposta, cnpj: cnpj, body: body).execute { (response, error) -> Void in
            if error == nil {
                completion(response?.body, nil)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     - POST /simulacao
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter codigoModeloProposta: (query)  (optional)
     - parameter cnpj: (query)  (optional)
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    class func simulacaoPostWithRequestBuilder(codigoModeloProposta: String? = nil, cnpj: String? = nil, body: SimulationRequest? = nil) -> RequestBuilder<SimulationResponses> {
        let path = "/simulacao"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "codigoModeloProposta": codigoModeloProposta, 
            "cnpj": cnpj
        ])

        let requestBuilder: RequestBuilder<SimulationResponses>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
