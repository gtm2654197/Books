//
//  SecondViewController.swift
//  Books
//
//  Created by Taylor McClamroch on 12/6/25.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bookLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    
    var book: BookAuthor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bookLabel.text = book?.book
        authorLabel.text = book?.author
        bookImage.image = UIImage(named: book?.imageName ?? "")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
