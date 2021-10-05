Class {
	#name : #NaScientificName,
	#superclass : #Object,
	#instVars : [
		'genus',
		'species'
	],
	#category : #Nature
}

{ #category : #examples }
NaScientificName class >> exampleAmaranth [
	<gtExample>
	
	^ self
		given: []
		when: [ 
			self new
				genus:'amaranthus';
				yourself
		]
		then: [ :e | e genus should = 'amaranthus' ]
]

{ #category : #accessing }
NaScientificName >> genus [

	^ genus
]

{ #category : #accessing }
NaScientificName >> genus: anObject [

	genus := anObject
]

{ #category : #accessing }
NaScientificName >> naSpecies [

	^ species
]

{ #category : #accessing }
NaScientificName >> species: anObject [

	species := anObject
]
