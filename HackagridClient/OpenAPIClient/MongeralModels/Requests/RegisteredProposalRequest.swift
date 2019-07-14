// RegisteredProposalRequest.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let registeredProposalRequest = try? newJSONDecoder().decode(RegisteredProposalRequest.self, from: jsonData)

import Foundation

// MARK: - RegisteredProposalRequest
struct RegisteredProposalRequest: Codable {
    let proposta: Proposta?
    
    enum CodingKeys: String, CodingKey {
        case proposta = "PROPOSTA"
    }
}

// Proposta.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let proposta = try? newJSONDecoder().decode(Proposta.self, from: jsonData)

import Foundation

// MARK: - Proposta
struct Proposta: Codable {
    let numero, dtProtocolo, dtAssinatura, dtIndexacao: String?
    let instituidor: Instituidor?
    let dadosProponente: DadosProponente?
    let planos: Planos?
    let beneficiarios: Beneficiarios?
    let declaracoes: Declaracoes?
    let dadosCobranca: DadosCobranca?
    let usoMongeral: UsoMongeral?
    
    enum CodingKeys: String, CodingKey {
        case numero = "NUMERO"
        case dtProtocolo = "DT_PROTOCOLO"
        case dtAssinatura = "DT_ASSINATURA"
        case dtIndexacao = "DT_INDEXACAO"
        case instituidor = "INSTITUIDOR"
        case dadosProponente = "DADOS_PROPONENTE"
        case planos = "PLANOS"
        case beneficiarios = "BENEFICIARIOS"
        case declaracoes = "DECLARACOES"
        case dadosCobranca = "DADOS_COBRANCA"
        case usoMongeral = "USO_MONGERAL"
    }
}

// Beneficiarios.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let beneficiarios = try? newJSONDecoder().decode(Beneficiarios.self, from: jsonData)

import Foundation

// MARK: - Beneficiarios
struct Beneficiarios: Codable {
    let beneficiario: [Beneficiario]?
    
    enum CodingKeys: String, CodingKey {
        case beneficiario = "BENEFICIARIO"
    }
}

// Beneficiario.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let beneficiario = try? newJSONDecoder().decode(Beneficiario.self, from: jsonData)

import Foundation

// MARK: - Beneficiario
struct Beneficiario: Codable {
    let nome, nascimento, parentesco, participacao: String?
    let cdPlano: String?
    
    enum CodingKeys: String, CodingKey {
        case nome = "NOME"
        case nascimento = "NASCIMENTO"
        case parentesco = "PARENTESCO"
        case participacao = "PARTICIPACAO"
        case cdPlano = "CD_PLANO"
    }
}

// DadosCobranca.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dadosCobranca = try? newJSONDecoder().decode(DadosCobranca.self, from: jsonData)

import Foundation

// MARK: - DadosCobranca
struct DadosCobranca: Codable {
    let periodicidade, tipoCobranca, diaVencimento, compDebito: String?
    let numConvenio: String?
    
    enum CodingKeys: String, CodingKey {
        case periodicidade = "PERIODICIDADE"
        case tipoCobranca = "TIPO_COBRANCA"
        case diaVencimento = "DIA_VENCIMENTO"
        case compDebito = "COMP_DEBITO"
        case numConvenio = "NUM_CONVENIO"
    }
}

// DadosProponente.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dadosProponente = try? newJSONDecoder().decode(DadosProponente.self, from: jsonData)

import Foundation

// MARK: - DadosProponente
struct DadosProponente: Codable {
    let matricula, nome, dtNascimento, idade: String?
    let sexo, estadoCivil, cpf, titularCpf: String?
    let email, resideBrasil, rendaMensal, numFilhos: String?
    let ppe: String?
    let documentos: Documentos?
    let enderecos: Enderecos?
    let telefones: Telefones?
    let profissao: Profissao?
    
    enum CodingKeys: String, CodingKey {
        case matricula = "MATRICULA"
        case nome = "NOME"
        case dtNascimento = "DT_NASCIMENTO"
        case idade = "IDADE"
        case sexo = "SEXO"
        case estadoCivil = "ESTADO_CIVIL"
        case cpf = "CPF"
        case titularCpf = "TITULAR_CPF"
        case email = "EMAIL"
        case resideBrasil = "RESIDE_BRASIL"
        case rendaMensal = "RENDA_MENSAL"
        case numFilhos = "NUM_FILHOS"
        case ppe = "PPE"
        case documentos = "DOCUMENTOS"
        case enderecos = "ENDERECOS"
        case telefones = "TELEFONES"
        case profissao = "PROFISSAO"
    }
}

// Documentos.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let documentos = try? newJSONDecoder().decode(Documentos.self, from: jsonData)

import Foundation

// MARK: - Documentos
struct Documentos: Codable {
    let documento: Documento?
    
    enum CodingKeys: String, CodingKey {
        case documento = "DOCUMENTO"
    }
}

// Documento.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let documento = try? newJSONDecoder().decode(Documento.self, from: jsonData)

import Foundation

// MARK: - Documento
struct Documento: Codable {
    let naturezaDoc, documento, orgaoExpedidor, dataExpedicao: String?
    
    enum CodingKeys: String, CodingKey {
        case naturezaDoc = "NATUREZA_DOC"
        case documento = "DOCUMENTO"
        case orgaoExpedidor = "ORGAO_EXPEDIDOR"
        case dataExpedicao = "DATA_EXPEDICAO"
    }
}

// Enderecos.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let enderecos = try? newJSONDecoder().decode(Enderecos.self, from: jsonData)

import Foundation

// MARK: - Enderecos
struct Enderecos: Codable {
    let tpCorrespondencia: String?
    let endereco: [Endereco]?
    
    enum CodingKeys: String, CodingKey {
        case tpCorrespondencia = "TP_CORRESPONDENCIA"
        case endereco = "ENDERECO"
    }
}

// Endereco.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let endereco = try? newJSONDecoder().decode(Endereco.self, from: jsonData)

import Foundation

// MARK: - Endereco
struct Endereco: Codable {
    let tipo, logradouro, numero, complemento: String?
    let bairro, cidade, estado, cep: String?
    
    enum CodingKeys: String, CodingKey {
        case tipo = "TIPO"
        case logradouro = "LOGRADOURO"
        case numero = "NUMERO"
        case complemento = "COMPLEMENTO"
        case bairro = "BAIRRO"
        case cidade = "CIDADE"
        case estado = "ESTADO"
        case cep = "CEP"
    }
}

// Profissao.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let profissao = try? newJSONDecoder().decode(Profissao.self, from: jsonData)

import Foundation

// MARK: - Profissao
struct Profissao: Codable {
    let codigo, descricao, categoria: String?
    let empresa: Empresa?
    
    enum CodingKeys: String, CodingKey {
        case codigo = "CODIGO"
        case descricao = "DESCRICAO"
        case categoria = "CATEGORIA"
        case empresa = "EMPRESA"
    }
}

// Empresa.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let empresa = try? newJSONDecoder().decode(Empresa.self, from: jsonData)

import Foundation

// MARK: - Empresa
struct Empresa: Codable {
    let nome: String?
    
    enum CodingKeys: String, CodingKey {
        case nome = "NOME"
    }
}

// Telefones.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let telefones = try? newJSONDecoder().decode(Telefones.self, from: jsonData)

import Foundation

// MARK: - Telefones
struct Telefones: Codable {
    let telefone: [Telefone]?
    
    enum CodingKeys: String, CodingKey {
        case telefone = "TELEFONE"
    }
}

// Telefone.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let telefone = try? newJSONDecoder().decode(Telefone.self, from: jsonData)

import Foundation

// MARK: - Telefone
struct Telefone: Codable {
    let tipo, ddi, ddd, numero: String?
    
    enum CodingKeys: String, CodingKey {
        case tipo = "TIPO"
        case ddi = "DDI"
        case ddd = "DDD"
        case numero = "NUMERO"
    }
}

// Declaracoes.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let declaracoes = try? newJSONDecoder().decode(Declaracoes.self, from: jsonData)

import Foundation

// MARK: - Declaracoes
struct Declaracoes: Codable {
    let dps: Dps?
    
    enum CodingKeys: String, CodingKey {
        case dps = "DPS"
    }
}

// Dps.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dps = try? newJSONDecoder().decode(Dps.self, from: jsonData)

import Foundation

// MARK: - Dps
struct Dps: Codable {
    let tipoDps, peso, altura: String?
    let perguntas: Perguntas?
    
    enum CodingKeys: String, CodingKey {
        case tipoDps = "TIPO_DPS"
        case peso = "PESO"
        case altura = "ALTURA"
        case perguntas = "PERGUNTAS"
    }
}

// Perguntas.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let perguntas = try? newJSONDecoder().decode(Perguntas.self, from: jsonData)

import Foundation

// MARK: - Perguntas
struct Perguntas: Codable {
    let pergunta: [Pergunta]?
    
    enum CodingKeys: String, CodingKey {
        case pergunta = "PERGUNTA"
    }
}

// Pergunta.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let pergunta = try? newJSONDecoder().decode(Pergunta.self, from: jsonData)

import Foundation

// MARK: - Pergunta
struct Pergunta: Codable {
    let numero, questao, resposta, obsResposta: String?
    
    enum CodingKeys: String, CodingKey {
        case numero = "NUMERO"
        case questao = "QUESTAO"
        case resposta = "RESPOSTA"
        case obsResposta = "OBS_RESPOSTA"
    }
}

// Instituidor.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let instituidor = try? newJSONDecoder().decode(Instituidor.self, from: jsonData)

import Foundation

// MARK: - Instituidor
struct Instituidor: Codable {
    let numero, nome: String?
    
    enum CodingKeys: String, CodingKey {
        case numero = "NUMERO"
        case nome = "NOME"
    }
}

// Planos.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let planos = try? newJSONDecoder().decode(Planos.self, from: jsonData)

import Foundation

// MARK: - Planos
struct Planos: Codable {
    let vlTotal: String?
    let plano: [Plano]?
    
    enum CodingKeys: String, CodingKey {
        case vlTotal = "VL_TOTAL"
        case plano = "PLANO"
    }
}

// Plano.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let plano = try? newJSONDecoder().decode(Plano.self, from: jsonData)

import Foundation

// MARK: - Plano
struct Plano: Codable {
    let codigo, nome, vlApInicial, vlPortab: String?
    let tpTributacao, dtConcessao, prazoCerto, prazoDecrescimo: String?
    let coberturas: Coberturas?
    let fundos: Fundos?
    
    enum CodingKeys: String, CodingKey {
        case codigo = "CODIGO"
        case nome = "NOME"
        case vlApInicial = "VL_AP_INICIAL"
        case vlPortab = "VL_PORTAB"
        case tpTributacao = "TP_TRIBUTACAO"
        case dtConcessao = "DT_CONCESSAO"
        case prazoCerto = "PRAZO_CERTO"
        case prazoDecrescimo = "PRAZO_DECRESCIMO"
        case coberturas = "COBERTURAS"
        case fundos = "FUNDOS"
    }
}

// Coberturas.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let coberturas = try? newJSONDecoder().decode(Coberturas.self, from: jsonData)

import Foundation

// MARK: - Coberturas
struct Coberturas: Codable {
    let cobertura: Cobertura?
    
    enum CodingKeys: String, CodingKey {
        case cobertura = "COBERTURA"
    }
}

// Fundos.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let fundos = try? newJSONDecoder().decode(Fundos.self, from: jsonData)

import Foundation

// MARK: - Fundos
struct Fundos: Codable {
    let fundo: [Fundo]?
    
    enum CodingKeys: String, CodingKey {
        case fundo = "FUNDO"
    }
}

// UsoMongeral.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let usoMongeral = try? newJSONDecoder().decode(UsoMongeral.self, from: jsonData)

import Foundation

// MARK: - UsoMongeral
struct UsoMongeral: Codable {
    let convAdesao, acaoMarketing, alternativa, sucursal: String?
    let dirRegional, gerSucursal, gerComercial, agente: String?
    let corretor1, corretor2, agenteFidelizacao, modeloProposta: String?
    let modeloPropostaGed, tipoComissao: String?
    
    enum CodingKeys: String, CodingKey {
        case convAdesao = "CONV_ADESAO"
        case acaoMarketing = "ACAO_MARKETING"
        case alternativa = "ALTERNATIVA"
        case sucursal = "SUCURSAL"
        case dirRegional = "DIR_REGIONAL"
        case gerSucursal = "GER_SUCURSAL"
        case gerComercial = "GER_COMERCIAL"
        case agente = "AGENTE"
        case corretor1 = "CORRETOR1"
        case corretor2 = "CORRETOR2"
        case agenteFidelizacao = "AGENTE_FIDELIZACAO"
        case modeloProposta = "MODELO_PROPOSTA"
        case modeloPropostaGed = "MODELO_PROPOSTA_GED"
        case tipoComissao = "TIPO_COMISSAO"
    }
}
