import UIKit

protocol YNActionSheetDelegate{
    func buttonClick(index:Int)
}

class YNActionSheet: UIViewController {
    
    var layview:UIView!
    var width:CGFloat!
    var height:CGFloat!
    var CancelButton : UIButton!    //取消按钮
    var delegate :YNActionSheetDelegate!
    var btnArray = [UIButton()]
    let buttonHeight:CGFloat = 40
    
    init(){
        super.init(nibName: nil, bundle: nil)
        self.width = self.view.bounds.size.width
        self.height = self.view.bounds.size.height
        self.modalPresentationStyle = UIModalPresentationStyle.OverFullScreen
        self.view.backgroundColor = UIColor.clearColor()
        var tap = UITapGestureRecognizer(target: self, action: "tap")
        self.view.addGestureRecognizer(tap)
        
        btnArray = Array()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /**
    下来菜单消失
    */
    func tap(){
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /**
    *  添加一个取消按钮
    */
    func addCancelButtonWithTitle(Title:String){
        if(layview == nil){
            layview = UIView(frame: CGRectMake(width*0.1,height - ( (CGFloat)(btnArray.count) * self.buttonHeight + self.buttonHeight + 30), width*0.8, (CGFloat)(btnArray.count)*self.buttonHeight+self.buttonHeight + 20))
            layview.layer.cornerRadius = 5
            layview.layer.masksToBounds = true
            layview.alpha = 0.8
            self.view.addSubview(layview)
        }else{
            var nowHeight = self.layview.bounds.size.height
            nowHeight += 50
            layview.frame = CGRectMake(width * 0.1, height - nowHeight, width*0.8, nowHeight)
        }
        
        if(CancelButton == nil){
            CancelButton = UIButton(frame: CGRectMake((CGFloat)(0), (CGFloat)(buttonHeight * (CGFloat)(btnArray.count)+10), width*0.8, buttonHeight))
            CancelButton.setTitle(Title, forState: UIControlState.Normal)
            CancelButton.layer.cornerRadius = 5
            CancelButton.layer.masksToBounds = true
            CancelButton.backgroundColor = UIColor.brownColor()
            CancelButton.addTarget(self, action: "tap", forControlEvents: UIControlEvents.TouchUpInside)
            self.layview.addSubview(CancelButton)
        }
        
    }
    /**
    *  添加按钮
    */
    func addButtonWithTitle(Title:String){
        if(layview == nil){
            layview = UIView(frame: CGRectMake(width*0.1,height - (self.buttonHeight + 10), width*0.8, self.buttonHeight + 20))
            layview.layer.cornerRadius = 5
            layview.layer.masksToBounds = true
            layview.alpha = 0.8
            self.view.addSubview(layview)
        }else{
            var nowHeight = self.layview.bounds.size.height
            nowHeight += 40
            layview.frame = CGRectMake(width * 0.1, height - nowHeight, width*0.8, nowHeight)
        }
        var btn = UIButton(frame: CGRectMake(0, (CGFloat)(btnArray.count)*buttonHeight, width * 0.8, buttonHeight - 1))
        btn.tag = btnArray.count
        btn.addTarget(self, action: "buttonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        btn.backgroundColor = UIColor(red: 52/255, green: 170/255, blue: 135/255, alpha: 1)
        btn.setTitle(Title, forState: UIControlState.Normal)
        layview.addSubview(btn)
        btnArray.append(btn)
        
        if(CancelButton != nil){
            var CancelY = CancelButton.frame.origin.y
            CancelButton.frame = CGRectMake(0, CancelY + buttonHeight, width*0.8, buttonHeight)
        }
    }
    /**
    点击按钮产生事件
    */
    func buttonClick(sender:AnyObject){
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
        var btn = sender as! UIButton
        delegate.buttonClick(btn.tag)
    }
    
    
}
