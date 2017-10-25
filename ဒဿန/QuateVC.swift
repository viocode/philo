//
//  ViewController.swift
//  ဒဿန
//
//  Created by SteveWayne on 10/20/17.
//  Copyright © 2017 viocode. All rights reserved.
//

import UIKit

class QuateVC: UIViewController {
    
    @IBOutlet weak var bgView1: UIView!
    @IBOutlet weak var bgView2: UIView!
    @IBOutlet weak var bgView3: UIView!
    @IBOutlet weak var quatesLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    @IBAction func pressedButton(_ sender: UIButton) {
    //Call quate Bank function
        randomQuate()
    //Background 3View
        bgView1.backgroundColor = randomcolor()
        bgView2.backgroundColor = randomcolor()
        bgView3.backgroundColor = randomcolor()
    }
    //RandomColor
   func randomcolor() -> UIColor {
        let _red:CGFloat = CGFloat(arc4random_uniform(UInt32(252.0)))
        let _green:CGFloat = CGFloat(arc4random_uniform(UInt32(252.0)))
        let _blue:CGFloat = CGFloat(arc4random_uniform(UInt32(252.0)))
    return UIColor(displayP3Red: CGFloat(_red / 252.0), green: CGFloat( _green / 252.0), blue: CGFloat(_blue / 252.0), alpha: 0.8)
    }
    //Random quates Bank
    func randomQuate(){
        
        let quatesRandom = Int(arc4random_uniform(10) + 1)
        switch quatesRandom {
        case 1:
            quatesLabel.text = "ကမ္ဘာပေါ်တွင် ချစ်ချင်သူများထက် အချစ်ခံချင်သူများက ပိုမိုများပြားပေသည်။"
            authorLabel.text = "နီကိုလာ ချမ်ဖို့ဒ်(၁၇၄၁-၁၇၉၄) ပြင်သစ်စာရေးဆရာ"
        case 2:
            quatesLabel.text = "ပျော်ရွှင်မူဆိုသည်မှာ ပျော်ရွှင်နေစေရန် ကြိုးစားမနေရခြင်းဖြစ်ပေသည်။"
            authorLabel.text = "ရှောင်ဇူး (၃၆၉ - ၂၈၆ ဘီစီ) တရုတ်အတွေးအခေါ်ပညာရှင်"
        case 3:
            quatesLabel.text = "တစ်ခုတည်းသော စစ်မှန်သည့် အသိပညာမှာ သင်မသိခြင်းကိုသိနေခြင်းဖြစ်သည်။"
            authorLabel.text = "ဆိုခရေးတီး (၄၆၉-၃၉၉ ဘီစီ) ဂရိ အတွေးအခေါ်ပညာရှင်"
        case 4:
            quatesLabel.text = "မည်သူမျှ အနားတွင် မရှိပဲ သင်ပြုံးပါက သင် အမှန်တကယ် ပြုံးနေခြင်း ဖြစ်သည်။"
            authorLabel.text = "အန်ဒီ ရူးနီ(၁၉၁၉-၂၀၁၁)အမေရိကန် ဂျာနယ်လစ်"
        case 5:
            quatesLabel.text = "သင်တွေးသမျှ ပြောသမျှ လုပ်သမျှတို့ သဟဇာတဖြစ်သည့်အခါ ၎င်းသည် ပျော်ရွှင်မှုပင်ဖြစ်သည်။"
            authorLabel.text = "မဟတ္တမဂန္ဒီ"
        case 6:
            quatesLabel.text = "စမှတ်ကိုရောက်ပေမဲ့ မနေ့ကအချိန်မဟုတ်တော့ဘူး "
            authorLabel.text = "နည်းစနစ်ကျကျအတွေးအခေါ်"
        case 7:
            quatesLabel.text = "ရွှေဒင်္ဂါးပြားကအသံမြည်တယ် ငွေစက္ကူ ကအသံမမြည်ဘူး ဒါကြောင့်သင်တန်ဖိုးပိုမြင့်လာရင် တိတ်တိတ်နေပါ "
            authorLabel.text = "ရိူတ်စပီးယား"
        case 8:
            quatesLabel.text = "သူများကို ဘာလုပ်ပြီးပြီးလည်း မေးမယ့်အစား ..ကိုယ် ဘာလုပ်ပြီးပြီးလည်း အရင် ပြန်မေးကြည့်ပါ။"
            authorLabel.text = "ဒေါ်အောင်ဆန်းစုကြည်"
        case 9:
            quatesLabel.text = "လရောင် မျှော်နေတာထက်စာရင်လက်ထဲက ဖယောင်းတိုင်ကို မီးညှိလိုက်တာ ပိုကောင်းတယ်..။"
            authorLabel.text = "အလင်းဖြိုး"
        case 10:
            quatesLabel.text = "အမှားတွေ ဟာ အတွေ့အကြုံကို တိုးလာစေတယ်...အတွေ့အကြုံတွေ ကတော့ အမှားတွေကို လျော့နည်းလာစေတယ်.."
            authorLabel.text = "ရွှေညာမောင်"
        default:
            quatesLabel.text = nil
            authorLabel.text = nil
        }
    }
    
}
