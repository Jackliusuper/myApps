//
//  convertor.swift
//  petAgecalculator
//
//  Created by 刘国运 on 16/12/27.
//  Copyright © 2016年 AppsBAndS. All rights reserved.
//


import Foundation


class  Convertor{
    let catyears = [15,24,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88.92,96]
    let dogyears = [17,23,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88.92,96]
    
    
    func convertAge(_ age:Int, fromThisPetType petType:String) -> Int{
        if petType == "cat"{
            return Int(catyears[age])
        }else{
            return Int(dogyears[age])
        }
    }
}


// convertor,  转换器的意思
//点击错误处，自动修正。不能太依赖，先理解，但可参考。
























