//
//  ViewController.swift
//  NineBallTracker
//
//  Created by skwong on 12/2/17.
//  Copyright © 2017 skwong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player1Score = 0
    var player2Score = 0
    var deadBall = 0
    var player1RunningScore = 0
    var player2RUnningScore = 0
    var deadBallRunningScore = 0
    


    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var deadBallScore: UILabel!
    @IBOutlet weak var ballCount: UILabel!
    
    @IBOutlet weak var p1_1: UILabel!
    @IBOutlet weak var p2_1: UILabel!
    @IBOutlet weak var d_1: UILabel!
    
    @IBOutlet weak var p1_2: UILabel!
    @IBOutlet weak var p2_2: UILabel!
    @IBOutlet weak var d_2: UILabel!
    
    @IBOutlet weak var p1_3: UILabel!
    @IBOutlet weak var p2_3: UILabel!
    @IBOutlet weak var d_3: UILabel!
    
    @IBOutlet weak var p1_4: UILabel!
    @IBOutlet weak var p2_4: UILabel!
    @IBOutlet weak var d_4: UILabel!
    
    @IBOutlet weak var p1_5: UILabel!
    @IBOutlet weak var p2_5: UILabel!
    @IBOutlet weak var d_5: UILabel!
    
    @IBOutlet weak var p1_6: UILabel!
    @IBOutlet weak var p2_6: UILabel!
    @IBOutlet weak var d_6: UILabel!
    
    @IBOutlet weak var p1_7: UILabel!
    @IBOutlet weak var p2_7: UILabel!
    @IBOutlet weak var d_7: UILabel!
    
    @IBOutlet weak var p1_8: UILabel!
    @IBOutlet weak var p2_8: UILabel!
    @IBOutlet weak var d_8: UILabel!
    
    @IBOutlet weak var p1_9: UILabel!
    @IBOutlet weak var p2_9: UILabel!
    @IBOutlet weak var d_9: UILabel!
    
    @IBOutlet weak var p1_10: UILabel!
    @IBOutlet weak var p2_10: UILabel!
    @IBOutlet weak var d_10: UILabel!
    
    
    @IBOutlet weak var game1: UILabel!
    @IBOutlet weak var game2: UILabel!
    @IBOutlet weak var game3: UILabel!
    @IBOutlet weak var game4: UILabel!
    @IBOutlet weak var game5: UILabel!
    @IBOutlet weak var game6: UILabel!
    @IBOutlet weak var game7: UILabel!
    @IBOutlet weak var game8: UILabel!
    @IBOutlet weak var game9: UILabel!
    @IBOutlet weak var game10: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game1.backgroundColor = UIColor.magenta
        game2.isHidden = true
        game3.isHidden = true
        game4.isHidden = true
        game5.isHidden = true
        game6.isHidden = true
        game7.isHidden = true
        game8.isHidden = true
        game9.isHidden = true
        game10.isHidden = true
    }

    
    @IBAction func player1BtnPressed(_ sender: Any)
    {
        player1Score = player1Score + 1
        score1.text = "\(player1Score)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"
        
        scoring()


    }
    
    
    
    @IBAction func player2BtnPressed(_ sender: Any)
    {
        player2Score = player2Score + 1
        score2.text = "\(player2Score)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"

        scoring()

        
    }

    @IBAction func deadBallBtnPressed(_ sender: Any)
    {
        deadBall = deadBall + 1
        deadBallScore.text = "\(deadBall)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"
        
        scoring()
        

    }
    

    
    func scoring()
    {
        if (player1Score + deadBall + player2Score) == 11
        {
            game2.backgroundColor = UIColor.magenta
            game2.isHidden = false
            game1.backgroundColor = UIColor.clear
            
            p1_1.text = "\(player1Score)"
            p2_1.text = "\(player2Score)"
            d_1.text = "\(deadBall)"
        }
        
        if (player1Score + deadBall + player2Score) == 22
        {
            game3.backgroundColor = UIColor.magenta
            game3.isHidden = false
            game2.backgroundColor = UIColor.clear
            
            p1_2.text = "\(player1Score - Int(p1_1.text!)!)"
            p2_2.text = "\(player2Score - Int(p2_1.text!)!)"
            d_2.text = "\(deadBall - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 33
        {
            game4.backgroundColor = UIColor.magenta
            game4.isHidden = false
            game3.backgroundColor = UIColor.clear
            
            p1_3.text = "\(player1Score - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_3.text = "\(player2Score - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_3.text = "\(deadBall - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 44
        {
            game5.backgroundColor = UIColor.magenta
            game5.isHidden = false
            game4.backgroundColor = UIColor.clear
            
            p1_4.text = "\(player1Score - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_4.text = "\(player2Score - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_4.text = "\(deadBall - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 55
        {
            game6.backgroundColor = UIColor.magenta
            game6.isHidden = false
            game5.backgroundColor = UIColor.clear
            
            p1_5.text = "\(player1Score - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_5.text = "\(player2Score - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_5.text = "\(deadBall - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 66
        {
            game7.backgroundColor = UIColor.magenta
            game7.isHidden = false
            game6.backgroundColor = UIColor.clear
            
            p1_6.text = "\(player1Score - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_6.text = "\(player2Score - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_6.text = "\(deadBall - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 77
        {
            game8.backgroundColor = UIColor.magenta
            game8.isHidden = false
            game7.backgroundColor = UIColor.clear
            
            p1_7.text = "\(player1Score - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_7.text = "\(player2Score - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_7.text = "\(deadBall - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)! )"
        }
        
        if (player1Score + deadBall + player2Score) == 88
        {
            game9.backgroundColor = UIColor.magenta
            game9.isHidden = false
            game8.backgroundColor = UIColor.clear
            
            p1_8.text = "\(player1Score - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_8.text = "\(player2Score - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_8.text = "\(deadBall - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 99
        {
            game10.backgroundColor = UIColor.magenta
            game10.isHidden = false
            game9.backgroundColor = UIColor.clear
            
            p1_9.text = "\(player1Score - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_9.text = "\(player2Score - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_9.text = "\(deadBall - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 110
        {
            
            p1_10.text = "\(player1Score - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_10.text = "\(player2Score - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_10.text = "\(deadBall - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        
    }
    
    //    func resetScore()
    //    {
    //        player1Score = 0
    //        player2Score = 0
    //        deadBall = 0
    //    }

}


