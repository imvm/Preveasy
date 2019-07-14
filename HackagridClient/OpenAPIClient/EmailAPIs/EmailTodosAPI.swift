//
// TodosAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



class EmailTodosAPI {
    /**
     Cadastro de remetente
     
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func cadastrarRemetentePost(body: EmailInlineObject? = nil, completion: @escaping ((_ data: InlineResponseDefault?,_ error: Error?) -> Void)) {
        cadastrarRemetentePostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Cadastro de remetente
     - POST /CadastrarRemetente
     - Cadastro de remetente
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<InlineResponseDefault> 
     */
    class func cadastrarRemetentePostWithRequestBuilder(body: EmailInlineObject? = nil) -> RequestBuilder<InlineResponseDefault> {
        let path = "/CadastrarRemetente"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<InlineResponseDefault>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Rastreio
     
     - parameter rastreio: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func emailGet(rastreio: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        emailGetWithRequestBuilder(rastreio: rastreio).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     Rastreio
     - GET /email
     - Para obter os retornos do email enviado, utilize este endpoint, informando o rastreio do envio do email
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter rastreio: (query)  
     - returns: RequestBuilder<Void> 
     */
    class func emailGetWithRequestBuilder(rastreio: String) -> RequestBuilder<Void> {
        let path = "/email"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "Rastreio": rastreio
        ])

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Envio
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func emailPost(body: [EnvioRequest], completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        emailPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }

    /**
     Envio
     - POST /email
     - Para o envio de e-mails, é necessário utilizar este endpoint
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter body: (body)  
     - returns: RequestBuilder<Void> 
     */
    class func emailPostWithRequestBuilder(body: [EnvioRequest]) -> RequestBuilder<Void> {
        let path = "/email"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}