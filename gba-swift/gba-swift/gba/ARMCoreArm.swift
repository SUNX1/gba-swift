//
//  ARMCoreArm.swift
//  gba-swift
//
//  Created by ruyigou on 2018/6/26.
//  Copyright © 2018年 ruyigou. All rights reserved.
//

import Foundation

class ARMCoreArm {
    var cpu: ARMCore!
    
    var addressingMode23Immediate: [((Int,Int,Int)-> Int)?] = []
    var addressingMode23Register: [((Int,Int,Int)-> Int)?] = []
    var addressingMode2RegisterShifted: [((Int,Int,Int)-> Int)?] = []
    
    init() {
    }
    
    convenience init(cpu: ARMCore) {
        self.init()
        self.cpu = cpu
        
        self.addressingMode23Immediate = [
            // 000x0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                let gprs = cpu.gprs
                
//                var address = { () -> @lvalue Int in
//                    var addr = gprs[rn];
//                    if (!condOp || condOp()) {
//                        gprs[rn] -= offset;
//                    }
//                    return addr;
//                }()
//                address.writesPC = rn == cpu.PC;
//                return address;
                return 1;
            },
            
            // 000xW
            nil,
            
            nil,
            nil,
            
            // 00Ux0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 2
            },
            
            // 00UxW
            nil,
            
            nil,
            nil,
            
            // 0P0x0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 3
            },
            
            // 0P0xW
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 4
            },
            
            nil,
            nil,
            
            // 0PUx0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            // 0PUxW
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            nil,
            nil,
        ]
        
        self.addressingMode23Register = [
            // I00x0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            // I00xW
            nil,
            
            nil,
            nil,
            
            // I0Ux0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            // I0UxW
            nil,
            
            nil,
            nil,
            
            // IP0x0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            // IP0xW
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            nil,
            nil,
            
            // IPUx0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            // IPUxW
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            nil,
            nil
            
        ]
        
        self.addressingMode2RegisterShifted = [
            // I00x0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            // I00xW
            nil,
            
            nil,
            nil,
            
            // I0Ux0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            // I0UxW
            nil,
            
            nil,
            nil,
            
            // IP0x0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            // IP0xW
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            nil,
            nil,
            
            // IPUx0
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            // IPUxW
            { (rn: Int,offset: Int,condOp: Int) -> Int in
                return 1
            },
            
            nil,
            nil,
            
        ]
    }
}

extension ARMCoreArm {
    func test() {
        print(self.addressingMode23Immediate[0]?(1,2,3))
        print(self.addressingMode23Immediate[1]?(1,2,3))
        print(self.addressingMode23Immediate[4]?(1,2,3))
        
    }
}
