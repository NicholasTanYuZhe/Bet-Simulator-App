//
//  ViewController.swift
//  SimulatorApp
//
//  Created by Nicholas Tan on 04/11/2016.
//  Copyright © 2016 Nicholas Tan. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    var randomSmall = [Int] ()
    var randomBig = [Int] ()
    var randomRed = [Int] ()
    var randomBlack = [Int] ()
    var randomEven = [Int] ()
    var randomOdd = [Int] ()
    var queueSmall = [Int] ()
    var queueBig = [Int] ()
    var queueRed = [Int] ()
    var queueBlack = [Int] ()
    var queueEven = [Int] ()
    var queueOdd = [Int] ()
    var start = Int()
    var number = 0
    var indicator = 1;
    var winningMoneySmall = 0
    var winningMoneyBig = 0
    var highestBettingSmall = 0
    var highestBettingBig = 0
    var lowestMoneySmall = 0
    var lowestMoneyBig = 0
    var moneySmall = 0
    var moneyBig = 0
    var winningMoneyRed = 0
    var winningMoneyBlack = 0
    var highestBettingRed = 0
    var highestBettingBlack = 0
    var lowestMoneyRed = 0
    var lowestMoneyBlack = 0
    var moneyRed = 0
    var moneyBlack = 0
    var winningMoneyOdd = 0
    var winningMoneyEven = 0
    var highestBettingOdd = 0
    var highestBettingEven = 0
    var lowestMoneyOdd = 0
    var lowestMoneyEven = 0
    var moneyEven = 0
    var moneyOdd = 0
    var startValueNumber = 5
    var isTypingNumber = false
    var totalSmall = 0
    var totalBig = 0
    var totalRed = 0
    var totalBlack = 0
    var totalEven = 0
    var totalOdd = 0
    var totalZero = 0
    var counter = 0
    var money = 0
    var highestNum = 0
    var winningMoney = 0
    var lowestMoney = 0
    var totalGame = 0
    var numberEntered = 0
    
    @IBOutlet weak var defaultSmallWinText: UILabel!
    @IBOutlet weak var defaultCurrentSmallBigText: UILabel!
    @IBOutlet weak var defaultBigWinText: UILabel!
    @IBOutlet weak var defaultRedWinText: UILabel!
    @IBOutlet weak var defaultCurrentRedBlackText: UILabel!
    @IBOutlet weak var defaultBlackWinText: UILabel!
    @IBOutlet weak var defaultEvenWinText: UILabel!
    @IBOutlet weak var defaultCurrentEvenOddText: UILabel!
    @IBOutlet weak var defaultOddWinText: UILabel!
    @IBOutlet weak var smallWin: UILabel!
    @IBOutlet weak var nextSmallBigBet: UILabel!
    @IBOutlet weak var bigWin: UILabel!
    @IBOutlet weak var redWin: UILabel!
    @IBOutlet weak var nextRedBlackBet: UILabel!
    @IBOutlet weak var blackWin: UILabel!
    @IBOutlet weak var evenWin: UILabel!
    @IBOutlet weak var nextEvenOddBet: UILabel!
    @IBOutlet weak var oddWin: UILabel!
    @IBOutlet weak var defaultSmallMinCapitalText: UILabel!
    @IBOutlet weak var currentSmallBigWinText: UILabel!
    @IBOutlet weak var defaultBigMinCapitalText: UILabel!
    @IBOutlet weak var defaultRedMinCapitalText: UILabel!
    @IBOutlet weak var currentRedBlackWinText: UILabel!
    @IBOutlet weak var defaultBlackMinCapitalText: UILabel!
    @IBOutlet weak var defaultEvenMinCapitalText: UILabel!
    @IBOutlet weak var currentEvenOddWinText: UILabel!
    @IBOutlet weak var defaultOddMinCapitalText: UILabel!
    @IBOutlet weak var smallMinCapital: UILabel!
    @IBOutlet weak var currentSmallBigWin: UILabel!
    @IBOutlet weak var bigMinCapital: UILabel!
    @IBOutlet weak var redMinCapital: UILabel!
    @IBOutlet weak var currentRedBlackWin: UILabel!
    @IBOutlet weak var blackMinCapital: UILabel!
    @IBOutlet weak var evenMinCapital: UILabel!
    @IBOutlet weak var currentEvenOddWin: UILabel!
    @IBOutlet weak var oddMinCapital: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var startValueDisplay: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var numberDisplay: UILabel!
    @IBOutlet weak var prevNumberDisplay: UILabel!
    @IBAction func indexChange(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
            case 0:
                defaultSmallWinText.text = "Small          Win: "
                defaultBigWinText.text = "Big              Win: "
                defaultSmallMinCapitalText.text = "MinCapital: "
                defaultBigMinCapitalText.text = "MinCapital: "
                smallWin.text = "0"
                bigWin.text = "0"
                smallMinCapital.text = "0"
                bigMinCapital.text = "0"
                defaultCurrentSmallBigText.text = ""
                nextSmallBigBet.text = ""
                currentSmallBigWinText.text = ""
                currentSmallBigWin.text = ""
                defaultRedWinText.text = "Red             Win: "
                defaultBlackWinText.text = "Black          Win: "
                defaultRedMinCapitalText.text = "MinCapital: "
                defaultBlackMinCapitalText.text = "MinCapital: "
                redWin.text = "0"
                blackWin.text = "0"
                redMinCapital.text = "0"
                blackMinCapital.text = "0"
                defaultCurrentRedBlackText.text = ""
                nextRedBlackBet.text = ""
                currentRedBlackWinText.text = ""
                currentRedBlackWin.text = ""
                defaultEvenWinText.text = "Even           Win: "
                defaultOddWinText.text = "Odd            Win: "
                defaultEvenMinCapitalText.text = "MinCapital: "
                defaultOddMinCapitalText.text = "MinCapital: "
                evenWin.text = "0"
                oddWin.text = "0"
                evenMinCapital.text = "0"
                oddMinCapital.text = "0"
                defaultCurrentEvenOddText.text = ""
                nextEvenOddBet.text = ""
                currentEvenOddWinText.text = ""
                currentEvenOddWin.text = ""
                start = 0
                randomSmall.removeAll()
                randomBig.removeAll()
                randomRed.removeAll()
                randomBlack.removeAll()
                randomEven.removeAll()
                randomOdd.removeAll()
                queueSmall.removeAll()
                queueBig.removeAll()
                queueRed.removeAll()
                queueBlack.removeAll()
                queueEven.removeAll()
                queueOdd.removeAll()
            case 1:
                defaultSmallWinText.text = ""
                defaultBigWinText.text = ""
                defaultSmallMinCapitalText.text = ""
                defaultBigMinCapitalText.text = ""
                smallWin.text = ""
                bigWin.text = ""
                smallMinCapital.text = ""
                bigMinCapital.text = ""
                defaultCurrentSmallBigText.text = "Draw           Bet: "
                nextSmallBigBet.text = "0"
                currentSmallBigWinText.text = "Win: "
                currentSmallBigWin.text = "0"
                defaultRedWinText.text = ""
                defaultBlackWinText.text = ""
                defaultRedMinCapitalText.text = ""
                defaultBlackMinCapitalText.text = ""
                redWin.text = ""
                blackWin.text = ""
                redMinCapital.text = ""
                blackMinCapital.text = ""
                defaultCurrentRedBlackText.text = "Draw           Bet: "
                nextRedBlackBet.text = "0"
                currentRedBlackWinText.text = "Win: "
                currentRedBlackWin.text = "0"
                defaultEvenWinText.text = ""
                defaultOddWinText.text = ""
                defaultEvenMinCapitalText.text = ""
                defaultOddMinCapitalText.text = ""
                evenWin.text = ""
                oddWin.text = ""
                evenMinCapital.text = ""
                oddMinCapital.text = ""
                defaultCurrentEvenOddText.text = "Draw           Bet: "
                nextEvenOddBet.text = "0"
                currentEvenOddWinText.text = "Win: "
                currentEvenOddWin.text = "0"
                start = 1
                randomSmall.removeAll()
                randomBig.removeAll()
                randomRed.removeAll()
                randomBlack.removeAll()
                randomEven.removeAll()
                randomOdd.removeAll()
                queueSmall.removeAll()
                queueBig.removeAll()
                queueRed.removeAll()
                queueBlack.removeAll()
                queueEven.removeAll()
                queueOdd.removeAll()
                for _ in 0..<3
                {
                    queueSmall.append(startValueNumber)
                    queueBig.append(startValueNumber)
                    queueRed.append(startValueNumber)
                    queueBlack.append(startValueNumber)
                    queueEven.append(startValueNumber)
                    queueOdd.append(startValueNumber)
                }
                
                moneySmall = startValueNumber + startValueNumber
                winningMoneySmall = 0
                lowestMoneySmall = 0
                
                moneyBig = startValueNumber + startValueNumber
                winningMoneyBig = 0
                lowestMoneyBig = 0
                
                moneyRed = startValueNumber + startValueNumber
                winningMoneyRed = 0
                lowestMoneyRed = 0
                
                moneyBlack = startValueNumber + startValueNumber
                winningMoneyBlack = 0
                lowestMoneyBlack = 0
                
                moneyEven = startValueNumber + startValueNumber
                winningMoneyEven = 0
                lowestMoneyEven = 0
                
                moneyOdd = startValueNumber + startValueNumber
                winningMoneyOdd = 0
                lowestMoneyOdd = 0
            default:
                break
        }
    }
    @IBAction func startValue(_ sender: UIStepper) {
        startValueDisplay.text = Int(sender.value).description
        startValueNumber = Int(Int(sender.value).description)!
    }
    @IBAction func numberTapped(_ sender: AnyObject) {
        let number = sender.currentTitle
        
        if isTypingNumber
        {
            numberDisplay.text = numberDisplay.text! + number!!
        }
        else
        {
            numberDisplay.text = number!
            isTypingNumber = true
        }
    }
    @IBAction func numberClear(_ sender: AnyObject) {
        isTypingNumber = false
        numberDisplay.text = "0"
    }
    @IBAction func numberEnter(_ sender: AnyObject) {
        isTypingNumber = false
        
        let totalGame = Int(numberDisplay.text!)!
        
        if start == 0
        {
            randomSmall.removeAll()
            randomBig.removeAll()
            
            for i in 0..<totalGame
            {
                randomSmall.append(Int(arc4random_uniform(37)))
                print(randomSmall)
                randomBig.append(randomSmall[i])
                print(randomBig)
                if randomSmall[i] == 0
                {
                    totalZero += 1
                }
                else if randomSmall[i] > 0 && randomSmall[i] < 19
                {
                    totalSmall += 1
                }
                else if randomSmall[i] > 18 && randomSmall[i] < 37
                {
                    totalBig += 1
                }
                
                if randomSmall[i] == 1 || randomSmall[i] == 3 || randomSmall[i] == 5 || randomSmall[i] == 7 || randomSmall[i] == 9 || randomSmall[i] == 12 || randomSmall[i] == 14 || randomSmall[i] == 16 || randomSmall[i] == 18 || randomSmall[i] == 19 || randomSmall[i] == 21 || randomSmall[i] == 23 || randomSmall[i] == 25 || randomSmall[i] == 27 || randomSmall[i] == 30 || randomSmall[i] == 32 || randomSmall[i] == 34 || randomSmall[i] == 36
                {
                    totalRed += 1
                }
                else if randomSmall[i] == 2 || randomSmall[i] == 4 || randomSmall[i] == 6 || randomSmall[i] == 8 || randomSmall[i] == 10 || randomSmall[i] == 11 || randomSmall[i] == 13 || randomSmall[i] == 15 || randomSmall[i] == 17 || randomSmall[i] == 20 || randomSmall[i] == 22 || randomSmall[i] == 24 || randomSmall[i] == 26 || randomSmall[i] == 28 || randomSmall[i] == 29 || randomSmall[i] == 31 || randomSmall[i] == 33 || randomSmall[i] == 35
                {
                    totalBlack += 1
                }
                
                if randomSmall[i] % 2 == 0 && randomSmall[i] != 0
                {
                    totalEven += 1
                }
                else if randomSmall[i] % 2 == 1 && randomSmall[i] != 0
                {
                    totalOdd += 1
                }
                print("Print")
                print(totalZero)
                print(totalSmall)
                print(totalBig)
                print(totalRed)
                print(totalBlack)
                print(totalEven)
                print(totalOdd)
            }
            
            for indicator in 1..<4
            {
                for i in 0..<2
                {
                    queueSmall.removeAll()
                    
                    for _ in 0..<3
                    {
                        queueSmall.append(startValueNumber)
                    }
                    
                    counter = 0;
                    money = startValueNumber + startValueNumber;
                    winningMoney = 0;
                    lowestMoney = 0;
                    
                    while counter != totalGame
                    {
                        (randomSmall, queueSmall, money, winningMoney) = check(randomC: randomSmall, queueC: queueSmall, sideC: i, moneyC: money, winMoneyC: winningMoney, startValueNumberC: startValueNumber, indicatorC: indicator)
                        lowestMoney = minCapital(lowestMoney: lowestMoney, winMoney: winningMoney)
                        counter += 1
                    }
                    
                    if i == 0
                    {
                        if indicator == 1
                        {
                            smallWin.text = String(winningMoney)
                            if lowestMoney > 0
                            {
                                smallMinCapital.text = "0"
                            }
                            else
                            {
                                smallMinCapital.text = String(lowestMoney * -1)
                            }
                        }
                        else if indicator == 2
                        {
                            redWin.text = String(winningMoney)
                            if lowestMoney > 0
                            {
                                redMinCapital.text = "0"
                            }
                            else
                            {
                                redMinCapital.text = String(lowestMoney * -1)
                            }
                        }
                        else
                        {
                            evenWin.text = String(winningMoney)
                            if lowestMoney > 0
                            {
                                evenMinCapital.text = "0"
                            }
                            else
                            {
                                evenMinCapital.text = String(lowestMoney * -1)
                            }
                        }
                    }
                    else
                    {
                        if indicator == 1
                        {
                            bigWin.text = String(winningMoney)
                            if lowestMoney > 0
                            {
                                bigMinCapital.text = "0"
                            }
                            else
                            {
                                bigMinCapital.text = String(lowestMoney * -1)
                            }
                        }
                        else if indicator == 2
                        {
                            blackWin.text = String(winningMoney)
                            if lowestMoney > 0
                            {
                                blackMinCapital.text = "0"
                            }
                            else
                            {
                                blackMinCapital.text = String(lowestMoney * -1)
                            }
                        }
                        else
                        {
                            oddWin.text = String(winningMoney)
                            if lowestMoney > 0
                            {
                                oddMinCapital.text = "0"
                            }
                            else
                            {
                                oddMinCapital.text = String(lowestMoney * -1)
                            }
                        }
                    }
                    
                    for j in 0..<totalGame
                    {
                        randomSmall.append(randomBig[j])
                    }
                }
            }
        }
        else if start == 1
        {
            prevNumberDisplay.text = String(numberEntered)
            
            numberEntered = Int(numberDisplay.text!)!
            randomSmall.append(numberEntered)
            randomBig.append(numberEntered)
            randomRed.append(numberEntered)
            randomBlack.append(numberEntered)
            randomEven.append(numberEntered)
            randomOdd.append(numberEntered)
            
            (randomSmall, queueSmall, moneySmall, winningMoneySmall) = check(randomC: randomSmall, queueC: queueSmall, sideC: 0, moneyC: moneySmall, winMoneyC: winningMoneySmall, startValueNumberC: startValueNumber, indicatorC: 1)
            lowestMoneySmall = minCapital(lowestMoney: lowestMoneySmall, winMoney: winningMoneySmall)
            
            (randomBig, queueBig, moneyBig, winningMoneyBig) = check(randomC: randomBig, queueC: queueBig, sideC: 1, moneyC: moneyBig, winMoneyC: winningMoneyBig, startValueNumberC: startValueNumber, indicatorC: 1)
            lowestMoneyBig = minCapital(lowestMoney: lowestMoneyBig, winMoney: winningMoneyBig)
            
            (randomRed, queueRed, moneyRed, winningMoneyRed) = check(randomC: randomRed, queueC: queueRed, sideC: 0, moneyC: moneyRed, winMoneyC: winningMoneyRed, startValueNumberC: startValueNumber, indicatorC: 2)
            lowestMoneyRed = minCapital(lowestMoney: lowestMoneyRed, winMoney: winningMoneyRed)
            
            (randomBlack, queueBlack, moneyBlack, winningMoneyBlack) = check(randomC: randomBlack, queueC: queueBlack, sideC: 1, moneyC: moneyBlack, winMoneyC: winningMoneyBlack, startValueNumberC: startValueNumber, indicatorC: 2)
            lowestMoneyBlack = minCapital(lowestMoney: lowestMoneyBlack, winMoney: winningMoneyBlack)
            
            (randomEven, queueEven, moneyEven, winningMoneyEven) = check(randomC: randomEven, queueC: queueEven, sideC: 0, moneyC: moneyEven, winMoneyC: winningMoneyEven, startValueNumberC: startValueNumber, indicatorC: 3)
            lowestMoneyEven = minCapital(lowestMoney: lowestMoneyEven, winMoney: winningMoneyEven)
            
            (randomOdd, queueOdd, moneyOdd, winningMoneyOdd) = check(randomC: randomOdd, queueC: queueOdd, sideC: 1, moneyC: moneyOdd, winMoneyC: winningMoneyOdd, startValueNumberC: startValueNumber, indicatorC: 3)
            lowestMoneyOdd = minCapital(lowestMoney: lowestMoneyOdd, winMoney: winningMoneyOdd)
            
            if moneySmall == moneyBig
            {
                defaultCurrentSmallBigText.text = "Draw           Bet: "
                nextSmallBigBet.text = "0"
            }
            else if moneySmall < moneyBig
            {
                defaultCurrentSmallBigText.text = "Big            Bet: "
                nextSmallBigBet.text = String(moneyBig - moneySmall)
            }
            else
            {
                defaultCurrentSmallBigText.text = "Small          Bet: "
                nextSmallBigBet.text = String(moneySmall - moneyBig)
            }
            currentSmallBigWin.text = String(winningMoneyBig+winningMoneySmall)
            
            if moneyRed == moneyBlack
            {
                defaultCurrentRedBlackText.text = "Draw           Bet: "
                nextRedBlackBet.text = "0"
            }
            else if moneyRed < moneyBlack
            {
                defaultCurrentRedBlackText.text = "Black          Bet: "
                nextRedBlackBet.text = String(moneyBlack - moneyRed)
            }
            else
            {
                defaultCurrentRedBlackText.text = "Red            Bet: "
                nextRedBlackBet.text = String(moneyRed - moneyBlack)
            }
            currentRedBlackWin.text = String(winningMoneyBlack+winningMoneyRed)
            
            if moneyEven == moneyOdd
            {
                defaultCurrentEvenOddText.text = "Draw           Bet: "
                nextEvenOddBet.text = "0"
            }
            else if moneyEven < moneyOdd
            {
                defaultCurrentEvenOddText.text = "Odd            Bet: "
                nextEvenOddBet.text = String(moneyOdd - moneyEven)
            }
            else
            {
                defaultCurrentEvenOddText.text = "Even           Bet: "
                nextEvenOddBet.text = String(moneyEven - moneyOdd)
            }
            currentEvenOddWin.text = String(winningMoneyOdd+winningMoneyEven)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.minimumValue = 5
        stepper.stepValue = 5
        stepper.maximumValue = 100
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

func win(queueW: [Int], moneyW: Int, winMoneyW: Int, startValueNumberW: Int) -> ([Int], Int, Int)
{
    var money = moneyW
    var queue = queueW
    var winMoney = winMoneyW
    let startValueNumber = startValueNumberW
    
    if queue.count != 1
    {
        queue.removeFirst()
        queue.removeLast()
        winMoney = winMoney + money
    }
    else
    {
        queue.removeFirst()
        winMoney = winMoney + money
    }
    
    if queue.count == 0
    {
        for _ in 0..<3
        {
            queue.append(startValueNumber)
        }
        money = startValueNumber * 2
    }
    else if queue.count != 1
    {
        money = queue[0] + queue[queue.count-1]
    }
    else
    {
        money = queue[0]
    }
    
    return (queue, money, winMoney)
}

func lose(queueL: [Int], moneyL: Int, winMoneyL: Int, startValueNumberL: Int) -> ([Int], Int, Int)
{
    var money = moneyL
    var queue = queueL
    var winMoney = winMoneyL
    //let startValueNumber = startValueNumberL
    
    //if money > (startValueNumber * 10)
    //{
        //for _ in 0..<2
        //{
            //queue.append(startValueNumber)
        //}
        //money = startValueNumber
    //}
    queue.append(money)
    winMoney = winMoney - money
    money = queue[0] + queue[queue.count-1]
    
    return (queue, money, winMoney)
}

func check(randomC: [Int], queueC: [Int], sideC: Int, moneyC: Int, winMoneyC: Int, startValueNumberC: Int, indicatorC: Int) -> ([Int], [Int], Int, Int)
{
    var money = moneyC
    var queue = queueC
    var winMoney = winMoneyC
    var random = randomC
    let indicator = indicatorC
    let startValueNumber = startValueNumberC
    let side = sideC
    let currentNum = random[0]
    random.removeFirst()
    
    //Ignore 0
    if indicator == 1 {
        //Big Small, 0 = small, 1 = big
        if currentNum > 0 && currentNum < 19 {
            if side == 1 {
                (queue, money, winMoney) = lose(queueL: queue, moneyL: money, winMoneyL: winMoney, startValueNumberL: startValueNumber)
            }
            else {
                (queue, money, winMoney) = win(queueW: queue, moneyW: money, winMoneyW: winMoney, startValueNumberW: startValueNumber)
            }
        }
        else if currentNum > 18 && currentNum < 37 {
            if side == 1 {
                (queue, money, winMoney) = win(queueW: queue, moneyW: money, winMoneyW: winMoney, startValueNumberW: startValueNumber)
            }
            else {
                (queue, money, winMoney) = lose(queueL: queue, moneyL: money, winMoneyL: winMoney, startValueNumberL: startValueNumber)
            }
        }
    }
    else if indicator == 2 {
        //Red Black, 0 = red, 1 = black
        if currentNum == 1 || currentNum == 3 || currentNum == 5 || currentNum == 7 || currentNum == 9 || currentNum == 12 || currentNum == 14 || currentNum == 16 || currentNum == 18 || currentNum == 19 || currentNum == 21 || currentNum == 23 || currentNum == 25 || currentNum == 27 || currentNum == 30 || currentNum == 32 || currentNum == 34 || currentNum == 36 {
            if side == 1 {
                (queue, money, winMoney) = lose(queueL: queue, moneyL: money, winMoneyL: winMoney, startValueNumberL: startValueNumber)
            }
            else {
                (queue, money, winMoney) = win(queueW: queue, moneyW: money, winMoneyW: winMoney, startValueNumberW: startValueNumber)
            }
        }
        else if currentNum == 2 || currentNum == 4 || currentNum == 6 || currentNum == 8 || currentNum == 10 || currentNum == 11 || currentNum == 13 || currentNum == 15 || currentNum == 17 || currentNum == 20 || currentNum == 22 || currentNum == 24 || currentNum == 26 || currentNum == 28 || currentNum == 29 || currentNum == 31 || currentNum == 33 || currentNum == 35 {
            if side == 1 {
                (queue, money, winMoney) = win(queueW: queue, moneyW: money, winMoneyW: winMoney, startValueNumberW: startValueNumber)
            }
            else {
                (queue, money, winMoney) = lose(queueL: queue, moneyL: money, winMoneyL: winMoney, startValueNumberL: startValueNumber)
            }
        }
    }
    else if indicator == 3
    {
        //Odd Even, 0 = even, 1 = odd
        let number = currentNum % 2;
        if number == 0 && currentNum != 0 {
            if side == 1 {
                (queue, money, winMoney) = lose(queueL: queue, moneyL: money, winMoneyL: winMoney, startValueNumberL: startValueNumber)
            }
            else {
                (queue, money, winMoney) = win(queueW: queue, moneyW: money, winMoneyW: winMoney, startValueNumberW: startValueNumber)
            }
        }
        else if number == 1 && currentNum != 0 {
            if side == 1 {
                (queue, money, winMoney) = win(queueW: queue, moneyW: money, winMoneyW: winMoney, startValueNumberW: startValueNumber)
            }
            else {
                (queue, money, winMoney) = lose(queueL: queue, moneyL: money, winMoneyL: winMoney, startValueNumberL: startValueNumber)
            }
        }
    }
    return (random, queue, money, winMoney)
}

func minCapital(lowestMoney: Int, winMoney: Int) -> Int
{
    var lowestMoney = lowestMoney
    if winMoney < lowestMoney
    {
        lowestMoney = winMoney
    }
    return lowestMoney
}
