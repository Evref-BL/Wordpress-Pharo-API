Class {
	#name : #WPPost,
	#superclass : #Object,
	#instVars : [
		'id',
		'date',
		'status',
		'link',
		'title',
		'author',
		'content'
	],
	#category : #'WordpressPharoAPI-Model'
}

{ #category : #accessing }
WPPost >> author [

	^ author
]

{ #category : #accessing }
WPPost >> author: anObject [

	author := anObject
]

{ #category : #accessing }
WPPost >> content [

	^ content
]

{ #category : #accessing }
WPPost >> content: anObject [

	content := anObject
]

{ #category : #accessing }
WPPost >> date [

	^ date
]

{ #category : #accessing }
WPPost >> date: anObject [

	date := anObject
]

{ #category : #accessing }
WPPost >> id [

	^ id
]

{ #category : #accessing }
WPPost >> id: anObject [

	id := anObject
]

{ #category : #accessing }
WPPost >> link [

	^ link
]

{ #category : #accessing }
WPPost >> link: anObject [

	link := anObject
]

{ #category : #accessing }
WPPost >> status [

	^ status
]

{ #category : #accessing }
WPPost >> status: anObject [

	status := anObject
]

{ #category : #accessing }
WPPost >> title [

	^ title
]

{ #category : #accessing }
WPPost >> title: anObject [

	title := anObject
]
