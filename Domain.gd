class_name Domain
extends node

const LETTERSCORE = {"a": 1, "e": 1, "i": 1, "o" : 1, "u": 1, "l": 1, "n": 1, "s": 1, "t": 1, "r": 1, "d": 2, "g": 2, "b": 3, "c": 3, "m": 3, "p": 3, "f": 4, "h": 4, "v": 4, "w": 4, "y": 4, "k": 5, "j": 8, "x": 8, "q": 10, "z": 10}
const LENGTHBASE = 2
const LENGTHXSHIFT = 5
const LENGTHYSHIFT = 1
const VOWELS = ["a", "e", "i", "o", "u"]
const COMPANIES = ["google", "vlc", "coke", "microsoft"]
const VOWELMOD = 1.5

func getPrice(domain: String, globalModifier: int) -> int:
	var score = 0

	var letterScore = LETTERSCORE
	for c in domain:
		score += letterScore[c]
		letterScore[c] = letterScore[c] - 1

	if (score < 1):
		score = 1

	
	var lengthMod = 1
	for i in range((domain.length() * -1) + LENGTHXSHIFT):
		lengthMod *= LENGTHBASE

	lengthMod += LENGTHYSHIFT
	score *= lengthMod

	var hasVowel = false
	for c in domain:
		if c in VOWELS:
			hasVowel = true

	if (!hasVowel):
		score = (score * VOWELMOD) as int

	for company in COMPANIES:
		if domain.contains(company):
			score *= 5

	score *= globalModifier

	return score as int
