// swift-tools-version:5.3

//  Package.swift
//  KeychainAccess
//
//  Created by kishikawa katsumi on 2015/12/4.
//  Copyright (c) 2015 kishikawa katsumi. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "KeychainAccess",
    platforms: [
        .macOS(.v10_13), .iOS(.v12), .tvOS(.v12), .watchOS(.v4)
    ],
    products: [
        .library(name: "KeychainAccess", targets: ["KeychainAccess"])
    ],
    targets: [
        .target(name: "KeychainAccess", 
                path: "Lib/KeychainAccess",
                resources: [.process("Lib/KeychainAccess/Supporting Files/Privacyinfo.xcprivacy")],
                exclude:["Info.plist"])
    ]
)
