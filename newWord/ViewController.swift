//
//  ViewController.swift
//  newWord
//
//  Created by 이동기 on 2022/07/08.
//

import UIKit

class ViewController: UIViewController {

    var newlyCoinedWordDic: [String:String] = [
        "삼귀자":"연애를 시작하기 전 썸단계!",
        "윰차":"구독자가 많은사람과 적은사람을 차별하는 것",
        "만반잘부":"만나서 반갑고 잘부탁해",
        "꾸안꾸":"꾸민듯 안꾸민듯 꾸민",
        "옴곰옾높":"폭풍눈물",
        "머선129":"무슨 일이야?",
        "무물보":"무엇이든 물어보세요",
        "반모":"반말모드",
        "킹리적갓심":"합리적인 의심",
        // 여러 줄 출력되는지 확인용
        // 두 줄 이상일 때도 가운데로 오게하는 방법은 없을까?
        "룰루" : "ㅁㅈㄹ대;ㅕㅑㅁㅈㄷㄹ;ㅐㅑㅈㄷ랮먀;덜매;ㅈ댜ㅓ램ㅈ댜ㅓ램ㅈ댜ㅓ해ㅑ덪ㄱ해ㅑㄷ검해ㅑㅓㄷㄱ매햐ㅓㄷ개ㅑ헏개ㅑ헏갸ㅐ허ㅐ댝허ㅑㅐㄷ겋"
    ]
    
    @IBOutlet weak var searchWordTextField: UITextField!
    
    @IBOutlet weak var searchBtn: UIButton!
    
//      이거 배열로는 선언 안되는건가??
//      그리고 버튼 여러개 그룹으로 지정해서 변수로만들어서 그룹 전체에 속성은 못주는 건가?
    @IBOutlet weak var firstHashTagBtn: UIButton!
    @IBOutlet weak var secondHashTagBtn: UIButton!
    @IBOutlet weak var thirdHashTagBtn: UIButton!
    @IBOutlet weak var fourthHashTagBtn: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchWordTextFieldSetting(borderWidth: 2)
        searchBtnSet(btnColor: UIColor.white, bgdColor: UIColor.black)
        
        hashTagBtnGroupSet(borderWidth: 0.9)
        
        
        
        // 키 값만 랜덤으로 못뽑아내나? 타입이 안 맞아서 그런건가???
        
    }

    func searchWordTextFieldSetting(borderWidth: CGFloat ) {
        searchWordTextField.layer.borderWidth = borderWidth
        searchWordTextField.placeholder = "단어를 입력해주세요"
    }
    
    func searchBtnSet(btnColor: UIColor, bgdColor: UIColor) {
        searchBtn.tintColor = btnColor
        searchBtn.backgroundColor = bgdColor
    }
    
    func hashTagBtnGroupSet(borderWidth: CGFloat) {
        
        // hashTagBtnGroup.layer.borderColor = UIColor.black.cgColor >> 외 않됨?
        firstHashTagBtn.layer.borderWidth = borderWidth
        secondHashTagBtn.layer.borderWidth = borderWidth
        thirdHashTagBtn.layer.borderWidth = borderWidth
        fourthHashTagBtn.layer.borderWidth = borderWidth
        
        firstHashTagBtn.layer.cornerRadius = 10
        firstHashTagBtn.clipsToBounds = true
        secondHashTagBtn.layer.cornerRadius = 10
        secondHashTagBtn.clipsToBounds = true
        thirdHashTagBtn.layer.cornerRadius = 10
        thirdHashTagBtn.clipsToBounds = true
        fourthHashTagBtn.layer.cornerRadius = 10
        fourthHashTagBtn.clipsToBounds = true
        
        firstHashTagBtn.setTitle("윰차", for: .normal)
        secondHashTagBtn.setTitle("무물보", for: .normal)
        thirdHashTagBtn.setTitle("만만잘부", for: .normal)
        fourthHashTagBtn.setTitle("꾸안꾸", for: .normal)
        
        firstHashTagBtn.setTitleColor(.black, for: .normal)
        secondHashTagBtn.setTitleColor(.black, for: .normal)
        thirdHashTagBtn.setTitleColor(.black, for: .normal)
        fourthHashTagBtn.setTitleColor(.black, for: .normal)
    }
    
    @IBAction func searchBtnClicked(_ sender: UIButton) {

//        왜 text는 String? 타입이라 !해주변 String 타입이 되는데 딕셔너리의 키값은 왜 안되는 걸까?
//        if searchWordTextField.text! == newlyCoinedWordDic.keys {
//            resultLabel.text! = newlyCoinedWordDic.values
//        }
        if searchWordTextField.text == "삼귀자" {
            resultLabel.text = newlyCoinedWordDic["삼귀자"]
        } else if searchWordTextField.text == "윰차" {
            resultLabel.text = newlyCoinedWordDic["구독자가 많은사람과 적은사람을 차별하는 것"]
        } else if searchWordTextField.text == "만반잘부" {
            resultLabel.text = newlyCoinedWordDic["만반잘부"]
        } else if searchWordTextField.text == "꾸안꾸" {
            resultLabel.text = newlyCoinedWordDic["꾸안꾸"]
        } else if searchWordTextField.text == "옴곡옾높" {
            resultLabel.text = newlyCoinedWordDic["옴곡옾높"]
        } else if searchWordTextField.text == "머선129" {
            resultLabel.text = newlyCoinedWordDic["무슨 일이야?"]
        } else if searchWordTextField.text == "무물보" {
            resultLabel.text = newlyCoinedWordDic["머선129"]
        } else if searchWordTextField.text == "반모" {
            resultLabel.text = newlyCoinedWordDic["반모"]
        } else if searchWordTextField.text == "킹리적갓심" {
            resultLabel.text = newlyCoinedWordDic["킹리적갓심"]
        } else if searchWordTextField.text == "룰루" {
            resultLabel.text = newlyCoinedWordDic["룰루"]
        } else {
            resultLabel.text = "그런 신조어는 모르겠는데요 ㅠ"
        }
    }
    
    @IBAction func firstHashTagBtnClicked(_ sender: Any) {
        resultLabel.text = newlyCoinedWordDic["윰차"]
    }
    @IBAction func secondHashTagBtnClicked(_ sender: Any) {
        resultLabel.text = newlyCoinedWordDic["무물보"]
    }
    @IBAction func thirdHashTagBtnClicked(_ sender: Any) {
        resultLabel.text = newlyCoinedWordDic["만반잘부"]
    }
    @IBAction func fourthHashTagBtnClicked(_ sender: Any) {
        resultLabel.text = newlyCoinedWordDic["꾸안꾸"]
    }
}

