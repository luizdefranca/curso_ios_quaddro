//
//  ViewController.swift
//  TrabalhandoGPS
//
//  Created by LuizRamos on 09/03/18.
//  Copyright © 2018 LuizRamos. All rights reserved.
//

import UIKit
import MapKit


/*
Descricao
 Você pode fazer a solicitacao de utilizacao do GPS no arquivo Info.plist, com as opcoes
 Privacy - Location
 terá quatro opções
 
*/
class ViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var mapa: MKMapView!
    
    //MARK: - Proprieties
    var gerenciadorLocal = CLLocationManager()
    
    //Latidude e longitude da Quaddro
    let latitude = -23.5660655
    let longitude = -46.6527825
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //implementando o delegate
        self.mapa.delegate = self
        
        
        //Criando o pino personalizado
        gerenciadorLocal.desiredAccuracy = kCLLocationAccuracyBest
        let coordenada = CLLocationCoordinate2DMake(self.latitude, self.longitude)
        let zoom = MKCoordinateSpanMake(0.001, 0.001)
        let regiao = MKCoordinateRegionMake(coordenada, zoom)
        
        mapa.setRegion(regiao, animated: true)
        
        //Criando o pino personalizado
        let pino = MKPointAnnotation()
        pino.title = "Quaddro Treinamentos"
        pino.subtitle = "Curso de Programacao"
        pino.coordinate = coordenada
        
        mapa.addAnnotation(pino)
        
        
        
        
    }
    
    //MARK: - Actions
    @IBAction func atualizar(_ sender: UIBarButtonItem) {
        
        //Verifica se o programa tem autorizacao para utilizar o GPS
        //seja Sempre (Always) quanto EmUso (InUSe)
        if CLLocationManager.authorizationStatus() != CLAuthorizationStatus.authorizedAlways &&
            CLLocationManager.authorizationStatus() != CLAuthorizationStatus.authorizedWhenInUse {
            print("Pedindo autorizacao")
            gerenciadorLocal.requestWhenInUseAuthorization()
        } else {
            print("ja temos autorizacao")
            //Definindo a exibicao da localizacao do dispositivo
            mapa.showsUserLocation = true
            
            //adiciona o delegate
            gerenciadorLocal.delegate = self
            
            //Iniciando a atualizacao das posicoes
            gerenciadorLocal.startUpdatingLocation()
        }
    }
    
    @IBAction func mudarEstilo(_ sender: UISegmentedControl) {
        let indice = sender.selectedSegmentIndex
        
        switch indice {
        case 0:
            mapa.mapType = .standard
        case 1:
            mapa.mapType = .satellite
        case 2:
            mapa.mapType = .hybrid
        default:
            break
        }
        
    }
    
    //MARK: - Methods
}

//MARK: - Extensions
extension ViewController : CLLocationManagerDelegate {
    
    //Método disparado quando a localizacano do dispositivo é alterada
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let ultimaLocalizacao = locations.last
        let zoom = MKCoordinateSpanMake(0.002, 0.002)
        let regiao = MKCoordinateRegionMake(ultimaLocalizacao!.coordinate, zoom)
        mapa.setRegion(regiao, animated: true)
    }
    
}
//Utilizando o protocolo que permite a personalizacao dos pinos
extension ViewController : MKMapViewDelegate {
    
    //Método que define a personalizacao de pinos
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil // porque o GPS ja tem o pino do azul pulsando
        } else {
            
            //Reaproveitando o pino existente para criar um  novo pino
            let novoPino = MKMarkerAnnotationView(annotation: mapView.dequeueReusableAnnotationView(withIdentifier: "Pino") as? MKAnnotation, reuseIdentifier: nil)
            
            //Indicando uma letra como ícone do pino
            //******* Caso se opte por utilizar a letra como ícone, possíveis imagens a serem utilizadas como ícones nunca aparecerão
//            novoPino.glyphText = "2Q"
            
            //Definindo uma cor personalizada para o pino
            novoPino.markerTintColor = #colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)
            
            //Definindo uma cor personalizada para o ícone do pino
            novoPino.glyphTintColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
            
            //Definindo imagens png com fundo transparente como ícone
            let imagemPequena = UIImage(named: "Q20")
            let imagemGrande = UIImage(named: "Q40")
            
            //Definindo a imagem menor
            novoPino.glyphImage = imagemPequena
            
            //Definindo a imagem maior
            novoPino.selectedGlyphImage = imagemGrande
        
            return novoPino
        }
      
    }
    
}
