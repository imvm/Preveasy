// TimelineResponse.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let timelineResponse = try? newJSONDecoder().decode(TimelineResponse.self, from: jsonData)

import Foundation

// MARK: - TimelineResponse
struct TimelineResponse: Codable {
    let valor: [TimelineResponseValue]?
    let mensagens: [JSONAny]?
    let houveErrosDuranteProcessamento: Bool?
    
    enum CodingKeys: String, CodingKey {
        case valor = "Valor"
        case mensagens = "Mensagens"
        case houveErrosDuranteProcessamento = "HouveErrosDuranteProcessamento"
    }
}

// TimelineResponseValue.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let valor = try? newJSONDecoder().decode(Valor.self, from: jsonData)

import Foundation

// MARK: - Valor
struct TimelineResponseValue: Codable {
    let data, status, usuario: String?
    let pendencias: [Pendencia]?
    let agendamentosMedicos: AgendamentosMedicos?
    
    enum CodingKeys: String, CodingKey {
        case data = "Data"
        case status = "Status"
        case usuario = "Usuario"
        case pendencias = "Pendencias"
        case agendamentosMedicos = "AgendamentosMedicos"
    }
}

// AgendamentosMedicos.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let agendamentosMedicos = try? newJSONDecoder().decode(AgendamentosMedicos.self, from: jsonData)

import Foundation

// MARK: - AgendamentosMedicos
struct AgendamentosMedicos: Codable {
    let chamadas, notificacoes, situacoes: JSONNull?
}

// Pendencia.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let pendencia = try? newJSONDecoder().decode(Pendencia.self, from: jsonData)

import Foundation

// MARK: - Pendencia
struct Pendencia: Codable {
    let id, idProposta: JSONNull?
    let dataPendencia, responsavel, grupo, descricao: String?
    let resposta, autor, documento: JSONNull?
}
