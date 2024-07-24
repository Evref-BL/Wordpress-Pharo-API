Class {
	#name : #BaselineOfWordpressPharoAPI,
	#superclass : #BaselineOf,
	#category : #BaselineOfWordpressPharoAPI
}

{ #category : #baselines }
BaselineOfWordpressPharoAPI >> baseline: spec [

	<baseline>
	spec for: #common do: [
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfWordpressPharoAPI >> defineDependencies: spec [

	spec
		baseline: 'NeoJSON'
		with: [ spec repository: 'github://svenvc/NeoJSON/repository' ]
]

{ #category : #baselines }
BaselineOfWordpressPharoAPI >> defineGroups: spec [
]

{ #category : #baselines }
BaselineOfWordpressPharoAPI >> definePackages: spec [

	spec
		package: 'WordpressPharoAPI'
		with: [ spec requires: #( 'WordpressPharoAPI-Model'
			   'NeoJSON' ) ].
	spec package: 'WordpressPharoAPI-Model'
]
