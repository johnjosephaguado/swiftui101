//
//  ContentView.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
        .padding()
        .refreshable {
            print("")
        }
        .onAppear {
            Task {
                do {
                    let (data, response) = try await NetworkServiceManager.shared.getUser(id: 2)
                    
                    let janetUser = try? JSONDecoder().decode(ReqResUser.self, from: data)
                    
                    print("data: \(data) response: \(response) \(janetUser)")
                } catch {
                    print("error :\(error)")
                }
            }
            
//            Task {
//                do {
//                    let reqResUser = ReqResUser(name: "JJ", job: "iOS Developer")
//                    let (data, response) = try await NetworkServiceManager.shared.createUser(reqResUser: reqResUser)
//
//                    print("data: \(data) response: \(response)")
//                } catch {
//                    print(error)
//                }
//            }
            
//            Task {
//                do {
//                    let (data, response) = try await NetworkServiceManager.shared.getUsers()
//
//                    print("data: \(data) response: \(response)")
//                } catch {
//                    print(error)
//                }
//            }
            
//            let landmarkString = encodeLandmark()
//            print("encoded \(landmarkString)")
//
//            let landmark = decodeLandmark(landmarkString: landmarkString)
//            print("decoded \(landmark)")
            
            // extra steps
        }
    }
    
    func encodeLandmark() -> String {
        let landmark = Landmark(name: "Rizal Park", foundingYear: 1950)
        
        guard
            let landmarkData = try? JSONEncoder().encode(landmark),
            let result = String(data: landmarkData, encoding: .utf8)
        else { return "" }
        
        return result
    }
    
    func encodeLandmarkAsData() -> Data? {
        let landmark = Landmark(name: "Rizal Park", foundingYear: 1950)
        
        return try? JSONEncoder().encode(landmark)
    }
    
    func decodeLandmark(landmarkString: String) -> Landmark? {
        guard let landmarkData = landmarkString.data(using: .utf8) else { return nil }
        
        let decoder = JSONDecoder()
        
        let result = try? decoder.decode(Landmark.self, from: landmarkData)
        
        print("\(result?.name ?? "") \(result?.foundingYear ?? -1)")
        return result
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
