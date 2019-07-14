// CBODomainResponse.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cBODomainResponse = try? newJSONDecoder().decode(CBODomainResponse.self, from: jsonData)

import Foundation

// MARK: - CBODomainResponse
struct CBODomainResponse: Codable {
    let valor: [CBODomainValue]?
    let mensagens: [JSONAny]?
    let houveErrosDuranteProcessamento: Bool?
    
    enum CodingKeys: String, CodingKey {
        case valor = "Valor"
        case mensagens = "Mensagens"
        case houveErrosDuranteProcessamento = "HouveErrosDuranteProcessamento"
    }
}

// Valor.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let valor = try? newJSONDecoder().decode(Valor.self, from: jsonData)

import Foundation

// MARK: - CBODomainValue
struct CBODomainValue: Codable {
    let id, descricao, auxiliar: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case descricao = "Descricao"
        case auxiliar = "Auxiliar"
    }
}
