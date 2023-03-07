//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

let myLottoNumbers: [Int] = [4, 31, 11, 7, 28, 45]

var lottoNumbers: Set<Int> = Set<Int>()

func lottoPlease() -> Set<Int>{
    repeat {
        let lottoNumber = Int.random(in: 1...45)
        lottoNumbers.insert(lottoNumber)
        if lottoNumbers.contains(lottoNumber) {
        } else {
            lottoNumbers.insert(lottoNumber)
        }
    } while lottoNumbers.count < 6
    return lottoNumbers
}

func checkLottoNumbers(numbers: Array<Int>) {
    let sameNumbers: [Int] = Array(Set(myLottoNumbers).intersection(lottoNumbers))
    if sameNumbers.count > 0 {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        for value in sameNumbers {
            if value == sameNumbers[sameNumbers.count-1]{
                print(value, terminator:" ")
            } else {
                print(value, terminator: ", ")
            }
        }
        print("입니다!")
    } else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

lottoPlease()
checkLottoNumbers(numbers: myLottoNumbers)


