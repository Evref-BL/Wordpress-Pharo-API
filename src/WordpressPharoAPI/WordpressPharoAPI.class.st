Class {
	#name : #WordpressPharoAPI,
	#superclass : #Object,
	#instVars : [
		'znClient',
		'port',
		'endpoint',
		'basePath',
		'reader',
		'rawData'
	],
	#category : #WordpressPharoAPI
}

{ #category : #accessing }
WordpressPharoAPI >> basePath [

	^ basePath
]

{ #category : #accessing }
WordpressPharoAPI >> basePath: anObject [

	basePath := anObject
]

{ #category : #accessing }
WordpressPharoAPI >> endpoint [

	^ znClient host
]

{ #category : #accessing }
WordpressPharoAPI >> endpoint: anObject [

	znClient host: anObject
]

{ #category : #'api - posts' }
WordpressPharoAPI >> getPosts [

	self rawData ifFalse: [
		znClient contentReader: [ :entity |
			reader
				on: entity contents readStream;
				nextAs: #ArrayOfWPPost ] ].

	^ (znClient path: self basePath , '/posts') get
]

{ #category : #initialization }
WordpressPharoAPI >> initReader [

	reader := NeoJSONReader new.
	reader for: WPPost do: [ :mapping |
		mapping mapAllInstVars.
		(mapping mapInstVar: #date) valueSchema: DateAndTime ].

	reader for: DateAndTime customDo: [ :mapping |
		mapping decoder: [ :string | DateAndTime fromString: string ].
		mapping encoder: [ :dateAndTime | dateAndTime printString ] ].

	reader
		for: #ArrayOfWPPost
		customDo: [ :mapping | mapping listOfElementSchema: WPPost ]
]

{ #category : #initialization }
WordpressPharoAPI >> initialize [

	super initialize.
	znClient := ZnClient new.
	znClient forJsonREST.
	znClient https.
	rawData := false.
	self basePath: '/wp-json/wp/v2'.
	self initReader
]

{ #category : #accessing }
WordpressPharoAPI >> port [

	^ port
]

{ #category : #accessing }
WordpressPharoAPI >> port: anObject [

	port := anObject
]

{ #category : #accessing }
WordpressPharoAPI >> rawData [

	^ rawData
]

{ #category : #accessing }
WordpressPharoAPI >> rawData: anObject [

	rawData := anObject
]

{ #category : #configuration }
WordpressPharoAPI >> username: username password: password [

	self znClient username: username password: password
]

{ #category : #accessing }
WordpressPharoAPI >> znClient [

	^ znClient
]

{ #category : #accessing }
WordpressPharoAPI >> znClient: anObject [

	znClient := anObject
]
