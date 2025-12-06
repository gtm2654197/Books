//
//  ViewController.swift
//  Books
//
//  Created by Taylor McClamroch on 12/6/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var selectedBook: BookAuthor?
    
    var books =
    [
        BookAuthor("The Hobbit", "J.R.R. Tolkien", "hobbit"),
        BookAuthor("Dearly Devoted Dexter", "Jeff Lindsay", "dexter"),
        BookAuthor("All Quiet on the Western Front", "Erich Maria Remarque", "westernfront"),
        BookAuthor("East of Eden", "John Steinbeck", "eden"),
        BookAuthor("For We Are Many", "Dennis E. Taylor", "bobiverse"),
        BookAuthor("Fight Club", "Chuck Palahniuk", "fightclub"),
        BookAuthor("The Art of War", "Sun Tzu", "war"),
        BookAuthor("Dispatches from Pluto", "Richard Grant", "pluto"),
        BookAuthor("The House of Wisdom", "Jonathan Lyons", "wisdom"),
        BookAuthor("When China Ruled the Seas", "Louise Levathes", "china")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = books[indexPath.row].book
        content.secondaryText = books[indexPath.row].author
        cell.contentConfiguration = content
        return cell
        
    }
    
    internal func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        selectedBook = books[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "toDetails", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetails" {
            if let destinationVC = segue.destination as? SecondViewController
            {
                destinationVC.book = selectedBook
            }
        }
    }

}

