//
// TodosAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Alamofire



class StatisticsTodosAPI {
    /**
     * enum for parameter format
     */
    enum Format_bMFBOVESPAAcoesGet: String {
        case json = "json"
        case xml = "xml"
        case textCsv = "text/csv"
        case textPlain = "text/plain"
        case textHtml = "text/html"
    }

    /**
     * enum for parameter select
     */
    enum Select_bMFBOVESPAAcoesGet: String {
        case mes = "mes"
        case liquidacaoldl = "liquidacaoLdl"
        case valorlbtr = "valorLbtr"
        case quantidadelbtr = "quantidadeLbtr"
        case valorldl = "valorLdl"
        case quantidadeldl = "quantidadeLdl"
        case podercompensacao = "poderCompensacao"
    }

    /**
     BM&FBovespa Câmara de Ações (até ago/2017)
     
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func bMFBOVESPAAcoesGet(format: Format_bMFBOVESPAAcoesGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil, completion: @escaping ((_ data: RespostaResumoMensalCamaraLDL?,_ error: Error?) -> Void)) {
        bMFBOVESPAAcoesGetWithRequestBuilder(format: format, select: select, orderby: orderby, filter: filter, skip: skip, top: top).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     BM&FBovespa Câmara de Ações (até ago/2017)
     - GET /BMFBOVESPAAcoes
     - Esta tabela, atualizada mensalmente pelo Banco Central do Brasil (BCB), com informações encaminhadas pela BM&FBOVESPA, contém a média diária da quantidade de negócios realizados na BOVESPA, com dados até agosto/2017.  A partir de 28.08.2017, a atividade de compensação e liquidação das operações do segmento Bovespa passou a ser realizada pela Câmara BM&FBOVESPA.
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - returns: RequestBuilder<RespostaResumoMensalCamaraLDL> 
     */
    class func bMFBOVESPAAcoesGetWithRequestBuilder(format: Format_bMFBOVESPAAcoesGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil) -> RequestBuilder<RespostaResumoMensalCamaraLDL> {
        let path = "/BMFBOVESPAAcoes"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "$format": format?.rawValue, 
            "$select": select, 
            "$orderby": orderby, 
            "$filter": filter, 
            "$skip": skip, 
            "$top": top
        ])

        let requestBuilder: RequestBuilder<RespostaResumoMensalCamaraLDL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    enum Format_bMFBOVESPAAtivosGet: String {
        case json = "json"
        case xml = "xml"
        case textCsv = "text/csv"
        case textPlain = "text/plain"
        case textHtml = "text/html"
    }

    /**
     * enum for parameter select
     */
    enum Select_bMFBOVESPAAtivosGet: String {
        case mes = "mes"
        case valoroperacoes = "valorOperacoes"
        case quantidadeoperacoes = "quantidadeOperacoes"
        case liquidacao = "liquidacao"
        case podercompensacao = "poderCompensacao"
    }

    /**
     BM&FBOVESPA Câmara de Ativos
     
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func bMFBOVESPAAtivosGet(format: Format_bMFBOVESPAAtivosGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil, completion: @escaping ((_ data: RespostaResumoMensalBMF?,_ error: Error?) -> Void)) {
        bMFBOVESPAAtivosGetWithRequestBuilder(format: format, select: select, orderby: orderby, filter: filter, skip: skip, top: top).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     BM&FBOVESPA Câmara de Ativos
     - GET /BMFBOVESPAAtivos
     - Esta tabela, atualizada mensalmente pelo Banco Central do Brasil (BCB), com informações encaminhadas pela BM&FBOVESPA, contém a média diária da quantidade de negócios realizados no mês (considerando operações definitivas à vista, definitivas a termo, compromissadas específicas, compromissadas dirigidas e migração de compromissadas) e o volume contratado para liquidação no período (considerando inclusive os retornos das operações compromissadas) em R$ milhões,  das operações liquidadas na Câmara de Ativos da BM&FBOVESPA.
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - returns: RequestBuilder<RespostaResumoMensalBMF> 
     */
    class func bMFBOVESPAAtivosGetWithRequestBuilder(format: Format_bMFBOVESPAAtivosGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil) -> RequestBuilder<RespostaResumoMensalBMF> {
        let path = "/BMFBOVESPAAtivos"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "$format": format?.rawValue, 
            "$select": select, 
            "$orderby": orderby, 
            "$filter": filter, 
            "$skip": skip, 
            "$top": top
        ])

        let requestBuilder: RequestBuilder<RespostaResumoMensalBMF>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    enum Format_bMFBOVESPACambioGet: String {
        case json = "json"
        case xml = "xml"
        case textCsv = "text/csv"
        case textPlain = "text/plain"
        case textHtml = "text/html"
    }

    /**
     * enum for parameter select
     */
    enum Select_bMFBOVESPACambioGet: String {
        case mes = "mes"
        case valoroperacoes = "valorOperacoes"
        case quantidadeoperacoes = "quantidadeOperacoes"
        case liquidacao = "liquidacao"
        case podercompensacao = "poderCompensacao"
    }

    /**
     BM&FBOVESPA Câmara de Câmbio
     
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func bMFBOVESPACambioGet(format: Format_bMFBOVESPACambioGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil, completion: @escaping ((_ data: RespostaResumoMensalBMF?,_ error: Error?) -> Void)) {
        bMFBOVESPACambioGetWithRequestBuilder(format: format, select: select, orderby: orderby, filter: filter, skip: skip, top: top).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     BM&FBOVESPA Câmara de Câmbio
     - GET /BMFBOVESPACambio
     - Esta tabela, atualizada mensalmente pelo Banco Central do Brasil (BCB), com informações encaminhadas pela BM&FBOVESPA, contém a média diária da quantidade (em unidades) e o valor das operações (em R$ milhões)  liquidadas na Câmara de Câmbio da BM&FBOVESPA.
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - returns: RequestBuilder<RespostaResumoMensalBMF> 
     */
    class func bMFBOVESPACambioGetWithRequestBuilder(format: Format_bMFBOVESPACambioGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil) -> RequestBuilder<RespostaResumoMensalBMF> {
        let path = "/BMFBOVESPACambio"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "$format": format?.rawValue, 
            "$select": select, 
            "$orderby": orderby, 
            "$filter": filter, 
            "$skip": skip, 
            "$top": top
        ])

        let requestBuilder: RequestBuilder<RespostaResumoMensalBMF>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    enum Format_bMFBOVESPADerivativosGet: String {
        case json = "json"
        case xml = "xml"
        case textCsv = "text/csv"
        case textPlain = "text/plain"
        case textHtml = "text/html"
    }

    /**
     * enum for parameter select
     */
    enum Select_bMFBOVESPADerivativosGet: String {
        case mes = "mes"
        case valorbruto = "valorbruto"
        case qtdbruto = "qtdbruto"
        case valoroperacoes = "valorOperacoes"
        case qtdoperacoes = "qtdOperacoes"
        case liquidacao = "liquidacao"
        case podercompensacao = "poderCompensacao"
    }

    /**
     Câmara BM&FBOVESPA
     
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func bMFBOVESPADerivativosGet(format: Format_bMFBOVESPADerivativosGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil, completion: @escaping ((_ data: RespostaResumoMensalBMFDrv?,_ error: Error?) -> Void)) {
        bMFBOVESPADerivativosGetWithRequestBuilder(format: format, select: select, orderby: orderby, filter: filter, skip: skip, top: top).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Câmara BM&FBOVESPA
     - GET /BMFBOVESPADerivativos
     - Esta tabela, atualizada mensalmente pelo Banco Central do Brasil (BCB), com informações encaminhadas pela BM&FBOVESPA, contém a média diária de Liquidação Bruta Sem Contraparte Central (a partir de 28/8/2017, quando foram aqui incluídas as operações do segmento Bovespa, até então divulgadas pela câmara BM&FBOVESPA Ações)  e Liquidação Multilateral com Contraparte Central, de negócios realizados na Câmara BM&FBOVESPA. As quantidades são em unidades e os valores em R$ milhões.
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - returns: RequestBuilder<RespostaResumoMensalBMFDrv> 
     */
    class func bMFBOVESPADerivativosGetWithRequestBuilder(format: Format_bMFBOVESPADerivativosGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil) -> RequestBuilder<RespostaResumoMensalBMFDrv> {
        let path = "/BMFBOVESPADerivativos"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "$format": format?.rawValue, 
            "$select": select, 
            "$orderby": orderby, 
            "$filter": filter, 
            "$skip": skip, 
            "$top": top
        ])

        let requestBuilder: RequestBuilder<RespostaResumoMensalBMFDrv>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    enum Format_c3Get: String {
        case json = "json"
        case xml = "xml"
        case textCsv = "text/csv"
        case textPlain = "text/plain"
        case textHtml = "text/html"
    }

    /**
     * enum for parameter select
     */
    enum Select_c3Get: String {
        case mes = "mes"
        case cessoes = "cessoes"
        case contratos = "contratos"
        case parcelas = "parcelas"
        case liquidacao = "liquidacao"
    }

    /**
     C3
     
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func c3Get(format: Format_c3Get? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil, completion: @escaping ((_ data: RespostaResumoMensalC3?,_ error: Error?) -> Void)) {
        c3GetWithRequestBuilder(format: format, select: select, orderby: orderby, filter: filter, skip: skip, top: top).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     C3
     - GET /C3
     - Esta tabela, atualizada mensalmente pelo Banco Central do Brasil (BCB), contém a quantidade de cessões (Cessão: Instrumento jurídico pelo qual um participante (cedente) transfere a outro (cessionário) créditos de que é titular. Uma operação de cessão de créditos pode conter diversas parcelas de diferentes contratos de crédito), contratos (Contrato:  Instrumento jurídico que formaliza a operação de crédito entre participantes e seus clientes) e parcelas (Parcelas: Quantidade mensal de parcelas que compõem os Contratos Cedidos na C3) de créditos, bem como os valores liquidados ( Liquidação - Soma dos valores liquidados das operações de Cessão de Créditos realizadas na C3 durante o mês).
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - returns: RequestBuilder<RespostaResumoMensalC3> 
     */
    class func c3GetWithRequestBuilder(format: Format_c3Get? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil) -> RequestBuilder<RespostaResumoMensalC3> {
        let path = "/C3"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "$format": format?.rawValue, 
            "$select": select, 
            "$orderby": orderby, 
            "$filter": filter, 
            "$skip": skip, 
            "$top": top
        ])

        let requestBuilder: RequestBuilder<RespostaResumoMensalC3>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    enum Format_cetipGet: String {
        case json = "json"
        case xml = "xml"
        case textCsv = "text/csv"
        case textPlain = "text/plain"
        case textHtml = "text/html"
    }

    /**
     * enum for parameter select
     */
    enum Select_cetipGet: String {
        case mes = "mes"
        case liquidacaoldl = "liquidacaoLdl"
        case valorlbtr = "valorLbtr"
        case quantidadelbtr = "quantidadeLbtr"
        case valorldl = "valorLdl"
        case quantidadeldl = "quantidadeLdl"
        case podercompensacao = "poderCompensacao"
    }

    /**
     Cetip
     
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func cetipGet(format: Format_cetipGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil, completion: @escaping ((_ data: RespostaResumoMensalCamaraLDL?,_ error: Error?) -> Void)) {
        cetipGetWithRequestBuilder(format: format, select: select, orderby: orderby, filter: filter, skip: skip, top: top).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Cetip
     - GET /Cetip
     - Esta tabela, atualizada mensalmente pelo Banco Central do Brasil (BCB), contém a média diária da quantidade e valor das operações liquidadas na Cetip.
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - returns: RequestBuilder<RespostaResumoMensalCamaraLDL> 
     */
    class func cetipGetWithRequestBuilder(format: Format_cetipGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil) -> RequestBuilder<RespostaResumoMensalCamaraLDL> {
        let path = "/Cetip"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "$format": format?.rawValue, 
            "$select": select, 
            "$orderby": orderby, 
            "$filter": filter, 
            "$skip": skip, 
            "$top": top
        ])

        let requestBuilder: RequestBuilder<RespostaResumoMensalCamaraLDL>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter format
     */
    enum Format_selicGet: String {
        case json = "json"
        case xml = "xml"
        case textCsv = "text/csv"
        case textPlain = "text/plain"
        case textHtml = "text/html"
    }

    /**
     * enum for parameter select
     */
    enum Select_selicGet: String {
        case mes = "mes"
        case valoroperacoes = "valorOperacoes"
        case quantidadeoperacoes = "quantidadeOperacoes"
    }

    /**
     Selic
     
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    class func selicGet(format: Format_selicGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil, completion: @escaping ((_ data: RespostaResumoMensalSelic?,_ error: Error?) -> Void)) {
        selicGetWithRequestBuilder(format: format, select: select, orderby: orderby, filter: filter, skip: skip, top: top).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }

    /**
     Selic
     - GET /Selic
     - Esta tabela, atualizada mensalmente pelo Banco Central do Brasil (BCB), contém a média diária da quantidade (em unidades) e valor das operações (em R$ milhões) dos mercados primário e secundário no SELIC (não inclui operações de redesconto).
     - API Key:
       - type: apiKey X-Api-Key 
       - name: GatewayAPIKey
     - parameter format: (query) Tipo de conteúdo que será retornado (optional)
     - parameter select: (query) Propriedades que serão retornadas (optional)
     - parameter orderby: (query) Propriedades para ordenação das entidades. i.e. Nome asc, Idade desc (optional)
     - parameter filter: (query) Filtro de seleção de entidades. i.e. Nome eq &#39;João&#39; (optional)
     - parameter skip: (query) Índice (maior ou igual a zero) da primeira entidade que será retornada (optional)
     - parameter top: (query) Número máximo (maior que zero) de entidades que serão retornadas (optional)
     - returns: RequestBuilder<RespostaResumoMensalSelic> 
     */
    class func selicGetWithRequestBuilder(format: Format_selicGet? = nil, select: [String]? = nil, orderby: String? = nil, filter: String? = nil, skip: Double? = nil, top: Double? = nil) -> RequestBuilder<RespostaResumoMensalSelic> {
        let path = "/Selic"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "$format": format?.rawValue, 
            "$select": select, 
            "$orderby": orderby, 
            "$filter": filter, 
            "$skip": skip, 
            "$top": top
        ])

        let requestBuilder: RequestBuilder<RespostaResumoMensalSelic>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}