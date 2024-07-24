Class {
	#name : #WPUser,
	#superclass : #Object,
	#instVars : [
		'id',
		'username',
		'name',
		'first_name',
		'last_name',
		'email',
		'url',
		'description',
		'link',
		'locale',
		'nickname',
		'slug',
		'registered_date'
	],
	#category : #'WordpressPharoAPI-Model'
}

{ #category : #accessing }
WPUser >> description [

	^ description
]

{ #category : #accessing }
WPUser >> description: anObject [

	description := anObject
]

{ #category : #accessing }
WPUser >> email [

	^ email
]

{ #category : #accessing }
WPUser >> email: anObject [

	email := anObject
]

{ #category : #accessing }
WPUser >> first_name [

	^ first_name
]

{ #category : #accessing }
WPUser >> first_name: anObject [

	first_name := anObject
]

{ #category : #accessing }
WPUser >> id [

	^ id
]

{ #category : #accessing }
WPUser >> id: anObject [

	id := anObject
]

{ #category : #accessing }
WPUser >> last_name [

	^ last_name
]

{ #category : #accessing }
WPUser >> last_name: anObject [

	last_name := anObject
]

{ #category : #accessing }
WPUser >> link [

	^ link
]

{ #category : #accessing }
WPUser >> link: anObject [

	link := anObject
]

{ #category : #accessing }
WPUser >> locale [

	^ locale
]

{ #category : #accessing }
WPUser >> locale: anObject [

	locale := anObject
]

{ #category : #accessing }
WPUser >> name [

	^ name
]

{ #category : #accessing }
WPUser >> name: anObject [

	name := anObject
]

{ #category : #accessing }
WPUser >> nickname [

	^ nickname
]

{ #category : #accessing }
WPUser >> nickname: anObject [

	nickname := anObject
]

{ #category : #accessing }
WPUser >> registered_date [

	^ registered_date
]

{ #category : #accessing }
WPUser >> registered_date: anObject [

	registered_date := anObject
]

{ #category : #accessing }
WPUser >> slug [

	^ slug
]

{ #category : #accessing }
WPUser >> slug: anObject [

	slug := anObject
]

{ #category : #accessing }
WPUser >> url [

	^ url
]

{ #category : #accessing }
WPUser >> url: anObject [

	url := anObject
]

{ #category : #accessing }
WPUser >> username [

	^ username
]

{ #category : #accessing }
WPUser >> username: anObject [

	username := anObject
]
