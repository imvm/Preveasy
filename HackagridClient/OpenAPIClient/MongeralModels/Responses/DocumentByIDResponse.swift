// DocumentByIDResponse.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let documentByIDResponse = try? newJSONDecoder().decode(DocumentByIDResponse.self, from: jsonData)

import Foundation

// MARK: - DocumentByIDResponse
struct DocumentByIDResponse: Codable {
    let valor: DocumentByIDValue?
    let mensagens: [JSONAny]?
    let houveErrosDuranteProcessamento: Bool?
    
    enum CodingKeys: String, CodingKey {
        case valor = "Valor"
        case mensagens = "Mensagens"
        case houveErrosDuranteProcessamento = "HouveErrosDuranteProcessamento"
    }
}

// DocumentByIDValue.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let valor = try? newJSONDecoder().decode(Valor.self, from: jsonData)

import Foundation

// MARK: - Valor
struct DocumentByIDValue: Codable {
    let id: JSONNull?
    let dataDocumento, formato: String?
    let grupoDocumento: JSONNull?
    let qtdePaginas: Int?
    let tipoDocumento: String?
    let nomeArquivo, indicesDocumento, pagina: JSONNull?
}
