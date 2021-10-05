Class {
	#name : #NaLobedLeafStructure,
	#superclass : #NaLeafStructure,
	#traits : 'NaTPalmatePinnate',
	#classTraits : 'NaTPalmatePinnate classTrait',
	#category : #Nature
}

{ #category : #'as yet unclassified' }
NaLobedLeafStructure >> initialize [
	super initialize.
	self
		name: 'lobed';
		description: 'having distinct protrusions, either round or pointed (Nelson)'
]

{ #category : #accessing }
NaLobedLeafStructure >> printOn: aStream [
	self printPalmateOrPinnateOn: aStream.
	super printOn: aStream
]
