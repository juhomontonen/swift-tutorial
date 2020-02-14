//
//  API.swift
//  DigitrafficTask
//
//  Created by Juho Montonen on 10/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import Foundation

private let baseUrl = URL(string: "https://tie.digitraffic.fi/api/v1/data/camera-data")!

private var decoder: JSONDecoder{
    let decode = JSONDecoder()
    decode.keyDecodingStrategy = .convertFromSnakeCase
    return decode
}

class API {
    class func fetchCam(by id: String, onSuccess: @escaping (Camera) -> Void) {
        
        guard let url = URL(string: "\(baseUrl)/\(id)") else {
            fatalError()
        }
        
        print(url)
        
        URLSession.shared.dataTask(with: url) { (data, res, err) in
             
            guard let data = data else { return }
            
            let camResult = try! JSONDecoder().decode(Camera.self, from: data)
            
            print(camResult)
            /*
            guard let data = data, err == nil else {
                print("error 1")
                fatalError(err!.localizedDescription)
            }
            
            print("data:")
            print(data)
            
            do {
                let camera = try decoder.decode(Camera.self, from: data)
                print("toimii")
                print(camera)
                DispatchQueue.main.async {
                    onSuccess(camera)
                }
            }
            catch {
                print("error 2")
                fatalError(error.localizedDescription)
            }
 */
        }
    }
}
