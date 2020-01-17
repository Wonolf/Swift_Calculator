//
//  ViewController.swift
//  calculadora2
//
//  Created by Bononya on 10/01/2020.
//  Copyright © 2020 Bononya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlets
    
    @IBOutlet weak var sumar: UIButton!
    @IBOutlet weak var restar: UIButton!
    @IBOutlet weak var multiplicar: UIButton!
    @IBOutlet weak var dividir: UIButton!
    @IBOutlet weak var igual: UIButton!
    @IBOutlet weak var coma: UIButton!
    @IBOutlet weak var cero: UIButton!
    @IBOutlet weak var uno: UIButton!
    @IBOutlet weak var dos: UIButton!
    @IBOutlet weak var tres: UIButton!
    @IBOutlet weak var cuatro: UIButton!
    @IBOutlet weak var cinco: UIButton!
    @IBOutlet weak var seis: UIButton!
    @IBOutlet weak var siete: UIButton!
    @IBOutlet weak var ocho: UIButton!
    @IBOutlet weak var nueve: UIButton!
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var masmenos: UIButton!
    @IBOutlet weak var porcentaje: UIButton!
    
    @IBOutlet weak var result: UILabel!
    
    var value1: Double = 0
    var value2: Double = 0
    var valueresult: Double = 0
    
    var operacion: Int = 0
    var operatorpressed: Bool = false
    var dot: Bool = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        igual.round()
        sumar.round()
        restar.round()
        multiplicar.round()
        dividir.round()
        coma.round()
        cero.round()
        uno.round()
        dos.round()
        tres.round()
        cuatro.round()
        cinco.round()
        seis.round()
        siete.round()
        ocho.round()
        nueve.round()
        reset.round()
        masmenos.round()
        porcentaje.round()
    }

    @IBAction func masaction(_ sender: Any) {
    }
    
    @IBAction func igualaction(_ sender: Any) {
        result.text! = String(valueresult)
    }
    
    @IBAction func numberaction(_ sender: UIButton) {
    }
    
    @IBAction func boton1(_ sender: Any) {
        if result.text=="0"  {
            result.text! = "1"
        }
        else{
        result.text! += "1"
        }
        
    }
    
    @IBAction func boton2(_ sender: Any) {
        if result.text=="0"  {
             result.text! = "2"
         }
         else{
         result.text! += "2"
         }
    }
    
    @IBAction func boton3(_ sender: Any) {
        if result.text=="0"  {
            result.text! = "3"
        }
        else{
        result.text! += "3"
        }
    }
    
    @IBAction func boton4(_ sender: Any) {
        if result.text=="0"  {
            result.text! = "4"
        }
        else{
        result.text! += "4"
        }
    }
    
    @IBAction func boton5(_ sender: Any) {
        if result.text=="0"  {
            result.text! = "5"
        }
        else{
        result.text! += "5"
        }
    }
    
    @IBAction func boton6(_ sender: Any) {
        if result.text=="0"  {
            result.text! = "6"
        }
        else{
        result.text! += "6"
        }
    }
    
    @IBAction func boton7(_ sender: Any) {
        if result.text=="0"  {
            result.text! = "7"
        }
        else{
        result.text! += "7"
        }
    }
    
    @IBAction func boton8(_ sender: Any) {
        if result.text=="0"  {
            result.text! = "8"
        }
        else{
        result.text! += "8"
        }
    }
    @IBAction func boton9(_ sender: Any) {
        if result.text=="0"  {
            result.text! = "9"
        }
        else{
        result.text! += "9"
        }
    }
    
    @IBAction func boton0(_ sender: Any) {
        if result.text != "0"{
            result.text! += "0"
        }
    }
    
    @IBAction func botoncoma(_ sender: Any) {
        if !dot {
            result.text! += "."
            dot = true
        }
    }
    
    @IBAction func botonAC(_ sender: Any) {
        result.text! = "0"
        dot = false
        operatorpressed = false
        value1 = 0
        value2 = 0
    }
    
    @IBAction func botoncambiasigno(_ sender: Any) {
        if !operatorpressed {
            value1 = Double(result.text!)!
            if Double(result.text!)! < 0 {
                value1 -= value1 * 2
                result.text = String(value1)
            }
            else if Double(result.text!)! > 0 {
                value1 -= value1 * 2
                result.text = String(value1)
            }
        }
        else {
            value2 = Double(result.text!)!
            if Double(result.text!)! < 0 {
                value2 -= value2 * 2
                result.text = String(value2)
            }
            else if Double(result.text!)! > 0 {
                value2 -= value2 * 2
                result.text = String(value2)
            }
        }
    }
    @IBAction func botonsuma(_ sender: Any) {
        if !operatorpressed {
            value1 = Double(result.text!)!
            result.text! = "0"
            operacion = 1
            operatorpressed = true
            dot = false
        }
        else {
            haceroperacion()
            value1 = valueresult
            result.text! = "0"
            operacion = 1
            operatorpressed = true
            dot = false
        }
    }
    
    @IBAction func botonresta(_ sender: Any) {
        if !operatorpressed {
            value1 = Double(result.text!)!
            result.text! = "0"
            operacion = 2
            operatorpressed = true
            dot = false
        }
        else {
            haceroperacion()
            value1 = valueresult
            result.text! = "0"
            operacion = 2
            operatorpressed = true
            dot = false
        }
    }
    
    @IBAction func botonmulti(_ sender: Any) {
        if !operatorpressed {
            value1 = Double(result.text!)!
            result.text! = "0"
            operacion = 3
            operatorpressed = true
            dot = false
        }
        else {
            haceroperacion()
            value1 = valueresult
            result.text! = "0"
            operacion = 3
            operatorpressed = true
            dot = false
        }
    }
    
    @IBAction func botondivide(_ sender: Any) {
        if !operatorpressed {
            value1 = Double(result.text!)!
            result.text! = "0"
            operacion = 4
            operatorpressed = true
            dot = false
        }
        else {
            haceroperacion()
            value1 = valueresult
            result.text! = "0"
            operacion = 4
            operatorpressed = true
            dot = false
        }
    }
    
    @IBAction func botonporcentaje(_ sender: Any) {
        if !operatorpressed {
            value1 = Double(result.text!)!
            result.text! = "0"
            operacion = 5
            operatorpressed = true
            dot = false
        }
        else {
            haceroperacion()
            value1 = valueresult
            result.text! = "0"
            operacion = 5
            operatorpressed = true
            dot = false
        }
    }
    
    @IBAction func botonEqual(_ sender: Any) {
        haceroperacion()
        result.text! = String(valueresult)
    }
    
    func haceroperacion(){
        switch operacion {
        case 1:
            value2 = Double(result.text!)!
            valueresult = value1 + value2
        case 2:
            value2 = Double(result.text!)!
            valueresult = value1 - value2
        case 3:
            value2 = Double(result.text!)!
            valueresult = value1 * value2
        case 4:
            value2 = Double(result.text!)!
            if value2 == 0 || value2 == 0.0 {
                showToast(message: "Error. No se puede dividir entre 0")
            }
            else{
                valueresult = value1 / value2
            }
        case 5:
            value2 = Double(result.text!)!
            valueresult = (value1 * value2) / 100
        default:
            showToast(message: "Ha ocurrido un error inesperado")
        }
    }
}
// MARK: - UIButton Extension
extension UIButton{
    func round(){
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
}

extension UIViewController {

func showToast(message : String) {

    let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 150, y: self.view.frame.size.height-100, width: 300, height: 35))
    toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
    toastLabel.textColor = UIColor.white
    toastLabel.textAlignment = .center;
    toastLabel.text = message
    toastLabel.alpha = 1.0
    toastLabel.layer.cornerRadius = 10;
    toastLabel.clipsToBounds  =  true
    self.view.addSubview(toastLabel)
    UIView.animate(withDuration: 6.0, delay: 0.1, options: .curveEaseOut, animations: {
         toastLabel.alpha = 0.0
    }, completion: {(isCompleted) in
        toastLabel.removeFromSuperview()
    })
} }
