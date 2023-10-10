
import UIKit

class sectionViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
   
    
    

    @IBOutlet weak var tb : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tb.dataSource = self
        tb.delegate = self
    }
    var arrSection = ["section 1","section 2","section 3"]
    var arrRow = [["1","2"],["a","b","c"],["@","!"]]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSection.count //1 2 3
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRow[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cellName", for:  indexPath)
        cell.textLabel?.text = arrRow[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrSection[section]
    }


}
