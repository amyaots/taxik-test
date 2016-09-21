//
//  SwinjectStoryboard.swift
//  AutoAngel-Customer
//
//  Created by Myaots Alexandr on 22.08.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

class AssemblerHolder {
    static let sharedAssembler = Assembler(container: SwinjectStoryboard.defaultContainer)
}

class ViperAssembler<T: ViperModuleAssembly> {
    
    private let assembler: Assembler
    
    init() {
        assembler = try! Assembler(assemblies: [T()], container: SwinjectStoryboard.defaultContainer)
    }
}

protocol ViperModuleAssembly: AssemblyType {
    init()
}

extension SwinjectStoryboard {
    public static func setup() {
//        AssemblerHolder.sharedAssembler.applyAssemblies(
//                [NetworkModelAssembly()
//                , UserModelAssembly()
//                , ApplicationModelAssembly()
//                , CarModelAssembly()
//                , GasStationModelAssembly()
//                , AdvertisingModelAssembly()])
    }
}
