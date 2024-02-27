//
//  HTTPRequestError.swift
//  CryptoTracker
//
//  Created by Матвей Федышин on 10.02.2024.
//

import Foundation

public struct ValidatorErrorResponse: Decodable {
    let message, type: String
    let param: String?
    let code: Int?
}

public enum HTTPRequestError: Error {
    ///Ошибка декодирования модели
    case decode
    ///Ошибка проверки URL
    case invalidURL
    ///Ошибка получения ответа от сервера
    case noResponse
    ///Ошибка получения данных
    case request(localizedDescription: String)
    ///Ошибка окончания текущей сессии
    case unauthorizate
    ///Ошибка для непредвиденных статус кодов
    case unexpectedStatusCode(code: Int, localized: String?)
    ///Ошибка обработки запроса сервером
    case defaultServerError(error: String)
    ///Ошибка отсутствия загружаемых данных
    case noBodyData
    ///Ошибка валидации отправленных данных
    case validator(error: ValidatorErrorResponse)
}

extension HTTPRequestError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .decode:
            return "Ошибка декодирования"
        case .invalidURL:
            return "Неверный URL"
        case .noResponse:
            return "Нет ответа"
        case .request(let localizedDescription):
            return localizedDescription
        case .unauthorizate:
            return "Сессия окончена"
        case .unexpectedStatusCode(let code, let local):
            return "unexpectedStatusCode: \(code) - " + (local ?? "")
        case .defaultServerError(let error):
            return "Ошибка сервера: " + error
        case .noBodyData:
            return "Нет передаваемых данных"
        case .validator(let error):
            return "Ошибка валидатора: \(error.message)"
        }
    }
}
