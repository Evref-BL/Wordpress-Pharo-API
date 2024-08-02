Class {
	#name : #WPMedia,
	#superclass : #Object,
	#instVars : [
		'title',
		'mime_type',
		'data',
		'date_gmt',
		'guid',
		'id',
		'link',
		'modified',
		'modified_gmt',
		'slug',
		'status',
		'type',
		'author',
		'comment_status',
		'meta',
		'alt_text',
		'caption',
		'description',
		'media_type',
		'post',
		'source_url',
		'missing_image_sizes'
	],
	#category : #'WordpressPharoAPI-Model'
}

{ #category : #accessing }
WPMedia >> alt_text [

	^ alt_text
]

{ #category : #accessing }
WPMedia >> alt_text: anObject [

	alt_text := anObject
]

{ #category : #accessing }
WPMedia >> author [

	^ author
]

{ #category : #accessing }
WPMedia >> author: anObject [

	author := anObject
]

{ #category : #accessing }
WPMedia >> caption [

	^ caption
]

{ #category : #accessing }
WPMedia >> caption: anObject [

	caption := anObject
]

{ #category : #accessing }
WPMedia >> comment_status [

	^ comment_status
]

{ #category : #accessing }
WPMedia >> comment_status: anObject [

	comment_status := anObject
]

{ #category : #accessing }
WPMedia >> data [
	"A file reference when creating a new media"
	^ data
]

{ #category : #accessing }
WPMedia >> data: anObject [
	"A file reference when creating a new media"
	data := anObject
]

{ #category : #accessing }
WPMedia >> date_gmt [

	^ date_gmt
]

{ #category : #accessing }
WPMedia >> date_gmt: anObject [

	date_gmt := anObject
]

{ #category : #accessing }
WPMedia >> description [

	^ description
]

{ #category : #accessing }
WPMedia >> description: anObject [

	description := anObject
]

{ #category : #accessing }
WPMedia >> guid [

	^ guid
]

{ #category : #accessing }
WPMedia >> guid: anObject [

	guid := anObject
]

{ #category : #accessing }
WPMedia >> id [

	^ id
]

{ #category : #accessing }
WPMedia >> id: anObject [

	id := anObject
]

{ #category : #accessing }
WPMedia >> link [

	^ link
]

{ #category : #accessing }
WPMedia >> link: anObject [

	link := anObject
]

{ #category : #accessing }
WPMedia >> media_type [

	^ media_type
]

{ #category : #accessing }
WPMedia >> media_type: anObject [

	media_type := anObject
]

{ #category : #accessing }
WPMedia >> meta [

	^ meta
]

{ #category : #accessing }
WPMedia >> meta: anObject [

	meta := anObject
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
WPMedia >> missing_image_sizes [

	^ missing_image_sizes
]

{ #category : #accessing }
WPMedia >> missing_image_sizes: anObject [

	missing_image_sizes := anObject
]

{ #category : #accessing }
WPMedia >> modified [

	^ modified
]

{ #category : #accessing }
WPMedia >> modified: anObject [

	modified := anObject
]

{ #category : #accessing }
WPMedia >> modified_gmt [

	^ modified_gmt
]

{ #category : #accessing }
WPMedia >> modified_gmt: anObject [

	modified_gmt := anObject
]

{ #category : #accessing }
WPMedia >> post [

	^ post
]

{ #category : #accessing }
WPMedia >> post: anObject [

	post := anObject
]

{ #category : #accessing }
WPMedia >> slug [

	^ slug
]

{ #category : #accessing }
WPMedia >> slug: anObject [

	slug := anObject
]

{ #category : #accessing }
WPMedia >> source_url [

	^ source_url
]

{ #category : #accessing }
WPMedia >> source_url: anObject [

	source_url := anObject
]

{ #category : #accessing }
WPMedia >> status [

	^ status
]

{ #category : #accessing }
WPMedia >> status: anObject [

	status := anObject
]

{ #category : #accessing }
WPMedia >> title [

	^ title
]

{ #category : #accessing }
WPMedia >> title: anObject [

	title := anObject
]

{ #category : #accessing }
WPMedia >> type [

	^ type
]

{ #category : #accessing }
WPMedia >> type: anObject [

	type := anObject
]
