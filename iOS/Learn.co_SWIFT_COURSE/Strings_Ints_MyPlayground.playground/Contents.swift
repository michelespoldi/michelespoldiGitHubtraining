//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        //start
        let thirdPlanet = "Earth"
        //writing type of the variable
        var ninthPlanet: String
        ninthPlanet = "Pluto"
        //swiftn can figure out types in its own
        let fifthPlanet: String = "Jupiter"
        // fifthPlanet is a constant of type String
        
        let sixthPlanet: String = "Saturn"
        // sixthPlanet is a constant of type String
        
        let seventhPlanet = "Uranus"
        // seventhPlanet is a constant of type String
        view.addSubview(label)
        self.view = view
        
        //Integers
        let numberOfCountriesInAfrica = 54
        
        let numberOfMoonsOfSaturn = 62
        
        print("There are \(numberOfMoonsOfSaturn) moons orbiting \(sixthPlanet)")
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
