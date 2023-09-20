Class {
	#name : #ParesDiccionario,
	#superclass : #OrderedCollection,
	#category : #Practica
}

{ #category : #'as yet unclassified' }
ParesDiccionario >> armaDiccionarioPar: blockp impar: blocki [
|dic|
dic:=Dictionary new.
1 to: (self size) do: [ :i | 
		( i odd ) ifTrue: [ dic at:i put:(blocki value: (self at: i))]
				ifFalse: [ dic at:i put:(blockp value: (self at: i))]
	 ].
^dic
]
