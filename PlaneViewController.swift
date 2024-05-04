//
//  PlaneViewController.swift
//  FlyForFun
//
//  Created by Mikyas Demeke on 5/3/24.
//

import Foundation
import UIKit
class PlaneViewController : UITableViewController {
    override func viewDidLoad() {
            super.viewDidLoad()
            AirlinesArray()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {

        var index = tableView.indexPathForSelectedRow
        var FlyForFunRow =  FlyForFunObjectArray[index!.row]
        
        var destinationController = segue.destination as! ViewController
        destinationController.seguelFlyForFun = FlyForFunRow
        

    }
    override func  tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return FlyForFunObjectArray.count
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //var cell = UITableViewCell()
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let cellIndex = indexPath.row
        var FlyForFunRow =  FlyForFunObjectArray[cellIndex]
        cell!.textLabel!.text = FlyForFunRow.Name
        cell!.detailTextLabel!.text = "Destinations: \(FlyForFunRow.Destinations).  MileageProgram:\(FlyForFunRow.MileageProgram)."
    
        return cell!
    }
    
    
    var FlyForFunObjectArray = [FlyForFun]()
    func AirlinesArray() {
        let FF1 = FlyForFun()
        FF1.Name = "Lufthansa Airlines"
        FF1.Destinations = "209"
        FF1.Description = "Germany Based Airlines"
        FF1.MileageProgram = "Star Alliance"
        FF1.Website = "https://www.lufthansa.com/us/en/homepage"
        FF1.Image = "Lufthansa.png"
        FF1.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.insert(FF1, at: 0)
        
        let FF2 = FlyForFun()
        FF2.Name = "Austrian Airlines"
        FF2.Destinations = "126"
        FF2.Description = " Austria Based Airlines"
        FF2.MileageProgram = "Star Alliance"
        FF2.Website = "https://www.austrian.com/us/en/homepage"
        FF2.Image = "Austrian.png"
        FF2.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF2)
        
        let FF3 = FlyForFun()
        FF3.Name = "Swiss Airlines"
        FF3.Destinations = "100"
        FF3.Description = " Switzerland Based Airlines"
        FF3.MileageProgram = "Star Alliance"
        FF3.Website = "https://www.swiss.com/us/en/homepage"
        FF3.Image = "Swiss.jpeg"
        FF3.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF3)
        
        let FF4 = FlyForFun()
        FF4.Name = "Brussels Airlines"
        FF4.Destinations = "85"
        FF4.Description = " Belgium Based Airlines"
        FF4.MileageProgram = "Star Alliance"
        FF4.Website = "https://www.brusselsairlines.com/us/en/homepage"
        FF4.Image = "Brussels.png"
        FF4.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF4)
        
        let FF5 = FlyForFun()
        FF5.Name = "Airfrance Airline"
        FF5.Destinations = "230"
        FF5.Description = " France Based Airlines"
        FF5.MileageProgram = "Sky Team"
        FF5.Website = "https://wwws.airfrance.us/search/advanced?connections="
        FF5.Image = "Airfrance.png"
        FF5.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF5)
        
        let FF6 = FlyForFun()
        FF6.Name = "KLM Airline"
        FF6.Destinations = "318"
        FF6.Description = " Netherlands Based Airlines"
        FF6.MileageProgram = "Sky Team"
        FF6.Website = "https://www.klm.com"
        FF6.Image = "KLM.png"
        FF6.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF6)
        
        let FF7 = FlyForFun()
        FF7.Name = "Air India Airlines"
        FF7.Destinations = "81"
        FF7.Description = " India Based Airlines"
        FF7.MileageProgram = "Star Alliance"
        FF7.Website = "https://www.airindia.com"
        FF7.Image = "Air India.png"
        FF7.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF7)
        
        let FF8 = FlyForFun()
        FF8.Name = "Ethiopian Airlines"
        FF8.Destinations = "155"
        FF8.Description = " Ethiopia Based Airlines"
        FF8.MileageProgram = "Star Alliance"
        FF8.Website = "https://www.ethiopianairlines.com/us"
        FF8.Image = "Ethiopian.png"
        FF8.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF8)
        
        let FF9 = FlyForFun()
        FF9.Name = "British Airways"
        FF9.Destinations = "200"
        FF9.Description = " London Heathrow Based Airlines"
        FF9.MileageProgram = "Star Alliance"
        FF9.Website = "https://www.britishairways.com/travel/home/public/en_us/"
        FF9.Image = "British.png"
        FF9.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF9)
        
        
        let FF10 = FlyForFun()
        FF10.Name = "United Airlines"
        FF10.Destinations = "330"
        FF10.Description = "Chicago U.S Based Airlines"
        FF10.MileageProgram = "Star Alliance"
        FF10.Website = "https://www.united.com/en/us"
        FF10.Image = "United.png"
        FF10.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF10)
        
        let FF11 = FlyForFun()
        FF11.Name = "Delta Airlines"
        FF11.Destinations = "242"
        FF11.Description = "Atlanta U.S Based Airlines"
        FF11.MileageProgram = "Sky Team"
        FF11.Website = "https://www.delta.com"
        FF11.Image = "Delta.png"
        FF11.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF11)
        
        let FF12 = FlyForFun()
        FF12.Name = "American Airlines"
        FF12.Destinations = "350"
        FF12.Description = "U.S Based Airlines"
        FF12.MileageProgram = "One World"
        FF12.Website = "https://www.aa.com/homePage.do"
        FF12.Image = "American.jpeg"
        FF12.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF12)
        
        let FF13 = FlyForFun()
        FF13.Name = "Alaska Airlines"
        FF13.Destinations = "100"
        FF13.Description = "U.S Based Airlines"
        FF13.MileageProgram = "One World"
        FF13.Website = "https://www.alaskaair.com"
        FF13.Image = "Alaska.jpeg"
        FF13.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF13)
        
        
        let FF14 = FlyForFun()
        FF14.Name = "Tap Portugal Airlines"
        FF14.Destinations = "88"
        FF14.Description = "Portugal Based Airlines"
        FF14.MileageProgram = "Star Alliance "
        FF14.Website = "https://www.flytap.com/en-us/"
        FF14.Image = "Tap.png"
        FF14.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF14)
        
        let FF15 = FlyForFun()
        FF15.Name = "Air Canada Airlines"
        FF15.Destinations = "195"
        FF15.Description = "Canada Based Airlines"
        FF15.MileageProgram = "Star Alliance "
        FF15.Website = "https://www.aircanada.com/us/en/aco/home.html"
        FF15.Image = "AirCanada.png"
        FF15.Disclaimer = "This App is developed as an educational project. If any copyrightedmaterials are included in accordance to the multimedia fair use guidelines, a notice should be added and states that “certain materials are included under the fair use exemption of the U.S. Copyright Lawand have been prepared according to the multimedia fair use guidelines and are restricted from further use"
        FlyForFunObjectArray.append(FF15)

    }
}
