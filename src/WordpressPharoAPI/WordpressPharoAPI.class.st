Class {
	#name : #WordpressPharoAPI,
	#superclass : #Object,
	#instVars : [
		'znClient',
		'port',
		'endpoint',
		'basePath',
		'reader',
		'rawData',
		'writer'
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

{ #category : #'api - media' }
WordpressPharoAPI >> createMedia: aWPMedia [

	self resetZnClient.
	znClient contentReader: [ :entity |
		reader
			on: entity contents readStream;
			nextAs: WPMedia ].
	znClient addPart:
		(ZnMimePart fieldName: #file fileNamed: aWPMedia data pathString).
	^ (znClient path: self basePath , '/media') post
]

{ #category : #'api - posts' }
WordpressPharoAPI >> createPost: aWPPost [

	self resetZnClient.
	znClient contentReader: [ :entity |
		reader
			on: entity contents readStream;
			nextAs: WPPost ].
	znClient contents: aWPPost.
	^ (znClient path: self basePath , '/posts') post
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

	self resetZnClient.
	self rawData ifFalse: [
		znClient contentReader: [ :entity |
			reader
				on: entity contents readStream;
				nextAs: #ArrayOfWPPost ] ].

	^ (znClient path: self basePath , '/posts') get
]

{ #category : #'api - users' }
WordpressPharoAPI >> getUsers [

	self resetZnClient.
	^ self getUsersNumberPerPage: nil
]

{ #category : #'api - users' }
WordpressPharoAPI >> getUsersNumberPerPage: numberPerPage [

	self resetZnClient.
	self rawData ifFalse: [
		znClient contentReader: [ :entity |
			reader
				on: entity contents readStream;
				nextAs: #ArrayOfWPUser ] ].
	znClient path: self basePath , '/users'.
	numberPerPage ifNotNil: [ :bodyFormat |
		znClient queryAt: #per_page put: numberPerPage ].

	^ znClient get
]

{ #category : #initialization }
WordpressPharoAPI >> initReader [

	reader := NeoJSONReader new.
	reader for: WPPost do: [ :mapping |
		mapping mapAllInstVars.
		(mapping mapInstVar: #date) valueSchema: DateAndTime ].

	reader for: WPMedia do: [ :mapping | mapping mapAllInstVars ].

	reader for: WPUser do: [ :mapping |
		mapping mapAllInstVars.
		(mapping mapInstVar: #registered_date) valueSchema: DateAndTime ].

	reader for: DateAndTime customDo: [ :mapping |
		mapping decoder: [ :string | DateAndTime fromString: string ].
		mapping encoder: [ :dateAndTime | dateAndTime printString ] ].

	reader
		for: #ArrayOfWPPost
		customDo: [ :mapping | mapping listOfElementSchema: WPPost ].

	reader
		for: #ArrayOfWPUser
		customDo: [ :mapping | mapping listOfElementSchema: WPUser ]
]

{ #category : #initialization }
WordpressPharoAPI >> initWriter [

	writer := NeoJSONWriter new.
	writer for: WPPost do: [ :mapping | mapping mapAllInstVars ].

	writer for: WPMedia do: [ :mapping | mapping mapAllInstVars ].
	writer for: DateAndTime customDo: [ :mapping |
		mapping encoder: [ :dateAndTime | dateAndTime printString ] ].

	znClient contentWriter: [ :data |
		ZnEntity json: (String streamContents: [ :str |
				 writer
					 on: str;
					 nextPut: data ]) ]
]

{ #category : #initialization }
WordpressPharoAPI >> initialize [

	super initialize.
	znClient := ZnClient new.
	znClient forJsonREST.
	znClient https.
	rawData := false.
	self basePath: '/wp-json/wp/v2'.
	self initReader.
	self initWriter
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
WordpressPharoAPI >> resetZnClient [

	znClient request url queryRemoveAll.
	znClient request entity: nil
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
