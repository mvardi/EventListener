//
//  File.swift
//  
//
//  Created by Menahem  Vardi on 08/09/2022.
//

import Foundation


struct FileRepositoriy: TextOutputStream {
    
    static var log: FileRepositoriy = FileRepositoriy()
    
    func write(_ string: String) {
        let fm = FileManager.default
        let log = fm.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("log.txt")
        if let handle = try? FileHandle(forWritingTo: log) {
            handle.seekToEndOfFile()
            handle.write(string.data(using: .utf8)!)
            handle.closeFile()
        } else {
            try? string.data(using: .utf8)?.write(to: log)
        }
    }
    
    private init() {}

    
}
