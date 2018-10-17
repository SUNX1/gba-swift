//
//  ARMCore.swift
//  gba-swift
//
//  Created by ruyigou on 2018/6/26.
//  Copyright © 2018年 ruyigou. All rights reserved.
//

import Foundation

class ARMCore {
    var SP = 13
    var LR = 14
    var PC = 15
    
    var MODE_ARM = 0
    var MODE_THUMB = 1
    
    var MODE_USER = 0x10
    var MODE_FIQ = 0x11
    var MODE_IRQ = 0x12
    var MODE_SUPERVISOR = 0x13
    var MODE_ABORT = 0x17
    var MODE_UNDEFINED = 0x1B
    var MODE_SYSTEM = 0x1F
    
    var BANK_NONE = 0
    var BANK_FIQ = 1
    var BANK_IRQ = 2
    var BANK_SUPERVISOR = 3
    var BANK_ABORT = 4
    var BANK_UNDEFINED = 5
    
    var UNALLOC_MASK = 0x0FFFFF00
    var USER_MASK = 0xF0000000
    var PRIV_MASK = 0x000000CF // This is out of spec, but it seems to be what's done in other implementations
    var STATE_MASK = 0x00000020
    
    var WORD_SIZE_ARM = 4
    var WORD_SIZE_THUMB = 2
    
    var BASE_RESET = 0x00000000
    var BASE_UNDEF = 0x00000004
    var BASE_SWI = 0x00000008
    var BASE_PABT = 0x0000000C
    var BASE_DABT = 0x00000010
    var BASE_IRQ = 0x00000018
    var BASE_FIQ = 0x0000001C
    
    
    var gprs: [Int]
    var armCompiler: ARMCoreArm
    
    init() {
        
        //    this.armCompiler = new ARMCoreArm(this);
        self.armCompiler = ARMCoreArm()
        
        //    this.thumbCompiler = new ARMCoreThumb(this);
        //    this.generateConds();
        
        //    this.gprs = new Int32Array(16);
        self.gprs = []
    }
    
    func resetCPU(_ startOffset: Int) {
        
    }
    
    func freeze() {
        
    }
    
    func defrost() {
        
    }
    
    func fetchPage() {
        
    }
    
    func loadInstructionArm() {
        
    }
    
    func loadInstructionThumb() {
        
    }
    
    func selectBank() {
        
    }
}
