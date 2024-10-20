
//  APICaller.swift
//  GPT_AI
//
//  Created by Maxwell Astafyev on 10/19/24.
//
import OpenAISwift
import Foundation

final class APICALLER {
    static let shared = APICALLER()
   

   
    let config = OpenAISwift.Config.makeDefaultOpenAI(apiKey:"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")
    
    
    private var client: OpenAISwift?
    
    private init() {}
    
    public func setup() {
        // Initialize the OpenAI client using the correct configuration method.
        self.client = OpenAISwift(config: config)
    }
    
    public func getResponse(input: String, completion: @escaping (Result<String, Error>) -> Void) {
        guard let client = client else {
            completion(.failure(NSError(domain: "ClientNotInitialized", code: 0, userInfo: nil)))
            return
        }
        
        client.sendCompletion(with: input, completionHandler: { result in
            switch result {
            case .success(let model):
                if let output = model.choices?.first?.text {
                    completion(.success(output))
                } else {
                    completion(.failure(NSError(domain: "NoResponse", code: 0, userInfo: [NSLocalizedDescriptionKey: "No response text found."])))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
}
