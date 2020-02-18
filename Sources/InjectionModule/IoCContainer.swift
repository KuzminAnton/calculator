//
//  File.swift
//  LoginForm
//
//  Created by Dmitriy Sorochinskiy on 16.04.18.
//  Copyright © 2018 user. All rights reserved.
//

import Swinject

class IoCContainer: NSObject {
    
    let assembler = Assembler([
        ])
}

private let ioCContainer = IoCContainer()

func resolve<Service>() -> Service! {
    let object = ioCContainer.assembler.resolver.resolve(Service.self)!
    return object
}
