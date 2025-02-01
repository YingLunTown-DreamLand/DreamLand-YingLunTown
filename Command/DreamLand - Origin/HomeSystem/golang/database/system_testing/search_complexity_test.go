package system_testing

import (
	"crypto/rand"
	"fmt"
	"math/big"
	"testing"
)

const SC_TryCount int = 1e6

const (
	// []uint16 -> 1 + rand.Intn(65535)
	// size=128, autal=32 -> make([]uint, 128), primeInt = 127
	SC_TryModeA = 0

	// []uint16 -> 1 + rand.Intn(65535)
	// size=256, autal=64 -> make([]uint, 256), primeInt = 251
	SC_TryModeB = 1
)

const (
	SC_OutputOfTryModeA = `make([]uint16, 128) and put 32 numbers in, the average search count is %v`
	SC_OutputOfTryModeB = `make([]uint16, 256) and put 64 numbers in, the average search count is %v`
)

// Modified from https://blog.csdn.net/books1958/article/details/44923779
func SC_GenerateRandomNumber(end int, wantCount int) []int {
	result := make([]int, 0)

	for len(result) < wantCount {
		var randInt *big.Int

		for {
			randInt, _ = rand.Int(rand.Reader, big.NewInt(int64(end)))
			if len(randInt.Bits()) == 1 {
				break
			}
		}

		randomNumber := 1 + int(randInt.Bits()[0])

		exist := false
		for _, value := range result {
			if value == randomNumber {
				exist = true
				break
			}
		}

		if !exist {
			result = append(result, randomNumber)
		}
	}

	return result
}

func SC_SingleTryOnSpecificMode(tryMode int) float64 {
	var makeCount int
	var autal int
	var intN int
	var pInt int

	switch tryMode {
	case SC_TryModeA:
		makeCount, autal, intN, pInt = 128, 32, 65535, 127
	case SC_TryModeB:
		makeCount, autal, intN, pInt = 256, 64, 65535, 251
	default:
		panic(fmt.Errorf("SC_SingleTryOnSpecificMode: Unknown try mode %d was found", tryMode))
	}

	mapping := make([]uint, makeCount)
	randomNumbers := SC_GenerateRandomNumber(intN, autal)
	searchCount := 0

	for i := 0; i < autal; i++ {
		originIndex := randomNumbers[i]
		autalIndex := originIndex % pInt

		searchCount = searchCount + 1
		if mapping[autalIndex] == 0 {
			mapping[autalIndex] = uint(originIndex)
			continue
		}

		ptr := autalIndex + 1
		searchCount = searchCount + 1
		for {
			if ptr >= makeCount {
				ptr = 0
			}

			if mapping[ptr] == 0 {
				mapping[ptr] = uint(originIndex)
				break
			}

			ptr = ptr + 1
			searchCount = searchCount + 1
		}
	}

	return float64(searchCount) / float64(autal)
}

func TestSearchComplexity(t *testing.T) {
	for mode := 0; mode < 2; mode++ {
		// get average search count
		sum := float64(0)
		for i := 0; i < SC_TryCount; i++ {
			sum += SC_SingleTryOnSpecificMode(mode)
		}
		average := sum / float64(SC_TryCount)
		// output system testing answers
		switch mode {
		case HC_TryModeA:
			fmt.Printf(SC_OutputOfTryModeA+"\n", average)
		case HC_TryModeB:
			fmt.Printf(SC_OutputOfTryModeB+"\n", average)
		default:
			panic(fmt.Errorf("TestSearchComplexity: Unknown try mode %d was found", mode))
		}
	}
}
