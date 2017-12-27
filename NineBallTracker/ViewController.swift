//
//  ViewController.swift
//  NineBallTracker
//
//  Created by skwong on 12/2/17.
//  Copyright © 2017 skwong. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var p1SkillLevel = ""
    var p2SkillLevel = ""
    var p1Name = ""
    var p2Name = ""
    
    var player1Score = 0
    var player2Score = 0
    var deadBall = 0
    var player1RunningScore = 0
    var player2RUnningScore = 0
    var deadBallRunningScore = 0
    
    var loserScore = 0
    var loserSkillLevel = 0
    
    @IBOutlet weak var p1NameLabel: UILabel!
    @IBOutlet weak var p2NameLabel: UILabel!
    
    
    @IBOutlet weak var skillLevelLabelp1: UILabel!
    @IBOutlet weak var skillLevelLabelp2: UILabel!
//    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var winnerNameLabel: UILabel!
    @IBOutlet weak var finalScoreLabel: UILabel!
    

    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var deadBallScore: UILabel!
    @IBOutlet weak var ballCount: UILabel!
    
    @IBOutlet weak var p1Remainder: UILabel!
    @IBOutlet weak var p2Remainder: UILabel!
    
    @IBOutlet weak var player1Btn: UIButton!
    @IBOutlet weak var player1SubtractBtn: UIButton!
    @IBOutlet weak var player2Btn: UIButton!
    @IBOutlet weak var player2SubtractBtn: UIButton!
    @IBOutlet weak var deadBallBtn: UIButton!
    @IBOutlet weak var deadBallSubtractBtn: UIButton!
    
    @IBOutlet weak var nameLabel1: UILabel!
    @IBOutlet weak var nameLabel2: UILabel!
    
    
    
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
    
    @IBOutlet weak var p1_11: UILabel!
    @IBOutlet weak var p2_11: UILabel!
    @IBOutlet weak var d_11: UILabel!
    
    @IBOutlet weak var p1_12: UILabel!
    @IBOutlet weak var p2_12: UILabel!
    @IBOutlet weak var d_12: UILabel!
    
    @IBOutlet weak var p1_13: UILabel!
    @IBOutlet weak var p2_13: UILabel!
    @IBOutlet weak var d_13: UILabel!
    
    @IBOutlet weak var p1_14: UILabel!
    @IBOutlet weak var p2_14: UILabel!
    @IBOutlet weak var d_14: UILabel!
    
    
    
    
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
    @IBOutlet weak var game11: UILabel!
    @IBOutlet weak var game12: UILabel!
    @IBOutlet weak var game13: UILabel!
    @IBOutlet weak var game14: UILabel!
    
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetScore()
        
        

        skillLevelLabelp1.text = p1SkillLevel
        skillLevelLabelp2.text = p2SkillLevel
       
        p1NameLabel.text = p1Name
        p2NameLabel.text = p2Name
        nameLabel1.text = p1Name
        nameLabel2.text = p2Name
        
        ballAmount()
        
       
       
    
    }

    
    @IBAction func player1BtnPressed(_ sender: Any)
    {
        player1Score = player1Score + 1
        score1.text = "\(player1Score)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"
        
        scoring()
        updateScore()
        skillLevelReached()
        remainder()
        playSound(soundFileName: "ballSunk")
        
        


    }
    
    @IBAction func player1Subtract(_ sender: Any)
    {
        player1Score = player1Score - 1
        score1.text = "\(player1Score)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"
        
        
        updateScore()
        remainder()
        
    }
    
    
    
    
    @IBAction func player2BtnPressed(_ sender: Any)
    {
        player2Score = player2Score + 1
        score2.text = "\(player2Score)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"

        scoring()
        updateScore()
        skillLevelReached()
        remainder()
        playSound(soundFileName: "ballSunk")
        
    }
    
    @IBAction func player2Subtract(_ sender: Any)
    {
        player2Score = player2Score - 1
        score2.text = "\(player2Score)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"
        
        updateScore()
        remainder()
        
    }
    

    @IBAction func deadBallBtnPressed(_ sender: Any)
    {
        deadBall = deadBall + 1
        deadBallScore.text = "\(deadBall)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"
        
        scoring()
        updateScore()
        
        

    }
    
    @IBAction func deadBallSubtract(_ sender: Any)
    {
        deadBall = deadBall - 1
        deadBallScore.text = "\(deadBall)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"
        
      updateScore()
        
        
    }
    
    @IBAction func newGameBtnPressed(_ sender: UIButton)
    {
        resetScore()
        performSegue(withIdentifier: "firstVC", sender: self)
    }
    

    
    func scoring()
    {
        
        
       
        
        if (player1Score + deadBall + player2Score) == 11

        {

            game2.isHidden = false
            
            p1_1.text = "\(player1Score)"
            p2_1.text = "\(player2Score)"
            d_1.text = "\(deadBall)"
        }
        
        
        if (player1Score + deadBall + player2Score) == 22
        {
            game3.isHidden = false
            
            p1_2.text = "\(player1Score - Int(p1_1.text!)!)"
            p2_2.text = "\(player2Score - Int(p2_1.text!)!)"
            d_2.text = "\(deadBall - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 33
        {
            game4.isHidden = false
            
            p1_3.text = "\(player1Score - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_3.text = "\(player2Score - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_3.text = "\(deadBall - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 44
        {
            game5.isHidden = false

            p1_4.text = "\(player1Score - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_4.text = "\(player2Score - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_4.text = "\(deadBall - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 55
        {
            game6.isHidden = false
            
            p1_5.text = "\(player1Score - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_5.text = "\(player2Score - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_5.text = "\(deadBall - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 66
        {
            game7.isHidden = false

            p1_6.text = "\(player1Score - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_6.text = "\(player2Score - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_6.text = "\(deadBall - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 77
        {
            game8.isHidden = false
            
            p1_7.text = "\(player1Score - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_7.text = "\(player2Score - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_7.text = "\(deadBall - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)! )"
        }
        
        if (player1Score + deadBall + player2Score) == 88
        {
            game9.isHidden = false
            
            p1_8.text = "\(player1Score - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_8.text = "\(player2Score - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_8.text = "\(deadBall - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 99
        {
            game10.isHidden = false
            
            p1_9.text = "\(player1Score - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_9.text = "\(player2Score - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_9.text = "\(deadBall - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 110
        {
            game11.isHidden = false
            
            p1_10.text = "\(player1Score - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_10.text = "\(player2Score - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_10.text = "\(deadBall - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 121
        {
            game12.isHidden = false
            
            p1_11.text = "\(player1Score - Int(p1_10.text!)! - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_11.text = "\(player2Score - Int(p2_10.text!)! - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_11.text = "\(deadBall - Int(d_10.text!)! - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 132
        {
            game13.isHidden = false
            p1_12.text = "\(player1Score - Int(p1_11.text!)! - Int(p1_10.text!)! - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_12.text = "\(player2Score - Int(p2_11.text!)! - Int(p2_10.text!)! - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_12.text = "\(deadBall - Int(d_11.text!)! - Int(d_10.text!)! - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 143
        {
            
            game14.isHidden = false
            
            p1_13.text = "\(player1Score - Int(p1_12.text!)! - Int(p1_11.text!)! - Int(p1_10.text!)! - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_13.text = "\(player2Score - Int(p2_12.text!)! - Int(p2_11.text!)! - Int(p2_10.text!)! - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_13.text = "\(deadBall - Int(d_12.text!)! - Int(d_11.text!)! - Int(d_10.text!)! - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        if (player1Score + deadBall + player2Score) == 154
        {
            
            p1_14.text = "\(player1Score - Int(p1_13.text!)! - Int(p1_12.text!)! - Int(p1_11.text!)! - Int(p1_10.text!)! - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_14.text = "\(player2Score - Int(p2_13.text!)! - Int(p2_12.text!)! - Int(p2_11.text!)! - Int(p2_10.text!)! - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_14.text = "\(deadBall - Int(d_13.text!)! - Int(d_12.text!)! - Int(d_11.text!)! - Int(d_10.text!)! - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
        }
        
        
    }
    
    
    func updateScore()

    {
        if Int(ballCount.text!)! < 11
        {
            
            p1_1.text = "\(player1Score)"
            p2_1.text = "\(player2Score)"
            d_1.text = "\(deadBall)"
            
            game1.backgroundColor = UIColor.magenta
            game2.backgroundColor = UIColor.clear

            
            
            
        }

        if (Int(ballCount.text!)! >= 11) && (Int(ballCount.text!)! < 22)
        {
            p1_2.text = "\(player1Score - Int(p1_1.text!)!)"
            p2_2.text = "\(player2Score - Int(p2_1.text!)!)"
            d_2.text = "\(deadBall - Int(d_1.text!)!)"
            
            game3.backgroundColor = UIColor.clear
            game2.backgroundColor = UIColor.magenta
            game1.backgroundColor = UIColor.clear
            
            
        }
        
        if (Int(ballCount.text!)! >= 22) && (Int(ballCount.text!)! < 33)
        {
            p1_3.text = "\(player1Score - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_3.text = "\(player2Score - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_3.text = "\(deadBall - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            game4.backgroundColor = UIColor.clear
            game3.backgroundColor = UIColor.magenta
            game2.backgroundColor = UIColor.clear
           
            
        }
        
        if (Int(ballCount.text!)! >= 33) && (Int(ballCount.text!)! < 44)
        {
            p1_4.text = "\(player1Score - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_4.text = "\(player2Score - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_4.text = "\(deadBall - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            game5.backgroundColor = UIColor.clear
            game4.backgroundColor = UIColor.magenta
            game3.backgroundColor = UIColor.clear
        }
        
        if (Int(ballCount.text!)! >= 44) && (Int(ballCount.text!)! < 55)
        {
            p1_5.text = "\(player1Score - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_5.text = "\(player2Score - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_5.text = "\(deadBall - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            game6.backgroundColor = UIColor.clear
            game5.backgroundColor = UIColor.magenta
            game4.backgroundColor = UIColor.clear
        }
        
        if (Int(ballCount.text!)! >= 55) && (Int(ballCount.text!)! < 66)
        {
            p1_6.text = "\(player1Score - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_6.text = "\(player2Score - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_6.text = "\(deadBall - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            game7.backgroundColor = UIColor.clear
            game6.backgroundColor = UIColor.magenta
            game5.backgroundColor = UIColor.clear
        }
        
        if (Int(ballCount.text!)! >= 66) && (Int(ballCount.text!)! < 77)
        {
            p1_7.text = "\(player1Score - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_7.text = "\(player2Score - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_7.text = "\(deadBall - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)! )"
            
            game8.backgroundColor = UIColor.clear
            game7.backgroundColor = UIColor.magenta
            game6.backgroundColor = UIColor.clear
        }
        
        if (Int(ballCount.text!)! >= 77) && (Int(ballCount.text!)! < 88)
        {
            p1_8.text = "\(player1Score - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_8.text = "\(player2Score - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_8.text = "\(deadBall - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            game9.backgroundColor = UIColor.clear
            game8.backgroundColor = UIColor.magenta
            game7.backgroundColor = UIColor.clear
        }
        
        if (Int(ballCount.text!)! >= 88) && (Int(ballCount.text!)! < 99)
        {
            p1_9.text = "\(player1Score - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_9.text = "\(player2Score - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_9.text = "\(deadBall - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            game10.backgroundColor = UIColor.clear
            game9.backgroundColor = UIColor.magenta
            game8.backgroundColor = UIColor.clear
        }
        
        if (Int(ballCount.text!)! >= 99) && (Int(ballCount.text!)! < 110)
        {
            p1_10.text = "\(player1Score - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_10.text = "\(player2Score - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_10.text = "\(deadBall - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            game11.backgroundColor = UIColor.clear
            game10.backgroundColor = UIColor.magenta
            game9.backgroundColor = UIColor.clear
        }
        
        if (Int(ballCount.text!)! >= 110) && (Int(ballCount.text!)! < 121)
        {
            p1_11.text = "\(player1Score - Int(p1_10.text!)! - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_11.text = "\(player2Score - Int(p2_10.text!)! - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_11.text = "\(deadBall - Int(d_10.text!)! - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            
            game12.backgroundColor = UIColor.clear
            game11.backgroundColor = UIColor.magenta
            game10.backgroundColor = UIColor.clear
        }
        
        if (Int(ballCount.text!)! >= 121) && (Int(ballCount.text!)! < 132)
        {
            p1_12.text = "\(player1Score - Int(p1_11.text!)! - Int(p1_10.text!)! - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_12.text = "\(player2Score - Int(p2_11.text!)! - Int(p2_10.text!)! - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_12.text = "\(deadBall - Int(d_11.text!)! - Int(d_10.text!)! - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            
            game13.backgroundColor = UIColor.clear
            game12.backgroundColor = UIColor.magenta
            game11.backgroundColor = UIColor.clear
        }
        
        if (Int(ballCount.text!)! >= 132) && (Int(ballCount.text!)! < 143)
        {
            p1_13.text = "\(player1Score - Int(p1_12.text!)! - Int(p1_11.text!)! - Int(p1_10.text!)! - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_13.text = "\(player2Score - Int(p2_12.text!)! - Int(p2_11.text!)! - Int(p2_10.text!)! - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_13.text = "\(deadBall - Int(d_12.text!)! - Int(d_11.text!)! - Int(d_10.text!)! - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            
            game14.backgroundColor = UIColor.clear
            game13.backgroundColor = UIColor.magenta
            game12.backgroundColor = UIColor.clear
        }
        
        if (Int(ballCount.text!)! >= 143) && (Int(ballCount.text!)! < 154)
        {
            p1_14.text = "\(player1Score - Int(p1_13.text!)! - Int(p1_12.text!)! - Int(p1_11.text!)! - Int(p1_10.text!)! - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_14.text = "\(player2Score - Int(p2_13.text!)! - Int(p2_12.text!)! - Int(p2_11.text!)! - Int(p2_10.text!)! - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_14.text = "\(deadBall - Int(d_13.text!)! - Int(d_12.text!)! - Int(d_11.text!)! - Int(d_10.text!)! - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
            
            
            game14.backgroundColor = UIColor.magenta
            game13.backgroundColor = UIColor.clear
        }
        
        

    }

    func resetScore()
    {
        
        
        player1Score = 0
        player2Score = 0
        deadBall = 0
        ballCount.text = ""
        
        p1_1.text = ""
        p1_2.text = ""
        p1_3.text = ""
        p1_4.text = ""
        p1_5.text = ""
        p1_6.text = ""
        p1_7.text = ""
        p1_8.text = ""
        p1_9.text = ""
        p1_10.text = ""
        p1_11.text = ""
        p1_12.text = ""
        p1_13.text = ""
        p1_14.text = ""
        
        p2_1.text = ""
        p2_2.text = ""
        p2_3.text = ""
        p2_4.text = ""
        p2_5.text = ""
        p2_6.text = ""
        p2_7.text = ""
        p2_8.text = ""
        p2_9.text = ""
        p2_10.text = ""
        p2_11.text = ""
        p2_12.text = ""
        p2_13.text = ""
        p2_13.text = ""
        p2_14.text = ""
        
        d_1.text = ""
        d_2.text = ""
        d_3.text = ""
        d_4.text = ""
        d_5.text = ""
        d_6.text = ""
        d_7.text = ""
        d_8.text = ""
        d_9.text = ""
        d_10.text = ""
        d_11.text = ""
        d_12.text = ""
        d_13.text = ""
        d_14.text = ""
        

        game2.isHidden = true
        game3.isHidden = true
        game4.isHidden = true
        game5.isHidden = true
        game6.isHidden = true
        game7.isHidden = true
        game8.isHidden = true
        game9.isHidden = true
        game10.isHidden = true
        game11.isHidden = true
        game12.isHidden = true
        game13.isHidden = true
        game14.isHidden = true
        

        winnerNameLabel.isHidden = true
        finalScoreLabel.isHidden = true
        
    }
    

    func skillLevelReached()
    {
       
        if (skillLevelLabelp1.text == "1") && (score1.text == "16")
        {
            hideButtons()
            player1Win()
            
            

        }
        
        if (skillLevelLabelp2.text == "1") && (score2.text == "16")
        {
            
            hideButtons()
            player2Win()
        

        }
        
        if (skillLevelLabelp1.text == "2") && (score1.text == "21")
        {
            hideButtons()
            player1Win()



        }
        
        if (skillLevelLabelp2.text == "2") && (score2.text == "21")
        {
            hideButtons()
            player2Win()



        }
        
        if (skillLevelLabelp1.text == "3") && (score1.text == "27")
        {
            hideButtons()
            player1Win()


        }
        
        if (skillLevelLabelp2.text == "3") && (score2.text == "27")
        {
            hideButtons()
            player2Win()



        }
        
        if (skillLevelLabelp1.text == "4") && (score1.text == "33")
        {
            hideButtons()
            player1Win()



        }
        
        if (skillLevelLabelp2.text == "4") && (score2.text == "33")
        {
            hideButtons()
            player2Win()



        }
        
        if (skillLevelLabelp1.text == "5") && (score1.text == "40")
        {
            hideButtons()
            player1Win()



        }
        
        if (skillLevelLabelp2.text == "5") && (score2.text == "40")
        {
            hideButtons()
            player2Win()



        }
        
        if (skillLevelLabelp1.text == "6") && (score1.text == "48")
        {
            hideButtons()
            player1Win()



        }
        
        if (skillLevelLabelp2.text == "6") && (score2.text == "48")
        {
            hideButtons()
            player2Win()



        }
        
        if (skillLevelLabelp1.text == "7") && (score1.text == "57")
        {
            hideButtons()
            player1Win()



        }
        
        if (skillLevelLabelp2.text == "7") && (score2.text == "57")
        {
            hideButtons()
            player2Win()



        }
        
        if (skillLevelLabelp1.text == "8") && (score1.text == "67")
        {
            hideButtons()
            player1Win()



        }
        
        if (skillLevelLabelp2.text == "8") && (score2.text == "67")
        {
            hideButtons()
            player2Win()



        }
        
        if (skillLevelLabelp1.text == "9") && (score1.text == "77")
        {
            hideButtons()
            player1Win()



        }
        
        if (skillLevelLabelp2.text == "9") && (score2.text == "77")
        {
            hideButtons()
            player2Win()



        }
        
        if (skillLevelLabelp1.text == "10") && (score1.text == "87")
        {
            hideButtons()
            player1Win()



        }
        
        if (skillLevelLabelp2.text == "10") && (score2.text == "87")
        {
            hideButtons()
            player2Win()



        }

        
    }
    
    func remainder()
    {
        if skillLevelLabelp1.text == "1"
        {
            p1Remainder.text = "\(16 - Int(score1.text!)!)"
        }
        
        if skillLevelLabelp2.text == "1"
        {
            p2Remainder.text = "\(16 - Int(score2.text!)!)"
        }
        
        if skillLevelLabelp1.text == "2"
        {
            p1Remainder.text = "\(21 - Int(score1.text!)!)"
        }
        
        if skillLevelLabelp2.text == "2"
        {
            p2Remainder.text = "\(21 - Int(score2.text!)!)"
        }
        
        if skillLevelLabelp1.text == "3"
        {
            p1Remainder.text = "\(27 - Int(score1.text!)!)"
        }
        
        if skillLevelLabelp2.text == "3"
        {
            p2Remainder.text = "\(27 - Int(score2.text!)!)"
        }
        
        if skillLevelLabelp1.text == "4"
        {
            p1Remainder.text = "\(33 - Int(score1.text!)!)"
        }
        
        if skillLevelLabelp2.text == "4"
        {
            p2Remainder.text = "\(33 - Int(score2.text!)!)"
        }
        
        if skillLevelLabelp1.text == "5"
        {
            p1Remainder.text = "\(40 - Int(score1.text!)!)"
        }
        
        if skillLevelLabelp2.text == "5"
        {
            p2Remainder.text = "\(40 - Int(score2.text!)!)"
        }
        
        if skillLevelLabelp1.text == "6"
        {
            p1Remainder.text = "\(48 - Int(score1.text!)!)"
        }
        
        if skillLevelLabelp2.text == "6"
        {
            p2Remainder.text = "\(48 - Int(score2.text!)!)"
        }
        
        if skillLevelLabelp1.text == "7"
        {
            p1Remainder.text = "\(57 - Int(score1.text!)!)"
        }
        
        if skillLevelLabelp2.text == "7"
        {
            p2Remainder.text = "\(57 - Int(score2.text!)!)"
        }
        
        if skillLevelLabelp1.text == "8"
        {
            p1Remainder.text = "\(67 - Int(score1.text!)!)"
        }
        
        if skillLevelLabelp2.text == "8"
        {
            p2Remainder.text = "\(67 - Int(score2.text!)!)"
        }
        
        if skillLevelLabelp1.text == "9"
        {
            p1Remainder.text = "\(77 - Int(score1.text!)!)"
        }
        
        if skillLevelLabelp2.text == "9"
        {
            p2Remainder.text = "\(77 - Int(score2.text!)!)"
        }
        if skillLevelLabelp1.text == "10"
        {
            p1Remainder.text = "\(87 - Int(score1.text!)!)"
        }
        
        if skillLevelLabelp2.text == "10"
        {
            p2Remainder.text = "\(87 - Int(score2.text!)!)"
        }
        
    }
    
    func playSound(soundFileName: String)
    {
        if let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
            
        {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
    }
    
    func hideButtons()
    {
        player1Btn.backgroundColor = UIColor.clear
        player1SubtractBtn.backgroundColor = UIColor.clear
        player2Btn.backgroundColor = UIColor.clear
        player2SubtractBtn.backgroundColor = UIColor.clear
        deadBallBtn.backgroundColor = UIColor.clear
        deadBallSubtractBtn.backgroundColor = UIColor.clear
        player1Btn.isEnabled = false
        player1SubtractBtn.isEnabled = false
        player2Btn.isEnabled = false
        player2SubtractBtn.isEnabled = false
        deadBallBtn.isEnabled = false
        deadBallSubtractBtn.isEnabled = false
        
        
    }
    
    func player1Win()
    {

        winnerNameLabel.isHidden = false
        winnerNameLabel.text = "\(p1Name) Wins!"
        playSound(soundFileName: "Applause")
        
        finalScoreLabel.isHidden = false
        loserScore = Int(score2.text!)!
        loserSkillLevel = Int(skillLevelLabelp2.text!)!
        finalScore()
    }
    
    func player2Win()
    {

        winnerNameLabel.isHidden = false
        winnerNameLabel.text = "\(p2Name) Wins!"
        playSound(soundFileName: "Applause")
        
        loserScore = Int(score1.text!)!
        loserSkillLevel = Int(skillLevelLabelp1.text!)!
        finalScoreLabel.isHidden = false
        finalScore()
    }

    
    func ballAmount()
    {
        if skillLevelLabelp1.text == "1"
        {
            p1Remainder.text = "16"
        }
        
        if skillLevelLabelp2.text == "1"
        {
            p2Remainder.text = "16"
        }
        
        if skillLevelLabelp1.text == "2"
        {
            p1Remainder.text = "21"
        }
        
        if skillLevelLabelp2.text == "2"
        {
            p2Remainder.text = "21"
        }
        
        if skillLevelLabelp1.text == "3"
        {
            p1Remainder.text = "27"
        }
        
        if skillLevelLabelp2.text == "3"
        {
            p2Remainder.text = "27"
        }
        
        if skillLevelLabelp1.text == "4"
        {
            p1Remainder.text = "33"
        }
        
        if skillLevelLabelp2.text == "4"
        {
            p2Remainder.text = "33"
        }
        
        if skillLevelLabelp1.text == "5"
        {
            p1Remainder.text = "40"
        }
        
        if skillLevelLabelp2.text == "5"
        {
            p2Remainder.text = "40"
        }
        
        if skillLevelLabelp1.text == "6"
        {
            p1Remainder.text = "48"
        }
        
        if skillLevelLabelp2.text == "6"
        {
            p2Remainder.text = "48"
        }
        
        if skillLevelLabelp1.text == "7"
        {
            p1Remainder.text = "57"
        }
        
        if skillLevelLabelp2.text == "7"
        {
            p2Remainder.text = "57"
        }
        
        if skillLevelLabelp1.text == "8"
        {
            p1Remainder.text = "67"
        }
        
        if skillLevelLabelp2.text == "8"
        {
            p2Remainder.text = "67"
        }
        
        if skillLevelLabelp1.text == "9"
        {
            p1Remainder.text = "77"
        }
        
        if skillLevelLabelp2.text == "9"
        {
            p2Remainder.text = "77"
        }
        
        if skillLevelLabelp1.text == "10"
        {
            p1Remainder.text = "87"
        }
        
        if skillLevelLabelp2.text == "10"
        {
            p2Remainder.text = "87"
        }
    }
    
    func finalScore()
    {
        //Skill Level 1
        if loserSkillLevel == 1
        {
            if loserScore < 4
            {
                finalScoreLabel.text = "20/0"
            }
            
            if loserScore >= 4 && loserScore <= 5
            {
                finalScoreLabel.text = "19/1"
            }
            
            if loserScore >= 6 && loserScore <= 7
            {
                finalScoreLabel.text = "18/2"
            }
            
            if loserScore >= 8 && loserScore <= 9
            {
                finalScoreLabel.text = "17/3"
            }
            
            if loserScore == 10
            {
                finalScoreLabel.text = "16/4"
            }
            
            if loserScore == 11
            {
                finalScoreLabel.text = "15/5"
            }
            
            if loserScore == 12
            {
                finalScoreLabel.text = "14/6"
            }
            
            if loserScore == 13
            {
                finalScoreLabel.text = "13/7"
            }
            
            if loserScore == 14
            {
                finalScoreLabel.text = "12/8"
            }
            
            if loserScore == 15
            {
                finalScoreLabel.text = "11/9"
            }
        }
        
        
        //Skill Level 2
        if loserSkillLevel == 2
        {
            if loserScore < 5
            {
                finalScoreLabel.text = "20/0"
            }
            
            if loserScore >= 5 && loserScore <= 6
            {
                finalScoreLabel.text = "19/1"
            }
            
            if loserScore >= 7 && loserScore <= 8
            {
                finalScoreLabel.text = "18/2"
            }
            
            if loserScore >= 9 && loserScore <= 10
            {
                finalScoreLabel.text = "17/3"
            }
            
            if loserScore >= 11 && loserScore <= 12
            {
                finalScoreLabel.text = "16/4"
            }
            
            if loserScore >= 13 && loserScore <= 14
            {
                finalScoreLabel.text = "15/5"
            }
            
            if loserScore >= 15 && loserScore <= 16
            {
                finalScoreLabel.text = "14/6"
            }
            
            if loserScore >= 17 && loserScore <= 18
            {
                finalScoreLabel.text = "13/7"
            }
            
            if loserScore == 19
            {
                finalScoreLabel.text = "12/8"
            }
            
            if loserScore == 20
            {
                finalScoreLabel.text = "11/9"
            }
        }
        
        //Skill Level 3
        if loserSkillLevel == 3
        {
            if loserScore < 6
            {
                finalScoreLabel.text = "20/0"
            }
            
            if loserScore >= 6 && loserScore <= 8
            {
                finalScoreLabel.text = "19/1"
            }
            
            if loserScore >= 9 && loserScore <= 11
            {
                finalScoreLabel.text = "18/2"
            }
            
            if loserScore >= 12 && loserScore <= 14
            {
                finalScoreLabel.text = "17/3"
            }
            
            if loserScore >= 15 && loserScore <= 16
            {
                finalScoreLabel.text = "16/4"
            }
            
            if loserScore >= 17 && loserScore <= 18
            {
                finalScoreLabel.text = "15/5"
            }
            
            if loserScore >= 19 && loserScore <= 20
            {
                finalScoreLabel.text = "14/6"
            }
            
            if loserScore >= 21 && loserScore <= 22
            {
                finalScoreLabel.text = "13/7"
            }
            
            if loserScore >= 23 && loserScore <= 24
            {
                finalScoreLabel.text = "12/8"
            }
            
            if loserScore >= 25 && loserScore <= 26
            {
                finalScoreLabel.text = "11/9"
            }
        }
        
        //Skill Level 4
        if loserSkillLevel == 4
        {
            if loserScore < 7
            {
                finalScoreLabel.text = "20/0"
            }
            
            if loserScore >= 7 && loserScore <= 9
            {
                finalScoreLabel.text = "19/1"
            }
            
            if loserScore >= 10 && loserScore <= 12
            {
                finalScoreLabel.text = "18/2"
            }
            
            if loserScore >= 13 && loserScore <= 15
            {
                finalScoreLabel.text = "17/3"
            }
            
            if loserScore >= 16 && loserScore <= 18
            {
                finalScoreLabel.text = "16/4"
            }
            
            if loserScore >= 19 && loserScore <= 21
            {
                finalScoreLabel.text = "15/5"
            }
            
            if loserScore >= 22 && loserScore <= 24
            {
                finalScoreLabel.text = "14/6"
            }
            
            if loserScore >= 25 && loserScore <= 27
            {
                finalScoreLabel.text = "13/7"
            }
            
            if loserScore >= 28 && loserScore <= 30
            {
                finalScoreLabel.text = "12/8"
            }
            
            if loserScore >= 31 && loserScore <= 32
            {
                finalScoreLabel.text = "11/9"
            }
        }
        
        //Skill Level 5
        if loserSkillLevel == 5
        {
            if loserScore < 8
            {
                finalScoreLabel.text = "20/0"
            }
            
            if loserScore >= 8 && loserScore <= 11
            {
                finalScoreLabel.text = "19/1"
            }
            
            if loserScore >= 12 && loserScore <= 15
            {
                finalScoreLabel.text = "18/2"
            }
            
            if loserScore >= 16 && loserScore <= 19
            {
                finalScoreLabel.text = "17/3"
            }
            
            if loserScore >= 20 && loserScore <= 23
            {
                finalScoreLabel.text = "16/4"
            }
            
            if loserScore >= 24 && loserScore <= 27
            {
                finalScoreLabel.text = "15/5"
            }
            
            if loserScore >= 28 && loserScore <= 30
            {
                finalScoreLabel.text = "14/6"
            }
            
            if loserScore >= 31 && loserScore <= 33
            {
                finalScoreLabel.text = "13/7"
            }
            
            if loserScore >= 34 && loserScore <= 36
            {
                finalScoreLabel.text = "12/8"
            }
            
            if loserScore >= 37 && loserScore <= 39
            {
                finalScoreLabel.text = "11/9"
            }
        }
        
        //Skill Level 6
        if loserSkillLevel == 6
        {
            if loserScore < 10
            {
                finalScoreLabel.text = "20/0"
            }
            
            if loserScore >= 10 && loserScore <= 14
            {
                finalScoreLabel.text = "19/1"
            }
            
            if loserScore >= 15 && loserScore <= 19
            {
                finalScoreLabel.text = "18/2"
            }
            
            if loserScore >= 20 && loserScore <= 23
            {
                finalScoreLabel.text = "17/3"
            }
            
            if loserScore >= 24 && loserScore <= 27
            {
                finalScoreLabel.text = "16/4"
            }
            
            if loserScore >= 28 && loserScore <= 31
            {
                finalScoreLabel.text = "15/5"
            }
            
            if loserScore >= 32 && loserScore <= 35
            {
                finalScoreLabel.text = "14/6"
            }
            
            if loserScore >= 36 && loserScore <= 39
            {
                finalScoreLabel.text = "13/7"
            }
            
            if loserScore >= 40 && loserScore <= 43
            {
                finalScoreLabel.text = "12/8"
            }
            
            if loserScore >= 44 && loserScore <= 47
            {
                finalScoreLabel.text = "11/9"
            }
        }
        
        //Skill Level 7
        if loserSkillLevel == 7
        {
            if loserScore < 12
            {
                finalScoreLabel.text = "20/0"
            }
            
            if loserScore >= 12 && loserScore <= 16
            {
                finalScoreLabel.text = "19/1"
            }
            
            if loserScore >= 17 && loserScore <= 21
            {
                finalScoreLabel.text = "18/2"
            }
            
            if loserScore >= 22 && loserScore <= 26
            {
                finalScoreLabel.text = "17/3"
            }
            
            if loserScore >= 27 && loserScore <= 31
            {
                finalScoreLabel.text = "16/4"
            }
            
            if loserScore >= 32 && loserScore <= 36
            {
                finalScoreLabel.text = "15/5"
            }
            
            if loserScore >= 37 && loserScore <= 41
            {
                finalScoreLabel.text = "14/6"
            }
            
            if loserScore >= 42 && loserScore <= 46
            {
                finalScoreLabel.text = "13/7"
            }
            
            if loserScore >= 47 && loserScore <= 51
            {
                finalScoreLabel.text = "12/8"
            }
            
            if loserScore >= 52 && loserScore <= 56
            {
                finalScoreLabel.text = "11/9"
            }
        }
        
        //Skill Level 8
        if loserSkillLevel == 8
        {
            if loserScore < 15
            {
                finalScoreLabel.text = "20/0"
            }
            
            if loserScore >= 15 && loserScore <= 20
            {
                finalScoreLabel.text = "19/1"
            }
            
            if loserScore >= 21 && loserScore <= 26
            {
                finalScoreLabel.text = "18/2"
            }
            
            if loserScore >= 27 && loserScore <= 32
            {
                finalScoreLabel.text = "17/3"
            }
            
            if loserScore >= 33 && loserScore <= 38
            {
                finalScoreLabel.text = "16/4"
            }
            
            if loserScore >= 39 && loserScore <= 44
            {
                finalScoreLabel.text = "15/5"
            }
            
            if loserScore >= 45 && loserScore <= 50
            {
                finalScoreLabel.text = "14/6"
            }
            
            if loserScore >= 51 && loserScore <= 56
            {
                finalScoreLabel.text = "13/7"
            }
            
            if loserScore >= 57 && loserScore <= 61
            {
                finalScoreLabel.text = "12/8"
            }
            
            if loserScore >= 62 && loserScore <= 66
            {
                finalScoreLabel.text = "11/9"
            }
        }
        
        //Skill Level 9
        if loserSkillLevel == 9
        {
            if loserScore < 19
            {
                finalScoreLabel.text = "20/0"
            }
            
            if loserScore >= 19 && loserScore <= 25
            {
                finalScoreLabel.text = "19/1"
            }
            
            if loserScore >= 26 && loserScore <= 32
            {
                finalScoreLabel.text = "18/2"
            }
            
            if loserScore >= 33 && loserScore <= 39
            {
                finalScoreLabel.text = "17/3"
            }
            
            if loserScore >= 40 && loserScore <= 46
            {
                finalScoreLabel.text = "16/4"
            }
            
            if loserScore >= 47 && loserScore <= 52
            {
                finalScoreLabel.text = "15/5"
            }
            
            if loserScore >= 53 && loserScore <= 58
            {
                finalScoreLabel.text = "14/6"
            }
            
            if loserScore >= 59 && loserScore <= 64
            {
                finalScoreLabel.text = "13/7"
            }
            
            if loserScore >= 65 && loserScore <= 70
            {
                finalScoreLabel.text = "12/8"
            }
            
            if loserScore >= 71 && loserScore <= 76
            {
                finalScoreLabel.text = "11/9"
            }
        }
        
        //Skill Level 10
        if loserSkillLevel == 10
        {
            if loserScore < 24
            {
                finalScoreLabel.text = "20/0"
            }
            
            if loserScore >= 24 && loserScore <= 30
            {
                finalScoreLabel.text = "19/1"
            }
            
            if loserScore >= 31 && loserScore <= 37
            {
                finalScoreLabel.text = "18/2"
            }
            
            if loserScore >= 38 && loserScore <= 44
            {
                finalScoreLabel.text = "17/3"
            }
            
            if loserScore >= 45 && loserScore <= 51
            {
                finalScoreLabel.text = "16/4"
            }
            
            if loserScore >= 52 && loserScore <= 58
            {
                finalScoreLabel.text = "15/5"
            }
            
            if loserScore >= 59 && loserScore <= 65
            {
                finalScoreLabel.text = "14/6"
            }
            
            if loserScore >= 66 && loserScore <= 72
            {
                finalScoreLabel.text = "13/7"
            }
            
            if loserScore >= 73 && loserScore <= 79
            {
                finalScoreLabel.text = "12/8"
            }
            
            if loserScore >= 80 && loserScore <= 86
            {
                finalScoreLabel.text = "11/9"
            }
        }
        
       
        
        
        
    }
}



