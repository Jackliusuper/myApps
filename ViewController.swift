//
//  ViewController.swift
//  petAgecalculator
//
//  Created by 刘国运 on 16/12/22.
//  Copyright © 2016年 AppsBAndS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UIPickerViewDataSource, UIPickerViewDelegate {              //猫狗0,1,2对应的人类岁数。
    
    let convertor = Convertor()       //生成实体,converton大小写一定要一致，不然报错
  
    @IBOutlet weak var yearPicker: UIPickerView!
    @IBAction func giveMeAnswer(_ sender: UIButton) {
          let age = yearPicker.selectedRow(inComponent: 0)
          if let petType = self.restorationIdentifier{
            
            let resultAge = convertor.convertAge(age, fromThisPetType: petType)
            
            
                    let resultAlert = UIAlertController(title: "Here you are", message: "Your pet's age is\(resultAge) years old", preferredStyle: .alert)     //警告控制器
            
            
            
            
           let okButton =  UIAlertAction(title: "OK", style: .default, handler: {
                (action:UIAlertAction) in
              self.dismiss(animated: true, completion: nil)  //动作：移除警告控制器
            })
            resultAlert.addAction(okButton)
            present(resultAlert, animated: true, completion: nil)
        }
    }  //picker的属性：挑选的列数（构件数值为0）
       //resultAge ,加上（）和 Int后才行，不然报错。教程上并没有加。我擦。
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1                 //执行1到20的 picker
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 20
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let yearNumber = row + 1
        if yearNumber == 1{
            return "\(yearNumber)year old."
        }else{
            return " \(yearNumber)years old."
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override var preferredStatusBarStyle:UIStatusBarStyle{
        return.lightContent
        
    }


}















































