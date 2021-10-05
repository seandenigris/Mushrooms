Class {
	#name : #NaPlant,
	#superclass : #Object,
	#instVars : [
		'scientificName',
		'commonName',
		'orientation',
		'leafPart',
		'seedPart'
	],
	#category : #Nature
}

{ #category : #examples }
NaPlant class >> example [
	<gtExample>
	
	^ self
		given: []
		when: [ 
			| result |
			result := self new
				commonName: 'amaranth';
				scientificName: NaScientificName exampleAmaranth;
				orientation: '- Upright, branching, 2-7 feet tall, OR
- prostrate; form ground-hugging mats (Meredith p. 29)'
				yourself.
			result leaves isEdible: true.
			result seeds isEdible: true.
			result ]
		then: [ :e |
			e commonName should equal: 'amaranth'.
			e leaves where isEdible should equal: true.
			e seeds where isEdible should equal: true ]
]

{ #category : #accessing }
NaPlant >> commonName [

	^ commonName
]

{ #category : #accessing }
NaPlant >> commonName: anObject [

	commonName := anObject
]

{ #category : #accessing }
NaPlant >> leafPart: anObject [

	^ leafPart := anObject
]

{ #category : #accessing }
NaPlant >> leaves [
	^ leafPart ifNil: [ leafPart := NaPlantPart new ]
]

{ #category : #accessing }
NaPlant >> orientation [

	^ orientation
]

{ #category : #accessing }
NaPlant >> orientation: anObject [

	orientation := anObject
]

{ #category : #accessing }
NaPlant >> scientificName [

	^ scientificName
]

{ #category : #accessing }
NaPlant >> scientificName: anObject [

	scientificName := anObject
]

{ #category : #accessing }
NaPlant >> seedPart: anObject [

	^ seedPart := anObject
]

{ #category : #accessing }
NaPlant >> seeds [
	^ seedPart ifNil: [ seedPart := NaPlantPart new ]
]
