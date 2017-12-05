//
//  ViewController.swift
//  NineBallTracker
//
//  Created by skwong on 12/2/17.
//  Copyright © 2017 skwong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var p1SkillLevel = ""
    var p2SkillLevel = ""
    
    var player1Score = 0
    var player2Score = 0
    var deadBall = 0
    var player1RunningScore = 0
    var player2RUnningScore = 0
    var deadBallRunningScore = 0
    
    @IBOutlet weak var skillLevelLabelp1: UILabel!
    @IBOutlet weak var skillLevelLabelp2: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    

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
        
        resetScore()

        skillLevelLabelp1.text = p1SkillLevel
        skillLevelLabelp2.text = p2SkillLevel
        
        
       
    
    }

    
    @IBAction func player1BtnPressed(_ sender: Any)
    {
        player1Score = player1Score + 1
        score1.text = "\(player1Score)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"
        
        scoring()
        updateScore()
        skillLevelReached()
        


    }
    
    @IBAction func player1Subtract(_ sender: Any)
    {
        player1Score = player1Score - 1
        score1.text = "\(player1Score)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"
        
        
        updateScore()
        
    }
    
    
    
    
    @IBAction func player2BtnPressed(_ sender: Any)
    {
        player2Score = player2Score + 1
        score2.text = "\(player2Score)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"

        scoring()
        updateScore()
        skillLevelReached()
        
    }
    
    @IBAction func player2Subtract(_ sender: Any)
    {
        player2Score = player2Score - 1
        score2.text = "\(player2Score)"
        ballCount.text = "\(player1Score + deadBall + player2Score)"
        
        updateScore()
        
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
            
            p1_10.text = "\(player1Score - Int(p1_9.text!)! - Int(p1_8.text!)! - Int(p1_7.text!)! - Int(p1_6.text!)! - Int(p1_5.text!)! - Int(p1_4.text!)! - Int(p1_3.text!)! - Int(p1_2.text!)! - Int(p1_1.text!)!)"
            p2_10.text = "\(player2Score - Int(p2_9.text!)! - Int(p2_8.text!)! - Int(p2_7.text!)! - Int(p2_6.text!)! - Int(p2_5.text!)! - Int(p2_4.text!)! - Int(p2_3.text!)! - Int(p2_2.text!)! - Int(p2_1.text!)!)"
            d_10.text = "\(deadBall - Int(d_9.text!)! - Int(d_8.text!)! - Int(d_7.text!)! - Int(d_6.text!)! - Int(d_5.text!)! - Int(d_4.text!)! - Int(d_3.text!)! - Int(d_2.text!)! - Int(d_1.text!)!)"
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
            
            
            game10.backgroundColor = UIColor.magenta
            game9.backgroundColor = UIColor.clear
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
        
//        game1.backgroundColor = UIColor.magenta
        game2.isHidden = true
        game3.isHidden = true
        game4.isHidden = true
        game5.isHidden = true
        game6.isHidden = true
        game7.isHidden = true
        game8.isHidden = true
        game9.isHidden = true
        game10.isHidden = true
        
        winnerLabel.isHidden = true
        
    }
    

    func skillLevelReached()
    {
       
        if (skillLevelLabelp1.text == "1") && (score1.text == "16")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 1 WINNER!"
        }
        
        if (skillLevelLabelp2.text == "1") && (score2.text == "16")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 2 WINNER!"
        }
        
        if (skillLevelLabelp1.text == "2") && (score1.text == "21")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 1 WINNER!"
        }
        
        if (skillLevelLabelp2.text == "2") && (score2.text == "21")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 2 WINNER!"
        }
        
        if (skillLevelLabelp1.text == "3") && (score1.text == "27")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 1 WINNER!"
        }
        
        if (skillLevelLabelp2.text == "3") && (score2.text == "27")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 2 WINNER!"
        }
        
        if (skillLevelLabelp1.text == "4") && (score1.text == "33")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 1 WINNER!"
        }
        
        if (skillLevelLabelp2.text == "4") && (score2.text == "33")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 2 WINNER!"
        }
        
        if (skillLevelLabelp1.text == "5") && (score1.text == "40")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 1 WINNER!"
        }
        
        if (skillLevelLabelp2.text == "5") && (score2.text == "40")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 2 WINNER!"
        }
        
        if (skillLevelLabelp1.text == "6") && (score1.text == "48")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 1 WINNER!"
        }
        
        if (skillLevelLabelp2.text == "6") && (score2.text == "48")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 2 WINNER!"
        }
        
        if (skillLevelLabelp1.text == "7") && (score1.text == "57")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 1 WINNER!"
        }
        
        if (skillLevelLabelp2.text == "7") && (score2.text == "57")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 2 WINNER!"
        }
        
        if (skillLevelLabelp1.text == "8") && (score1.text == "67")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 1 WINNER!"
        }
        
        if (skillLevelLabelp2.text == "8") && (score2.text == "67")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 2 WINNER!"
        }
        
        if (skillLevelLabelp1.text == "9") && (score1.text == "77")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 1 WINNER!"
        }
        
        if (skillLevelLabelp2.text == "9") && (score2.text == "77")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 2 WINNER!"
        }
        
        if (skillLevelLabelp1.text == "10") && (score1.text == "87")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 1 WINNER!"
        }
        
        if (skillLevelLabelp2.text == "10") && (score2.text == "87")
        {
            winnerLabel.isHidden = false
            winnerLabel.text = "PLAYER 2 WINNER!"
        }
        
        
        
        
        
    }
    

}



