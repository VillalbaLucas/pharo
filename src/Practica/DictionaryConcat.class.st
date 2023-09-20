Class {
	#name : #DictionaryConcat,
	#superclass : #Dictionary,
	#category : #Practica
}

{ #category : #'as yet unclassified' }
DictionaryConcat >> ultimoDesde: unaClave [

(self includesKey: unaClave) ifFalse: [ ^unaClave  ]
	ifTrue: [ 
			|ultimaClave|
			ultimaClave:=unaClave.
			[self includesKey: ultimaClave] whileTrue: [ 
					ultimaClave := (self at: ultimaClave)
				 ].
			^ultimaClave
		 ]
]

{ #category : #'as yet unclassified' }
DictionaryConcat >> ultimos [
|newDic|
newDic:= Dictionary new.

self keysDo: [ :k | newDic at:k put: (self ultimoDesde: k) ].
^newDic 
]
