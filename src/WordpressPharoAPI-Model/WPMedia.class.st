Class {
	#name : #WPMedia,
	#superclass : #Object,
	#instVars : [
		'title',
		'mime_type',
		'data'
	],
	#category : #'WordpressPharoAPI-Model'
}

{ #category : #accessing }
WPMedia >> data [

	^ data
]

{ #category : #accessing }
WPMedia >> data: anObject [

	data := anObject
]

{ #category : #accessing }
WPMedia >> mime_type [

	^ mime_type
]

{ #category : #accessing }
WPMedia >> mime_type: anObject [

	mime_type := anObject
]

{ #category : #accessing }
WPMedia >> title [

	^ title
]

{ #category : #accessing }
WPMedia >> title: anObject [

	title := anObject
]
