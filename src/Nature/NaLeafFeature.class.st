Class {
	#name : #NaLeafFeature,
	#superclass : #Object,
	#instVars : [
		'name',
		'description'
	],
	#category : #Nature
}

{ #category : #accessing }
NaLeafFeature >> description [
	^ description
]

{ #category : #accessing }
NaLeafFeature >> description: aString [
	description := aString
]

{ #category : #accessing }
NaLeafFeature >> images [
	self error: 'scan photos for tag'
]

{ #category : #accessing }
NaLeafFeature >> name [
	^ name
]

{ #category : #accessing }
NaLeafFeature >> name: aString [
	name := aString
]
