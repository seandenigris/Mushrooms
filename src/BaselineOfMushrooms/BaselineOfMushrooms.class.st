Class {
	#name : 'BaselineOfMushrooms',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfMushrooms'
}

{ #category : 'baseline' }
BaselineOfMushrooms >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'Magritte' with: [
				spec repository: 'github://seandenigris/Magritte' ];
			baseline: 'Mocketry' with: [
				spec repository: 'github://dionisiydk/Mocketry' ];
			baseline: 'PharoEnhancements' with: [
				spec repository: 'github://seandenigris/Pharo-Enhancements' ];
			baseline: 'SimplePersistence' with: [
				spec repository: 'github://seandenigris/Simple-Persistence' ].
		spec package: 'Mushrooms' with: [
				spec requires: #('Magritte' 'Mocketry' 'PharoEnhancements' 'SimplePersistence'). ]. ].
]

{ #category : 'accessing' }
BaselineOfMushrooms >> customProjectAttributes [
	^ self isGTImage
			ifFalse: [ #(notGToolkit) ]
			ifTrue: [ #(GToolkit) ]
]

{ #category : 'testing' }
BaselineOfMushrooms >> isGTImage [
	^ RPackageOrganizer default packageNames anySatisfy: [ :pn | pn beginsWith: 'GToolkit-' ]
]
