//
//  ViewController.swift
//  Sensores
//
//  Created by LuizRamos on 12/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit

//Framework responsável por captar os dados dos sensores de movimento (Acelerômetro e Giroscópio)

import CoreMotion


class ViewController: UIViewController {

    //MARK: - IBOutlet
    
    //Labels do Acelerômetro
    @IBOutlet weak var labelX: UILabel!
    
    @IBOutlet weak var labelY: UILabel!
    
    @IBOutlet weak var labelZ: UILabel!
    
    //Labels do Giroscópio
    
    @IBOutlet weak var labelRow: UILabel!
    
    @IBOutlet weak var labelYam: UILabel!
    
    @IBOutlet weak var labelPicth: UILabel!
    
    
    //ProgressView do Acelerômetro
    @IBOutlet weak var progressX: UIProgressView!
    
    @IBOutlet weak var progressY: UIProgressView!
    
    @IBOutlet weak var progressZ: UIProgressView!
    
    //ProgressView do Giroscópio
    
    @IBOutlet weak var progressRow: UIProgressView!
    
    @IBOutlet weak var progressYam: UIProgressView!
    
    @IBOutlet weak var progressPitch: UIProgressView!
    
    
    //MARK: - Proprieties
    let gerenciadorSensores = CMMotionManager()
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Actions
    
    @IBAction func iniciar(_ sender: UIButton) {
        // ====== Trabalhando com o acelerômetro ======
        // 1. Verificando se o recurso está disponíel no dispositivo
        if self.gerenciadorSensores.isAccelerometerAvailable {
           
            print("Acelerômetro disponível")
            //Indicando a velocidade de atualização dos dados do sensor
            self.gerenciadorSensores.accelerometerUpdateInterval = 0.01
            
            //Captando os dados do sensor e repassando para a interface
            //Todos os dados dos sensores são processados na fila paralela de tarefas
            //Para que aconteça a atualização dos dados na interface, devemos despachar esses dados
            //para a fila principal. Os métodos para captar estes dados são dotados de recursos
            //para realizar essas operações, nesse caso não necessitamos de DispatchQueue.
            self.gerenciadorSensores.startAccelerometerUpdates(to: .main, withHandler: { (dados, errors) in
                if errors == nil {
                    
                    self.labelX.text = "\(dados!.acceleration.x)"
                    self.labelY.text = "\(dados!.acceleration.y)"
                    self.labelZ.text = "\(dados!.acceleration.z)"
                    
                    //Convertendo os valores do acelerometro para Float
                    //O progressView trabalha apenas com Float
                    let valorXFloat = Float(dados!.acceleration.x)
                    let valorYFloat = Float(dados!.acceleration.y)
                    let valorZFloat = Float(dados!.acceleration.z)
                    
                    //Ajustando os valores para o ProgressView
                    self.progressX.progress = valorXFloat
                    self.progressY.progress = valorYFloat
                    self.progressZ.progress = valorZFloat
                }
                
            })
            
        } else {
            print("Acelerômetro indisponível")
            
        }
        
        // 2. Verificando se o recurso está disponível no dispositivo
        if gerenciadorSensores.isGyroAvailable {
             print("Giroscópio disponível")
            
            //Indicando a velocidade de atualização do giroscópio
            self.gerenciadorSensores.deviceMotionUpdateInterval = 0.01
            
            //Captando os dados do sensor e repassando para a interface
            self.gerenciadorSensores.startDeviceMotionUpdates(to: .main, withHandler: { (dados, erros) in
                if erros == nil {
                    self.labelRow.text = "\(dados!.attitude.roll)"
                    self.labelYam.text = "\(dados!.attitude.yaw)"
                    self.labelPicth.text = "\(dados!.attitude.pitch)"
                    
                    let valorRoll = Float(dados!.attitude.roll)
                    let valorYam = Float(dados!.attitude.yaw)
                    let valorPitch = Float(dados!.attitude.pitch)
                    
                    self.progressRow.progress = valorRoll
                    self.progressYam.progress = valorYam
                    self.progressPitch.progress = valorPitch
                }
            })
        } else {
             print("Giroscópio indisponível")
        }
    }
    
    
    //MARK: - Methods


}

