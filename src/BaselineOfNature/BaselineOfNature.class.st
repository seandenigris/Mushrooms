Class {
	#name : #BaselineOfNature,
	#superclass : #BaselineOf,
	#category : #BaselineOfNature
}

{ #category : #testing }
BaselineOfNature class >> isDynabook [
	^ true
]

{ #category : #baseline }
BaselineOfNature >> baseline: spec [
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
		spec package: 'Nature' with: [
				spec requires: #('Magritte' 'Mocketry' 'PharoEnhancements' 'SimplePersistence'). ]. ].
]

{ #category : #accessing }
BaselineOfNature >> customProjectAttributes [
	^ self isGTImage
			ifFalse: [ #(notGToolkit) ]
			ifTrue: [ #(GToolkit) ]
]

{ #category : #testing }
BaselineOfNature >> isGTImage [
	^ RPackageOrganizer default packageNames anySatisfy: [ :pn | pn beginsWith: 'GToolkit-' ]
]
