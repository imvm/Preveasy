// BankDomainResponse.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let bankDomainResponse = try? newJSONDecoder().decode(BankDomainResponse.self, from: jsonData)

import Foundation

// MARK: - BankDomainResponse
struct BankDomainResponse: Codable {
    let valor: [BankDomainValue]?
    let mensagens: [JSONAny]?
    let houveErrosDuranteProcessamento: Bool?
    
    enum CodingKeys: String, CodingKey {
        case valor = "Valor"
        case mensagens = "Mensagens"
        case houveErrosDuranteProcessamento = "HouveErrosDuranteProcessamento"
    }
}

// BankDomainValue.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let valor = try? newJSONDecoder().decode(Valor.self, from: jsonData)

import Foundation

// MARK: - Valor
struct BankDomainValue: Codable {
    let id, descricao, auxiliar: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case descricao = "Descricao"
        case auxiliar = "Auxiliar"
    }
}
