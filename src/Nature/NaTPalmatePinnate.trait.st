Trait {
	#name : #NaTPalmatePinnate,
	#instVars : [
		'isPinnate'
	],
	#category : #Nature
}

{ #category : #examples }
NaTPalmatePinnate classSide >> examplePalmate [
	<gtExample>
	^ self 
		given: []
		when: [ self palmate ]
		then: [ :e |
			e isPalmate should be: true.
			e isPinnate should be: false.
			e description should includeSubstring: 'like fingers' ]
]

{ #category : #examples }
NaTPalmatePinnate classSide >> examplePinnate [
	<gtExample>
	^ self 
		given: []
		when: [ self pinnate ]
		then: [ :e |
			e isPalmate should be: false.
			e isPinnate should be: true.
			e description should includeSubstring: 'like a feather' ]
]

{ #category : #'instance creation' }
NaTPalmatePinnate classSide >> palmate [
	| result |
	result := self new
		isPinnate: false;
		yourself.
		
	^ result
		description: (result description allButLast, ', spreading radially from a point, like fingers on a hand (Nelson)');
		yourself
]

{ #category : #'instance creation' }
NaTPalmatePinnate classSide >> pinnate [
	| result |
	result := self new
		isPinnate: true;
		yourself.
		
	^ result
		description: (result description allButLast, ', arranged on either side of a central axis like a feather (Nelson)');
		yourself
]

{ #category : #accessing }
NaTPalmatePinnate >> isPalmate [

	^ self isPinnate not
]

{ #category : #accessing }
NaTPalmatePinnate >> isPalmate: aBoolean [

	isPinnate := aBoolean not
]

{ #category : #accessing }
NaTPalmatePinnate >> isPinnate [

	^ isPinnate
]

{ #category : #accessing }
NaTPalmatePinnate >> isPinnate: anObject [

	isPinnate := anObject
]

{ #category : #accessing }
NaTPalmatePinnate >> printPalmateOrPinnateOn: aStream [

	aStream nextPutAll: (self isPinnate ifTrue: [ 'pinnately ' ] ifFalse: [ 'palmately ' ] ).
]
