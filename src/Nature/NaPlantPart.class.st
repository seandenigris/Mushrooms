Class {
	#name : #NaPlantPart,
	#superclass : #Object,
	#instVars : [
		'isEdible',
		'shape'
	],
	#category : #Nature
}

{ #category : #accessing }
NaPlantPart >> isEdible [

	^ isEdible
]

{ #category : #accessing }
NaPlantPart >> isEdible: anObject [

	isEdible := anObject
]
