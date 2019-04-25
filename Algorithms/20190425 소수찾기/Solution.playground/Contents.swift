// https://programmers.co.kr/learn/courses/30/lessons/12921
// 소수 찾기
/*
 1부터 n 사이에 있는 소수의 개수 리턴.
 소수는 1과 자기 자신으로만 나누어지는 수.
 n는 2 이상 1000000 이하의 자연수.
 */

// 16:55
import Foundation

func solution(_ n: Int) -> Int {
    return Array(2...n).reduce(0) {
        for i in Array(2...$1) {
            if i != $1 && $1 % i == 0 { return $0 }
        }

        return $0 + 1
    }
}

print("RESULT: ", solution(10), "\n") // 4
print("RESULT: ", solution(5), "\n") // 3
//print("RESULT: ", solution(100), "\n") // 25


// forEach()는 break나 return을 써서 빠져나올 수 없다.
//        Array(2...num).forEach({
//            if $0 == num {
//                return
//            } else if num % $0 == 0 {
//                isPrimeNumber = false
//                print("  ", num, " / ", $0, isPrimeNumber)
//                return
//            }
//        })


// TODO: "에라토스테네스의 체"를 이용해서 효율적인 솔루션 찾아보기
