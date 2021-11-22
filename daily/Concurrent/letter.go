package main

import (
	"fmt"
	"sync"
)

type FreqMap map[rune]int

func Frequency(s string) FreqMap {
	m := FreqMap{}
	for _, r := range s {
		m[r]++
	}
	return m
}

func ConcurrentFrequency(texts []string) FreqMap {

	freqChan := make(chan FreqMap)

	var wg sync.WaitGroup

	wg.Add(len(texts))

	go func() {
		wg.Wait()
		close(freqChan)
	}()

	for _, t := range texts {
		go func(text string) {
			freqChan <- Frequency(text)
			wg.Done()
		}(t)
	}

	result := make(FreqMap)
	for m := range freqChan {
		for k, v := range m {
			result[k] += v
		}
	}

	return result
}

func main() {

	fmt.Println(Frequency("Adzan Fajar"))
}
