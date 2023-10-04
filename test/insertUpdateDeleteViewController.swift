import UIKit

class insertUpdateDeleteViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource{
    
    

    @IBOutlet weak var tb: UITableView!
    @IBOutlet weak var mytext: UITextField!
    var arr = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tb.delegate = self
        tb.dataSource = self
        
        arr.append("a")
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cellName",for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arr.swapAt(sourceIndexPath.row
                   , destinationIndexPath.row)
    }
    
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? 
    {
        let deletAction =  UIContextualAction(style: .destructive, title: "حـذف")
        {
            action, view, completionHandeler in
            
            self.arr.remove(at: indexPath.row)
            self.tb.beginUpdates()
            self.tb.deleteRows(at: [indexPath], with: .automatic)
            self.tb.endUpdates()
            
            completionHandeler(true)
        }
        
        let actionfav = UIContextualAction(style: .normal, title: "") { _, _, _ in
            print("add to favrote")
        }
        
        actionfav.image = UIImage(systemName: "heart")
        actionfav.backgroundColor = UIColor.gray
      
        
        return UISwipeActionsConfiguration(actions: [deletAction,actionfav])
     
        
    }
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let actionfav1 = UIContextualAction(style: .normal, title: "تعديل") { _, _, _ in
            print("add to favrote1")
        }
        return UISwipeActionsConfiguration(actions: [actionfav1])
    }
    
    
    
    
    @IBAction func btnAdd(_ sender: Any) {
        if let text = mytext.text {
            arr.append(text)
            let indpath = IndexPath(row: arr.count - 1, section: 0)
            print("indpath is : \(indpath)")
            tb.beginUpdates()
            tb.insertRows(at: [indpath], with: .automatic)
            tb.endUpdates()
        }
    }
    
    @IBAction func btnEdit(_ sender: Any) {
        tb.isEditing = !tb.isEditing
    }
    
}
