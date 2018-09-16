

import Foundation
import CoreData

class Todo {
    
    var List = [NSDictionary]()
    
    //書き込み
    func create(title: String) {
        
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let manageContext = appDelegate.persistentContainer.viewContext
        
        let todo = NSEntityDescription.entity(forEntityName: "Todo", in: manageContext)
        
        let newRecord = NSManagedObject(entity: todo!, insertInto: manageContext)
        
        //レコードに値を設定
        newRecord.setValue(title, forKey: "title")
        newRecord.setValue(Date(), forKey: "date")
        
        do {
            try manageContext.save()
        } catch {
            print("error", error)
        }
    }
    
    //全て取得
    
    //一件取得
    
    //更新
    
    //削除
}
