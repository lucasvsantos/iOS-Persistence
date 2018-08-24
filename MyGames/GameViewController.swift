//
//  GameViewController.swift
//  MyGames
//
//  Created by Usuário Convidado on 24/08/2018.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfConsole: UITextField!
    @IBOutlet weak var btAddEdit: UIButton!
    
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if game != nil {
            tfName.text = game.name
            tfConsole.text = game.console
            btAddEdit.setTitle("Editar game", for: .normal)
        }
    }
    
    @IBAction func addEditGame(_ sender: Any) {
        if game == nil {
            game = Game(context: context)
        }
        
        game.name = tfName.text
        game.console = tfConsole.text
        try? context.save()
        
        navigationController?.popViewController(animated: true)
    }
    
}
