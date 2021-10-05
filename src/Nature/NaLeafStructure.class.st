"
# Reference
- [Nelson](https://www.cs.rochester.edu/users/faculty/nelson/wildflowers/glossaries/leaves/index.html)
- <https://www.cactus-art.biz/note-book/Dictionary/Dictionary_L/dictionary_leaf_margin.htm>
- <https://www.treehugger.com/id-trees-using-leaf-shape-venation-1343511>
"
Class {
	#name : #NaLeafStructure,
	#superclass : #NaLeafFeature,
	#category : #Nature
}

{ #category : #accessing }
NaLeafStructure class >> all [
	^ self withAllSubclasses flatCollect: [ :e | 
		| methods |
		methods := e class methodsInProtocol: #'instance creation'.
		methods collect: [ :m | e perform: m selector ] ]
]

{ #category : #'instance creation' }
NaLeafStructure class >> dissected [
	^ self new
		name: 'dissected';
		description: 'deeply or repeatedly cut into many partitions, but not into individual leaflets. Fern leaves are a classic example (Nelson)';
		yourself
]

{ #category : #'instance creation' }
NaLeafStructure class >> simple [
	^ self new
		name: 'simple';
		description: 'often convex, without partitions or lobes (Nelson)';
		yourself
]

{ #category : #accessing }
NaLeafStructure >> printOn: aStream [

	aStream
		nextPutAll: self name;
		nextPutAll: ' leaf structure'
]
