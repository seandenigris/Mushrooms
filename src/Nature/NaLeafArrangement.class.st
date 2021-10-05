Class {
	#name : #NaLeafArrangement,
	#superclass : #NaLeafFeature,
	#category : #Nature
}

{ #category : #accessing }
NaLeafArrangement class >> all [
	^ { self alternate. self opposite. self rosette. self whorled }
]

{ #category : #accessing }
NaLeafArrangement class >> alternate [
	^ self new
		name: 'alternate';
		description: 'The leaves join the stem in pairs (Meredith, p. 17)';
		yourself
]

{ #category : #accessing }
NaLeafArrangement class >> opposite [
	^ self new
		name: 'opposite';
		description: 'The leaves join the stem singly, with each leaf farther along the stem than the one before it (Meredith, p. 17)';
		yourself
]

{ #category : #accessing }
NaLeafArrangement class >> rosette [
	^ self new
		name: 'rosette a.k.a. basal';
		description: 'Rather than growing along a stem, the leaves form a circle, with the bases of the leaves all going into the ground at a central point where they attach to the root (e.g. dandelions) (Meredith, p. 17)';
		yourself
]

{ #category : #accessing }
NaLeafArrangement class >> whorled [
	^ self new
		name: 'whorled';
		description: 'Three or more leaves attach at the same point on the stem, often forming a circle of leaves around that stem node (Meredith, p. 17)';
		yourself
]

{ #category : #accessing }
NaLeafArrangement >> printOn: aStream [
	aStream
		nextPutAll: self name;
		nextPutAll: ' leaf arrangement - ';
		nextPutAll: self description
]
