Class {
	#name : 'DiceHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'arithmetic' }
DiceHandle >> + aDiceHandle [
	|handle|
	handle := DiceHandle new.
	dice do: [ :each | handle addDice: each ].
	aDiceHandle dice do: [ :each | handle addDice: each ].
	^handle
]

{ #category : 'initialization' }
DiceHandle >> addDice: aDice [
	dice add: aDice
]

{ #category : 'accessing' }
DiceHandle >> dice [
	^dice
]

{ #category : 'initialization' }
DiceHandle >> diceNumber [
	^dice size
]

{ #category : 'initialization' }
DiceHandle >> initialize [
	super initialize.
	dice := OrderedCollection new.
]

{ #category : 'initialization' }
DiceHandle >> roll [
	^dice sum: [ :aDice | aDice roll ]
]
