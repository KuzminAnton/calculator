//
//  BasePresenterProtocol.swift
//  LoginForm
//
//  Created by Dmitriy Sorochinskiy on 16.04.18.
//  Copyright © 2018 user. All rights reserved.
//

import Foundation

@objc protocol BasePresenterProtocol {
    @objc optional func viewDidLoad()
    @objc optional func viewWillAppear()
    @objc optional func viewDidAppear()
}
