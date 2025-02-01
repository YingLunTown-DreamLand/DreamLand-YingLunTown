package database_testing

import (
	"crypto/rand"
	"fmt"
	"math/big"
	"testing"
)

const HC_TryCount int = 1e6

const (
	// []uint16 -> 1 + rand.Intn(65535)
	// size=128, autal=32 -> make([]bool, 128), primeInt = 127
	HC_TryModeA = 0

	// []uint16 -> 1 + rand.Intn(65535)
	// size=256, autal=64 -> make([]bool, 256), primeInt = 251
	HC_TryModeB = 1
)

const (
	HC_OutputOfTryModeA = `make([]uint16, 128) and put 32 numbers in, the average count of hash collision is %v`
	HC_OutputOfTryModeB = `make([]uint16, 256) and put 64 numbers in, the average count of hash collision is %v`
)

func HC_SingleTryOnSpecificMode(tryMode int) int {
	var makeCount int
	var autal int
	var intN int
	var pInt int

	switch tryMode {
	case HC_TryModeA:
		makeCount, autal, intN, pInt = 128, 32, 65535, 127
	case HC_TryModeB:
		makeCount, autal, intN, pInt = 256, 64, 65535, 251
	default:
		panic(fmt.Errorf("HC_SingleTryOnSpecificMode: Unknown try mode %d was found", tryMode))
	}

	mapping := make([]bool, makeCount)
	boomCount := 0

	for i := 0; i < autal; i++ {
		var randInt *big.Int

		for {
			randInt, _ = rand.Int(rand.Reader, big.NewInt(int64(intN)))
			if len(randInt.Bits()) == 1 {
				break
			}
		}

		origunIndex := 1 + int(randInt.Bits()[0])
		autalIndex := origunIndex % pInt

		if mapping[autalIndex] {
			boomCount = boomCount + 1
		} else {
			mapping[autalIndex] = true
		}
	}

	return boomCount
}

func TestHashCollision(t *testing.T) {
	for mode := 0; mode < 2; mode++ {
		// get average count of hash collision
		sum := 0
		for i := 0; i < HC_TryCount; i++ {
			sum += HC_SingleTryOnSpecificMode(mode)
		}
		average := float64(sum) / float64(HC_TryCount)
		// output system testing answers
		switch mode {
		case HC_TryModeA:
			fmt.Printf(HC_OutputOfTryModeA+"\n", average)
		case HC_TryModeB:
			fmt.Printf(HC_OutputOfTryModeB+"\n", average)
		default:
			panic(fmt.Errorf("TestHashCollision: Unknown try mode %d was found", mode))
		}
	}
}
