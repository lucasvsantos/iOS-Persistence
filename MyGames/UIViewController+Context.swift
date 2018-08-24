//
//  UIViewController+Context.swift
//  MyGames
//
//  Created by Usuário Convidado on 24/08/2018.
//

import UIKit
import CoreData

extension UIViewController{
    var context: NSManagedObjectContext {
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
}
