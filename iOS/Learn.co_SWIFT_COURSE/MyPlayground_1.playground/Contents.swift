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
        
        view.addSubview(label)
        self.view = view
        var favoriteWord = "Kaczka"    // Use your own favorite word!
        var favoriteColor = "blue"        // Use your own favorite color!
        var favoriteMusician = "Limp Bizkit"  // Use your own favorite musician!
        var age = 27
        var myAge = "My age is \(age)..."
        print(myAge)
        //lets print out our favourite things
        print(favoriteWord)
        print(favoriteColor)
        print(favoriteMusician)
        print("Hi Mom! My favorite word is serendipity, my favorite color is green, and my favorite musician is Billy Joel.")
        
        //combining variables with string
        print("The sky is \(favoriteColor).")
        
        //łączenie kilku zmiennych z printem
        print("Hi Mom! My favorite word is \(favoriteWord), my favorite color is \(favoriteColor), and my favorite musician is \(favoriteMusician).")
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
