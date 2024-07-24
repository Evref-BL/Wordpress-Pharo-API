# Wordpress-Pharo-API

This is a client for the [WordpressAPI](https://developer.wordpress.org/rest-api/reference/posts/).

## Installation

```st
Metacello new
  githubUser: 'Evref-BL' project: 'Wordpress-Pharo-API' commitish: 'main' path: 'src';
  baseline: 'WordpressPharoAPI';
  load
```

## Connect the API to Wordpress

The first step before querying is to connect to the Wordpress API.


```smalltalk
wordpressAPI := WordpressPharoAPI new.
wordpressAPI endpoint: '<mywordpress>'.
wordpressAPI username: '<myusername>' password: '<mypassword>'.
```

## Example

### Get recent posts

```smalltalk
wordpressAPI getPosts
```

### Publish a post

```smalltalk
myPost := WPPost new.
myPost date: DateAndTime tomorrow.
myPost status: 'draft'.
myPost title: 'FirstTest'.
myPost author: 28.
myPost content: 'First content'.

wordpressAPI createPost: myPost.
```
