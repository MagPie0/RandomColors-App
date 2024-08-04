//
//  ColorsTableViewController.swift
//  RandomColors
//
//  Created by Maggie Hillebrecht on 8/3/24.
//

import UIKit

class ColorsTableViewController: UIViewController {
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddRandomColors()
        // Do any additional setup after loading the view.
        //kind of like on start func in unity
    }
    
    func AddRandomColors() {
        for _ in 0..<50 {
            colors.append(.Random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorsDetailViewController //gets access to color in the colorsdetailvc script
        destinationVC.color = sender as? UIColor
    }
}

extension ColorsTableViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count //50 colors
        //returns an int of how many rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //guard unwrapping
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        //cell reuse is what populates whatever is on screen, uses what is being shown
        
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
        //delage waits until something happens and runs the function
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row] //get the color user tapped
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}
