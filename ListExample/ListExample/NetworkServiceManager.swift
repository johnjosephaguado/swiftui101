//
//  NetworkServiceManager.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/14/23.
//

import Foundation

class NetworkServiceManager: NSObject {
    // singleton
    static let shared = NetworkServiceManager()
    private let api = API()
    
    private func sendRequest(urlRequest: URLRequest) async throws -> (Data, URLResponse) {
        print(urlRequest)
        
        if let data = urlRequest.httpBody,
           let encodedReqResUserString = String(data: data, encoding: .utf8) {
            print("\(urlRequest) and httpBody \(encodedReqResUserString)")
        }
        
        let (data, response) = try await api.data(for: urlRequest)
        
        if let result = String(data: data, encoding: .utf8) {
            print("data: \(result)")
        }
        
        return (data, response)
    }
    
    func getUsers() async throws -> (Data, URLResponse) {
        guard let url = URL(string: "https://dummyapi.io/data/v1/user?limit=10") else { throw NSError(domain: "something", code: 100) }
        
        var urlRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
        urlRequest.httpMethod = "GET" // default
        urlRequest.httpBody = nil
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("6502a904abbcc9d0a0a64548", forHTTPHeaderField: "app-id")
        
        let (data, response) = try await sendRequest(urlRequest: urlRequest)
        
        return (data, response)
    }
    
    func getUser(id: Int) async throws -> (Data, URLResponse) {
        guard let url = URL(string: "https://reqres.in/api/users/\(id)") else { throw NSError(domain: "something", code: 100) }
        
        var urlRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
        urlRequest.httpMethod = "GET" // default
        urlRequest.httpBody = nil
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let (data, response) = try await sendRequest(urlRequest: urlRequest)
        
        return (data, response)
    }
    
    func createUser(reqResUser: ReqResUser) async throws -> (Data, URLResponse) {
        guard let url = URL(string: "https://reqres.in/api/users") else { throw NSError(domain: "something", code: 100) }
        
        var urlRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
        urlRequest.httpMethod = "POST"
        urlRequest.httpBody = try? JSONEncoder().encode(reqResUser)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let (data, response) = try await sendRequest(urlRequest: urlRequest)
        
        return (data, response)
    }
}
