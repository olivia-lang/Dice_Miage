Class {
	#name : 'Dice',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
Dice class >> withFaces: aNumber [

	| instance |
	instance := self new.
	instance faces: aNumber.
	^instance
]

{ #category : 'initialization' }
Dice >> faces [
	^faces
]

{ #category : 'accessing' }
Dice >> faces: aNumber [
	faces := aNumber
]

{ #category : 'initialization' }
Dice >> initialize [
	super initialize.
	faces := 6
]

{ #category : 'printing' }
Dice >> printOn: aStream [
	super printOn: aStream .
	aStream nextPutAll: ' (', faces printString, ')'
]

{ #category : 'initialization' }
Dice >> roll [
	^faces := 6 atRandom 
]
