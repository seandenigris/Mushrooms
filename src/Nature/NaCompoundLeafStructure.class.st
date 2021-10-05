Class {
	#name : #NaCompoundLeafStructure,
	#superclass : #NaLeafStructure,
	#traits : 'NaTPalmatePinnate',
	#classTraits : 'NaTPalmatePinnate classTrait',
	#category : #Nature
}

{ #category : #accessing }
NaCompoundLeafStructure >> initialize [
	super initialize.
	self
		name: 'compound';
		description: 'divided into individual leaflets. Leaflets are distinguished from leaves in that there is no bud at the base (Nelson)'
]

{ #category : #accessing }
NaCompoundLeafStructure >> printOn: aStream [
	self printPalmateOrPinnateOn: aStream.
	super printOn: aStream
]
