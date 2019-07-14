//
//  ViewController.swift
//  HackagridClient
//
//  Created by Ian Manor on 13/07/19.
//  Copyright © 2019 Ian Manor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Idade atual
        // Idade alvo
        // Qual sua renda atual?
        // Montante
        // Taxa de rentabilidade
        // Renda?
        
        // Widget de cartão de crédito
        // https://widgetshmg.mongeralaegon.com.br/widget-cartao-credito/v2/?cnpj=33608308000173&acao=PreAutorizacao&valorCompra=69.90&chave=cpf&chave=ModeloProposta&chave=DocVendedor&chave=CodigoVenda&valor=53566114987&valor=FA&valor=36772779142&valor=f0b9759c-d31f-4240-9158-3c13b12d8024
        /*
        let envioRequest = EnvioRequest(emailDestinatario: "ianmanor.dev@gmail.com", nomeDestinatario: "Ian Manor", emailRemetente: "mongeral@app.com", nomeRemetente: "Mongeral Seguros", assunto: "Apólice de seguro aprovada", body: "Parabés, sua apólice de seguro de previdência foi aprovada!", referencia: "Campanha", agendamento: "2019-07-14T15:01:24+00:00")
        EmailTodosAPI.emailPost(body: [envioRequest]) { (data, error) in
            print(data)
            print(error)
        }
        */
    }

    @IBAction func getModels(_ sender: Any) {
        let CNPJ = "11321351000110"
        
        ProposalModelAPI.modelopropostaGet(completo: "true", canalVenda: "4", cnpj: CNPJ) { (data, error) in
            //print(error ?? "No error")
            if let data = data {
                let produtos = data.valor.first?.produtos
                for produto in produtos ?? [] {
                    if produto.descricao == "PGBL PRIVATE TOP" || produto.descricao == "VGBL PRIVATE TOP" {
                        dump(produto)
                    }
                }
            }
        }
        
        let proponente = Proponente(tipoRelacaoSeguradoID: 1, nome: "VICTOR SIQUEIRA NOCRATO", cpf: "34839758883", dataNascimento: "1988-11-17", sexoID: 1, profissaoCbo: "2410-05", renda: 7000, uf: "MA", origem: nil, patrimonio: nil, declaracaoIRID: 1, despesasEducacao: nil, despesasMensais: nil, formaContato: nil, emails: nil, historicoDoenca: nil, historicoDoencaFamiliar: nil, investimentos: nil, medicamentos: nil, telefones: nil, classeRisco: nil)
        let simulation = Simulation(proponente: proponente, produtos: nil, periodicidadeCobrancaID: 30, prazoDecrescimo: nil, prazoPagamentoAntecipado: nil, idadePagamentoAntecipado: nil, prazoCerto: 10, prazoRenda: nil, ticketMinimo: nil)
        let model0 = SimulationRequest(simulacoes: [simulation])
        
        SimulationAPI.simulacaoPost(codigoModeloProposta: "YZ", cnpj: CNPJ, body: model0) { (data, error) in
            print(model0)
        }
    }
    
}

