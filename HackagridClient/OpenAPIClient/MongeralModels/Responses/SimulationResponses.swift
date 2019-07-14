// SimulationResponses.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let simulationResponses = try? newJSONDecoder().decode(SimulationResponses.self, from: jsonData)

import Foundation

// MARK: - SimulationResponses
struct SimulationResponses: Codable {
    let valor: SimulationValue?
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

// MARK: - Valor
struct SimulationValue: Codable {
    let simulacoes: [Simulation]?
}

// Simulacoe.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let simulacoe = try? newJSONDecoder().decode(Simulacoe.self, from: jsonData)

import Foundation

// MARK: - Simulacoe
struct Simulation: Codable {
    let proponente: Proponente?
    let produtos: [Produto]?
    let periodicidadeCobrancaID: Int?
    let prazoDecrescimo, prazoPagamentoAntecipado, idadePagamentoAntecipado: JSONNull?
    let prazoCerto: Int?
    let prazoRenda: JSONNull?
    let ticketMinimo: Int?
    
    enum CodingKeys: String, CodingKey {
        case proponente, produtos
        case periodicidadeCobrancaID = "periodicidadeCobrancaId"
        case prazoDecrescimo, prazoPagamentoAntecipado, idadePagamentoAntecipado, prazoCerto, prazoRenda, ticketMinimo
    }
}

// DependenciasCoberturaProduto.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dependenciasCoberturaProduto = try? newJSONDecoder().decode(DependenciasCoberturaProduto.self, from: jsonData)

import Foundation


// Proponente.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let proponente = try? newJSONDecoder().decode(Proponente.self, from: jsonData)

import Foundation

// MARK: - Proponente
struct Proponente: Codable {
    let tipoRelacaoSeguradoID: Int?
    let nome, cpf, dataNascimento: String?
    let sexoID: Int?
    let profissaoCbo: String?
    let renda: Int?
    let uf: String?
    let origem, patrimonio: JSONNull?
    let declaracaoIRID: Int?
    let despesasEducacao, despesasMensais, formaContato, emails: JSONNull?
    let historicoDoenca, historicoDoencaFamiliar, investimentos, medicamentos: JSONNull?
    let telefones, classeRisco: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case tipoRelacaoSeguradoID = "tipoRelacaoSeguradoId"
        case nome, cpf, dataNascimento
        case sexoID = "sexoId"
        case profissaoCbo, renda, uf, origem, patrimonio
        case declaracaoIRID = "declaracaoIRId"
        case despesasEducacao, despesasMensais, formaContato, emails, historicoDoenca, historicoDoencaFamiliar, investimentos, medicamentos, telefones, classeRisco
    }
}
