'From Cuis 5.0 [latest update: #4526] on 21 February 2021 at 11:30:35 am'!
'Description The core objects package of the AweSOM (Simple object machine) implementation,
which contains the core objects used by the interpreter and vm.

Original authors: Arvid Heise, Matthias Kleine, Robert Krahn, Michael Haupt.
License: MIT'!
!provides: 'AweSOM-CoreObjects' 1 10!
!requires: 'AweSOM-Meta' 1 2 nil!
SystemOrganization addCategory: 'AweSOM-CoreObjects'!


!classDefinition: #SOMObject category: 'AweSOM-CoreObjects'!
Object subclass: #SOMObject
	instanceVariableNames: 'universe theHash fields indexableFields somClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMObject class' category: 'AweSOM-CoreObjects'!
SOMObject class
	instanceVariableNames: ''!

!classDefinition: #SOMArray category: 'AweSOM-CoreObjects'!
SOMObject subclass: #SOMArray
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMArray class' category: 'AweSOM-CoreObjects'!
SOMArray class
	instanceVariableNames: ''!

!classDefinition: #SOMFrame category: 'AweSOM-CoreObjects'!
SOMArray subclass: #SOMFrame
	instanceVariableNames: 'somPreviousFrame somContext somMethod stackPointer bytecodeIndex localOffset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMFrame class' category: 'AweSOM-CoreObjects'!
SOMFrame class
	instanceVariableNames: ''!

!classDefinition: #SOMBlock category: 'AweSOM-CoreObjects'!
SOMObject subclass: #SOMBlock
	instanceVariableNames: 'somBlockMethod somContext'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMBlock class' category: 'AweSOM-CoreObjects'!
SOMBlock class
	instanceVariableNames: ''!

!classDefinition: #SOMClass category: 'AweSOM-CoreObjects'!
SOMObject subclass: #SOMClass
	instanceVariableNames: 'somSuperClass somName somInstanceFields somInstanceInvokables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMClass class' category: 'AweSOM-CoreObjects'!
SOMClass class
	instanceVariableNames: ''!

!classDefinition: #SOMInvokable category: 'AweSOM-CoreObjects'!
SOMObject subclass: #SOMInvokable
	instanceVariableNames: 'somSignature somHolder somNumberOfArguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMInvokable class' category: 'AweSOM-CoreObjects'!
SOMInvokable class
	instanceVariableNames: ''!

!classDefinition: #SOMBlockEvaluation category: 'AweSOM-CoreObjects'!
SOMInvokable subclass: #SOMBlockEvaluation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMBlockEvaluation class' category: 'AweSOM-CoreObjects'!
SOMBlockEvaluation class
	instanceVariableNames: ''!

!classDefinition: #SOMMethod category: 'AweSOM-CoreObjects'!
SOMInvokable subclass: #SOMMethod
	instanceVariableNames: 'numberOfLocals maxStackDepth bytecodes constants lexicalContext'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMMethod class' category: 'AweSOM-CoreObjects'!
SOMMethod class
	instanceVariableNames: ''!

!classDefinition: #SOMPrimitive category: 'AweSOM-CoreObjects'!
SOMInvokable subclass: #SOMPrimitive
	instanceVariableNames: 'realSignature'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMPrimitive class' category: 'AweSOM-CoreObjects'!
SOMPrimitive class
	instanceVariableNames: ''!

!classDefinition: #SOMNumber category: 'AweSOM-CoreObjects'!
SOMObject subclass: #SOMNumber
	instanceVariableNames: 'number'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMNumber class' category: 'AweSOM-CoreObjects'!
SOMNumber class
	instanceVariableNames: ''!

!classDefinition: #SOMBigInteger category: 'AweSOM-CoreObjects'!
SOMNumber subclass: #SOMBigInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMBigInteger class' category: 'AweSOM-CoreObjects'!
SOMBigInteger class
	instanceVariableNames: ''!

!classDefinition: #SOMDouble category: 'AweSOM-CoreObjects'!
SOMNumber subclass: #SOMDouble
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMDouble class' category: 'AweSOM-CoreObjects'!
SOMDouble class
	instanceVariableNames: ''!

!classDefinition: #SOMInteger category: 'AweSOM-CoreObjects'!
SOMNumber subclass: #SOMInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMInteger class' category: 'AweSOM-CoreObjects'!
SOMInteger class
	instanceVariableNames: ''!

!classDefinition: #SOMString category: 'AweSOM-CoreObjects'!
SOMObject subclass: #SOMString
	instanceVariableNames: 'string'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMString class' category: 'AweSOM-CoreObjects'!
SOMString class
	instanceVariableNames: ''!

!classDefinition: #SOMSymbol category: 'AweSOM-CoreObjects'!
SOMString subclass: #SOMSymbol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMSymbol class' category: 'AweSOM-CoreObjects'!
SOMSymbol class
	instanceVariableNames: ''!

!classDefinition: #SOMSystem category: 'AweSOM-CoreObjects'!
SOMObject subclass: #SOMSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-CoreObjects'!
!classDefinition: 'SOMSystem class' category: 'AweSOM-CoreObjects'!
SOMSystem class
	instanceVariableNames: ''!


!SOMMethod commentStamp: '' prior: 0!
Bytecodes are currently stored in a separate collection. This is not the way it is implemented in cppsom.!

!SOMObject class methodsFor: 'compiling'!
doneCompiling
	super doneCompiling.! !

!SOMObject methodsFor: 'printing'!
printOn: stream

	"When self is in SOMUniverse globals then print
	symbol of self as found in global dictionary"
	(self universe symbolFor: self) ifNotNil: [:sym |
		stream
			nextPutAll: 'SOMGlobal(';
			nextPutAll: sym;
			nextPut: $).
		^ self].
	self somClass ifNil: [
		stream nextPutAll: 'a SOMObject without class'.
		^ self].
	stream
		nextPutAll: 'a SOM';
		nextPutAll: self somClass somName string! !

!SOMArray methodsFor: 'printing' stamp: 'jpb 4/11/2020 13:17:06'!
printOn: stream

	stream nextPutAll: 'SOMArray'.
	
	stream nextPut: ${.
	self elements do: [:el | el printOn: stream] separatedBy: [ stream nextPutAll: '. '].
	stream nextPut: $}.! !

!SOMFrame methodsFor: 'printing'!
printOn: stream

	stream nextPutAll: 'SOMFrame:'.
	stream cr.
	self printStackOn: stream! !

!SOMInvokable methodsFor: 'accessing'!
printOn: stream

	self somSignature = universe globalNil
		ifTrue: [^ stream nextPutAll: '<anonymous SOMMethod>'].
	
	stream
		nextPut: $<;
		nextPutAll: self class name; space;
		nextPutAll: (self somHolder = universe globalNil
							ifTrue: [ 'nil' ]
							ifFalse: [ self somHolder somName symbol asString]);
		nextPutAll: '>>#';
		nextPutAll:( self somSignature
							ifNil: [ 'nil' ]
							ifNotNil: [ self somSignature string ]);
		nextPut: $>.! !

!SOMNumber methodsFor: 'printing'!
printOn: stream

	stream 
		nextPutAll: 'SOMNumber(';
		print: self number;
		nextPut: $).! !

!SOMString methodsFor: 'printing'!
printOn: stream

	stream 
		nextPutAll: self className;
		nextPut: $(;
		nextPutAll: self string printString;
		nextPut: $).! !

!SOMObject methodsFor: 'primitives'!
primEqualEqual: otherObject 

	^ self universe newBool: self == otherObject! !

!SOMObject methodsFor: 'primitives'!
primclass
	^ somClass! !

!SOMObject methodsFor: 'primitives'!
primhalt
	Halt now.
	self universe interpreter showInspection.! !

!SOMObject methodsFor: 'primitives'!
primhashcode

	^ universe newNumber: self hash! !

!SOMObject methodsFor: 'primitives'!
priminspect
	self inspect.
	Halt now.! !

!SOMObject methodsFor: 'primitives'!
priminstVarAt: idx
	^ self fieldAtIndex: idx number.! !

!SOMObject methodsFor: 'primitives'!
priminstVarAt: idx put: val
	^ self fieldAtIndex: idx number put: val.! !

!SOMObject methodsFor: 'primitives'!
priminstVarNamed: aSOMSymbol
	^ self valueInField: aSOMSymbol! !

!SOMObject methodsFor: 'primitives'!
primobjectSize

	"basic object size in SOM++ is: 5 words (vtable, hash, objectSize, numberOfFields, gcField)
	basic object size in AweSOM is: 5 words (universe, hash, objectSize, numberOfFields, gcField)
	additional words are needed for each field
	word is 4 byte and objectSize returns the size in bytes (32-bit aligned)"
	^ self universe newNumber:
		(self class instSize - 1 +
		self numberOfIndexableFields) * 4! !

!SOMObject methodsFor: 'primitives'!
primperform: aSOMSymbol
	self sendMessage: aSOMSymbol symbol
		withArguments: 
			(universe newArray: 0).
	
	^ nil "return nil, to avoid pushing a wrong return value on the stack."! !

!SOMObject methodsFor: 'primitives'!
primperform: aSOMSymbol inSuperclass: class
	self
		sendMessage: aSOMSymbol symbol
		withArguments: (universe newArray: 0)
		inClass: class.
	
	^ nil "return nil, to avoid pushing a wrong return value on the stack."! !

!SOMObject methodsFor: 'primitives'!
primperform: aSOMSymbol withArguments: args
	self sendMessage: aSOMSymbol symbol
		withArguments: args.
	
	^ nil "return nil, to avoid pushing a wrong return value on the stack."! !

!SOMObject methodsFor: 'primitives'!
primperform: aSOMSymbol withArguments: args inSuperclass: class
	self
		sendMessage: aSOMSymbol symbol
		withArguments: args
		inClass: class.
	
	^ nil "return nil, to avoid pushing a wrong return value on the stack."! !

!SOMObject methodsFor: 'testing'!
isClass

	^ false! !

!SOMObject methodsFor: 'testing'!
isSOMNumber

	^ false! !

!SOMObject methodsFor: 'testing'!
isSOMObject

	^ true! !

!SOMObject methodsFor: 'testing'!
isSOMSymbol

	^ false! !

!SOMObject methodsFor: 'accessing'!
fieldAtIndex: index
	^ fields at: index! !

!SOMObject methodsFor: 'accessing'!
fieldAtIndex: index put: object
	^ fields at: index put: object! !

!SOMObject methodsFor: 'accessing'!
fields
	^ fields! !

!SOMObject methodsFor: 'accessing'!
fields: anObject
	fields := anObject! !

!SOMObject methodsFor: 'accessing'!
indexOfField: aSOMSymbol 
	^ self somClass indexOfInstanceField: aSOMSymbol! !

!SOMObject methodsFor: 'accessing'!
indexableFields
	^ indexableFields! !

!SOMObject methodsFor: 'accessing'!
indexableFields: anObject
	indexableFields := anObject! !

!SOMObject methodsFor: 'accessing'!
number
	"Needed to allow value equality for SOMNumber objects in SOMNumber>>#primEqualEqual:"
	^ nil! !

!SOMObject methodsFor: 'accessing'!
numberOfFields
	^ fields size! !

!SOMObject methodsFor: 'accessing'!
numberOfIndexableFields
	^ self indexableFields size! !

!SOMObject methodsFor: 'accessing'!
setDefaultClass
	| somName |
	somName := self class somName.
	(universe hasGlobalAt: somName) ifTrue: [ self somClass: (universe globalAt: somName) ]! !

!SOMObject methodsFor: 'accessing'!
somClass

	self flag: #rkrk. "Hack. Some objects don't have a proper class...'"
	(somClass isKindOf: SOMClass)
		ifFalse: [self setDefaultClass].
	^ somClass! !

!SOMObject methodsFor: 'accessing'!
somClass: anObject 
	somClass := anObject! !

!SOMObject methodsFor: 'accessing'!
theHash
	^ theHash! !

!SOMObject methodsFor: 'accessing'!
theHash: anObject
	theHash := anObject! !

!SOMObject methodsFor: 'accessing'!
universe
	^ universe! !

!SOMObject methodsFor: 'accessing'!
universe: anObject
	universe := anObject! !

!SOMObject methodsFor: 'accessing'!
valueInField: fieldName

	^ self fieldAtIndex: (self indexOfField: fieldName)! !

!SOMObject methodsFor: 'accessing'!
valueInField: fieldName put: value

	self 
		fieldAtIndex: (self indexOfField: fieldName)
		put: value! !

!SOMObject methodsFor: 'accessing'!
wipe
	1 to: self numberOfFields do: [ :i | self fieldAtIndex: i put: universe globalNil ]! !

!SOMObject methodsFor: 'initialize-release'!
postInitialize! !

!SOMObject methodsFor: 'message sending'!
performPrimitive: selector withArguments: arguments

	^ self perform: selector withArguments: arguments! !

!SOMObject methodsFor: 'message sending'!
sendMessage: message withArguments: args 
	self sendMessage: message withArguments: args inClass: self somClass! !

!SOMObject methodsFor: 'message sending'!
sendMessage: message withArguments: args inClass: class
	| frame invokable |
	frame := self universe interpreter somFrame.
	frame push: self.
	args do: [ :arg | frame push: arg ].
	invokable := class lookupInvokable: message.
	invokable invokeInFrame: frame! !

!SOMObject class methodsFor: 'instance creation'!
inUniverse: universe

	^ self
		inUniverse: universe
		withNumberOfAdditionalFields: 0! !

!SOMObject class methodsFor: 'instance creation'!
inUniverse: universe withNumberOfAdditionalFields: numberOfFields

	^ self
		inUniverse: universe
		withNumberOfAdditionalFields: numberOfFields
		withNumberOfIndexableFields: 0! !

!SOMObject class methodsFor: 'instance creation'!
inUniverse: universe withNumberOfAdditionalFields: nFields withNumberOfIndexableFields: nIndexableFields

	"It is called 'Additional' because it's the number of fields that are
	allocated in addition to the shared fields"
	| result nilObject |
	nilObject := universe globalNil.
	result := self basicNew
		universe: universe;
		fields: (Array new: nFields);
		indexableFields: (Array new: nIndexableFields withAll: nilObject);
		yourself.
	result
		wipe;
		setDefaultClass;
		initialize;
		postInitialize.

	^ result! !

!SOMObject class methodsFor: 'instance creation'!
inUniverse: universe withSomClass: aSOMClass 
	| numberOfAdditionalFields |
	numberOfAdditionalFields := aSOMClass numberOfInstanceFields.
	^ (self 
		inUniverse: universe
		withNumberOfAdditionalFields: numberOfAdditionalFields)
		somClass: aSOMClass;
		yourself! !

!SOMObject class methodsFor: 'instance creation'!
inUniverse: universe withSomClass: aSOMClass numIndexable: numIndexable 
	| numberOfAdditionalFields |
	numberOfAdditionalFields := aSOMClass numberOfInstanceFields.
	^ (self 
		inUniverse: universe
		withNumberOfAdditionalFields: numberOfAdditionalFields
		withNumberOfIndexableFields: numIndexable)
		somClass: aSOMClass;
		yourself! !

!SOMObject class methodsFor: 'instance creation'!
new
	self error: 'Use factory methods instead.'! !

!SOMObject class methodsFor: 'accessing'!
somName
	^ (self name allButFirst: 3) asSymbol! !

!SOMArray methodsFor: 'accessing'!
at: index
	^ self indexableFields at: index! !

!SOMArray methodsFor: 'accessing'!
at: index put: object
	^ self indexableFields at: index put: object! !

!SOMArray methodsFor: 'accessing'!
elements
	^ self indexableFields! !

!SOMArray methodsFor: 'accessing'!
indexOf: element 
	^ self indexableFields indexOf: element! !

!SOMArray methodsFor: 'accessing'!
size
	^ self indexableFields size! !

!SOMArray methodsFor: 'accessing'!
wipeIndexableFields
	1 to: self elements size do: [ :i | self at: i put: universe globalNil ]! !

!SOMArray methodsFor: 'copying'!
copyFrom: fromIndex to: toIndex

	^ self indexableFields copyFrom: fromIndex to: toIndex! !

!SOMArray methodsFor: 'primitives'!
primat: index

	^ self at: index number.! !

!SOMArray methodsFor: 'primitives'!
primat: index put: object

	^ self at: index number put: object.! !

!SOMArray methodsFor: 'primitives'!
primlength

	^ universe newNumber: self size! !

!SOMArray methodsFor: 'adding'!
add: item
	
	self resize: self size + 1.
	self at: self size put: item! !

!SOMArray methodsFor: 'enumerating'!
do: block

	self indexableFields do: block! !

!SOMArray methodsFor: 'enumerating'!
withIndexDo: block
	indexableFields withIndexDo: block! !

!SOMArray methodsFor: 'resizing'!
resize: newSize
	newSize < self size
		ifTrue: [self indexableFields: (self indexableFields copyFrom: 1 to: newSize)]
		ifFalse: [self indexableFields: (self indexableFields, (Array new: newSize - self size))]! !

!SOMArray class methodsFor: 'as yet unclassified'!
inUniverse: universe size: size

	^ self
		inUniverse: universe
		withNumberOfAdditionalFields: 0
		withNumberOfIndexableFields: size! !

!SOMArray class methodsFor: 'as yet unclassified'!
inUniverse: universe withAll: squeakColl

	| result |
	result := self inUniverse: universe size: squeakColl size.
	squeakColl withIndexDo: [:each :i | result at: i put: each].
	^ result! !

!SOMArray class methodsFor: 'primitives'!
primnew: size inSomClass: somClass
	^ self 
		inUniverse: somClass universe
		size: size number! !

!SOMFrame methodsFor: 'printing'!
printBytecodes

	self printBytecodesOn: Transcript.
	Transcript endEntry! !

!SOMFrame methodsFor: 'printing'!
printBytecodesOn: stream

	"prints value of stack pointer and the current bytecodes"
	stream
		nextPutAll: 'Method: ';
		nextPutAll: self somMethod asString.
	self somMethod numberOfArguments > 0 ifTrue: [
		stream
			nextPutAll: ' in object: ';
			nextPutAll: (self argumentAtIndex: 1 contextLevel: 1) asString].
	stream lf.
	self somMethod bytecodes doWithIndex: [:bc :index |
		index = (self bytecodeIndex - 1) ifTrue: [stream nextPutAll: '->'].
		stream nextPutAll: bc asString; lf.
	]! !

!SOMFrame methodsFor: 'printing'!
printStack
	
	self printStackOn: Transcript.
	Transcript endEntry.! !

!SOMFrame methodsFor: 'printing'!
printStackElement: somObject atIndex: index on: stream 
	
	| somNil somClazz |
	stream
		nextPutAll: '[';
		nextPutAll: index asString;
		nextPutAll: '] '.
		
	index <= self somMethod numberOfArguments 
		ifTrue: [stream nextPutAll: '(arg '; nextPutAll: index asString; nextPutAll: ') '].
	((index > self somMethod numberOfArguments) and: [index <= (self somMethod numberOfLocals + self somMethod numberOfArguments)])
		ifTrue: [stream nextPutAll: '(local '; nextPutAll: (index - self somMethod numberOfArguments) asString; nextPutAll: ') '].
			
	somNil := self universe globalNil.
	(somObject isNil or: [ somObject == somNil ]) ifTrue: 
		[ stream
			nextPutAll: 'nil';
			lf.
		^ self ].
	somClazz := [somObject somClass] on: Error do: [somObject].
	(somClazz isNil or: [ somClazz == somNil ]) ifTrue: 
		[ stream
			nextPutAll: 'object without class';
			lf.
		^ self ].
	stream
		nextPutAll: somObject asString;
		nextPutAll: ' with class: ';
		nextPutAll: somClazz asString;
		lf! !

!SOMFrame methodsFor: 'printing'!
printStackOn: stream
	"prints value of stack pointer and the content of each stack slot"

	stream nextPutAll: '    Method: ';
		nextPutAll: self somMethod asString;
		lf;
		nextPutAll: '    Stackpointer: ';
		nextPutAll: self stackPointer asString;
		lf.
	
	self stackPointer to: 1 by: -1 do:
		[ :index |
		| somObject |
		index = self stackPointer ifTrue: [stream nextPutAll: '-> ']
									   ifFalse:[stream nextPutAll: '   '].
		somObject := self at: index.
		self printStackElement: somObject atIndex: index on: stream ]! !

!SOMFrame methodsFor: 'copying'!
copyArgumentsFrom: oldFrame

	| numArgs |
	numArgs := self somMethod numberOfArguments.
	1 to: numArgs do: [:argIndex |
		self 
			at: argIndex
			put: (oldFrame stackElementAtIndex: numArgs - argIndex + 1)].! !

!SOMFrame methodsFor: 'debugging'!
installStep

	| stepBytecodeIndex |
	"find next send or popLocal"
	stepBytecodeIndex := (bytecodeIndex to: self somMethod bytecodes size)
		detect: [:index |
			{SOMBCSend. SOMBCSuperSend. SOMBCPopLocal. SOMBCReturnLocal. SOMBCReturnNonLocal} 
				anySatisfy: [:bytecodeClass | 
					(self somMethod bytecodeAt: index) isKindOf: bytecodeClass]]
		ifNone: [
			self somPreviousFrame ~= universe globalNil
				ifTrue: [self somPreviousFrame installStep].			
			^ self ].
		
	self installStepBytecodeAt: stepBytecodeIndex.! !

!SOMFrame methodsFor: 'debugging'!
installStepBytecode

	"find next bytecode or look in caller frame"
	bytecodeIndex > self somMethod bytecodes size
		ifTrue: [
			self somPreviousFrame ~= universe globalNil
				ifTrue: [self somPreviousFrame installStepBytecode].			
			^ self ].
		
	self installStepBytecodeAt: bytecodeIndex! !

!SOMFrame methodsFor: 'debugging'!
installStepBytecodeAt: stepBytecodeIndex
	"replace next bytecode with step bytecode"
	
	| bytecode stepBytecode |
	bytecode := self somMethod bytecodeAt: stepBytecodeIndex.
	bytecode ifKindOf: SOMBCStep thenDo: [^ bytecode owningFrames add: self].
	stepBytecode := (SOMBCStep new)
		originalBytecode: bytecode;
		owningFrames: {self} asSet;
		yourself.
	self somMethod bytecodeAt: stepBytecodeIndex put: stepBytecode! !

!SOMFrame methodsFor: 'testing'!
hasContext
	^ self somContext ~= self universe globalNil! !

!SOMFrame methodsFor: 'testing'!
hasPreviousFrame
	
	^ self somPreviousFrame ~~ self universe globalNil! !

!SOMFrame methodsFor: 'testing'!
isBootstrapFrame
	^ self hasPreviousFrame not! !

!SOMFrame methodsFor: 'stack manipulation'!
pop

	| oldPosition |
	oldPosition := self stackPointer.
	oldPosition <= (self somMethod numberOfLocals + self somMethod numberOfArguments) 
		ifTrue: [self error: 'Stack is empty'].
	self stackPointer: oldPosition - 1.
	^ self at: oldPosition! !

!SOMFrame methodsFor: 'stack manipulation'!
popN: numOfElements

	| oldPosition |
	numOfElements = 0 ifTrue: [^ {}].
	oldPosition := self stackPointer.
	oldPosition < (self somMethod numberOfLocals + self somMethod numberOfArguments + numOfElements) 
		ifTrue: [self error: 'Stack is empty'].
	self stackPointer: oldPosition - numOfElements.
	^ self copyFrom: oldPosition - numOfElements + 1 to: oldPosition! !

!SOMFrame methodsFor: 'stack manipulation'!
push: object

	self stackPointer: self stackPointer + 1.
	self at: self stackPointer put: object.! !

!SOMFrame methodsFor: 'stack manipulation'!
removeN: numOfElements

	| oldPosition |
	numOfElements = 0 ifTrue: [^ self].
	oldPosition := self stackPointer.
	oldPosition < (self somMethod numberOfLocals + self somMethod numberOfArguments + numOfElements) 
		ifTrue: [self error: 'Stack is empty'].
	self stackPointer: oldPosition - numOfElements.! !

!SOMFrame methodsFor: 'initialization'!
initialize
	somContext := universe globalNil.
	self localOffset: 0.
	self bytecodeIndex: 0.
	self stackPointer: 0.
	self clearPreviousFrame! !

!SOMFrame methodsFor: 'initialization'!
resetStackPointer
	self localOffset: 
		(self somMethod numberOfArguments).
	self stackPointer: 
		(self somMethod numberOfLocals + self somMethod numberOfArguments) ! !

!SOMFrame methodsFor: 'as yet unclassified'!
argumentAtIndex: index contextLevel: level

	| contextFrame |
	contextFrame := self frameAtContextLevel: level.
	
	index > contextFrame somMethod numberOfArguments
		ifTrue: [self error: 'index > #args'].
		
	^ contextFrame at: index! !

!SOMFrame methodsFor: 'as yet unclassified'!
argumentAtIndex: index contextLevel: level put: object
	| contextFrame |
	contextFrame := self frameAtContextLevel: level.
	
	index > contextFrame somMethod numberOfArguments 
		ifTrue: [self error: 'index > #args'].
		
	(self frameAtContextLevel: level)
		at: index put: object! !

!SOMFrame methodsFor: 'as yet unclassified'!
clearPreviousFrame
	self somPreviousFrame: self universe globalNil! !

!SOMFrame methodsFor: 'as yet unclassified'!
frameAtContextLevel: level 
	| frame |
	frame := self.
	level - 1 timesRepeat: [ frame := frame somContext ].
	^ frame! !

!SOMFrame methodsFor: 'as yet unclassified'!
localAtIndex: index contextLevel: level
	|contextFrame|
	contextFrame := self frameAtContextLevel: level.
	^ contextFrame at: (contextFrame localOffset + index)! !

!SOMFrame methodsFor: 'as yet unclassified'!
localAtIndex: index contextLevel: level put: object
	|contextFrame|
	contextFrame := self frameAtContextLevel: level.
	contextFrame at: (contextFrame localOffset + index) put: object! !

!SOMFrame methodsFor: 'as yet unclassified'!
remainingStackSize
	^ self numberOfIndexableFields - self stackPointer! !

!SOMFrame methodsFor: 'as yet unclassified'!
stackElementAtIndex: index
	^ self at: (self stackPointer - index + 1) ! !

!SOMFrame methodsFor: 'as yet unclassified'!
stackElementAtIndex: index put: object
	self at: (self stackPointer - index + 1) 
		put: object! !

!SOMFrame methodsFor: 'accessing'!
arguments

	^ (1 to: self somMethod numberOfArguments) collect: [ :argIndex |
			self argumentAtIndex: argIndex contextLevel: 1
		]! !

!SOMFrame methodsFor: 'accessing'!
bytecodeIndex
	^ bytecodeIndex! !

!SOMFrame methodsFor: 'accessing'!
bytecodeIndex: anObject
	bytecodeIndex := anObject! !

!SOMFrame methodsFor: 'accessing'!
localOffset
	^ localOffset! !

!SOMFrame methodsFor: 'accessing'!
localOffset: anObject
	localOffset := anObject! !

!SOMFrame methodsFor: 'accessing'!
outerContext
	| currentContext |
	currentContext := self.
	[ currentContext hasContext ] whileTrue: [ currentContext := currentContext somContext ].
	^ currentContext! !

!SOMFrame methodsFor: 'accessing'!
setDefaultClass! !

!SOMFrame methodsFor: 'accessing'!
somContext
	^ somContext! !

!SOMFrame methodsFor: 'accessing'!
somContext: anObject 
	somContext := anObject! !

!SOMFrame methodsFor: 'accessing'!
somCurrentObject
	self somMethod somSignature = self universe globalNil
		ifTrue: [^ self universe globalNil].
	self somMethod numberOfArguments = 0
		ifTrue: [^ self universe globalNil].
	^ self argumentAtIndex: 1 contextLevel: 1! !

!SOMFrame methodsFor: 'accessing'!
somMethod
	^ somMethod! !

!SOMFrame methodsFor: 'accessing'!
somMethod: anObject 
	somMethod := anObject! !

!SOMFrame methodsFor: 'accessing'!
somPreviousFrame
	^ somPreviousFrame! !

!SOMFrame methodsFor: 'accessing'!
somPreviousFrame: anObject 
	somPreviousFrame := anObject! !

!SOMFrame methodsFor: 'accessing'!
stackPointer
	^ stackPointer! !

!SOMFrame methodsFor: 'accessing'!
stackPointer: anObject
	stackPointer := anObject! !

!SOMBlock methodsFor: 'primitives'!
primrestart
	universe interpreter somFrame
		bytecodeIndex: 1;
		resetStackPointer! !

!SOMBlock methodsFor: 'accessing'!
cacheEvaluationMethodWithParameters: numParams 
	| signature replaceIndex evaluationMethod |
	signature := self evaluationMethodWithParameters: numParams.

	"check if block class already has an evaluationMethod for the given parameter"
	evaluationMethod := self somClass lookupInvokable: signature.
	evaluationMethod class = SOMBlockEvaluation ifTrue: [ ^ self ].

	"add to instance methods or replace existing primitives"
	evaluationMethod ifNotNil: 
		[ replaceIndex := self somClass somInstanceInvokables indexOf: evaluationMethod ].
	evaluationMethod := self createEvalutationMethodWithParameters: numParams.
	replaceIndex ifNil: [ ^ self somClass somInstanceInvokables add: evaluationMethod ].
	self somClass somInstanceInvokables 
		at: replaceIndex
		put: evaluationMethod! !

!SOMBlock methodsFor: 'accessing'!
createEvalutationMethodWithParameters: numParams 
	^ (SOMBlockEvaluation inUniverse: self universe)
		somSignature: (universe newSymbol: (self evaluationMethodWithParameters: numParams));
		numberOfArguments: numParams;
		yourself! !

!SOMBlock methodsFor: 'accessing'!
evaluationMethodWithParameters: numParams
	numParams = 0 ifTrue: [^ #value].
	"append with: for each parameter except the first"
	^ (2 to: numParams) inject: #value: into: [ :sig :each | sig, #with:]
	! !

!SOMBlock methodsFor: 'accessing'!
setDefaultClass
	"NO-OP, is set explicitly on object creation"! !

!SOMBlock methodsFor: 'accessing'!
somBlockMethod
	^ somBlockMethod! !

!SOMBlock methodsFor: 'accessing'!
somBlockMethod: anObject 
	somBlockMethod := anObject.
	self cacheEvaluationMethodWithParameters: anObject numberOfArguments! !

!SOMBlock methodsFor: 'accessing'!
somContext
	^ somContext! !

!SOMBlock methodsFor: 'accessing'!
somContext: anObject 
	somContext := anObject! !

!SOMBlock methodsFor: 'as yet unclassified' stamp: 'jpb 2/21/2021 10:36:59'!
primvalue: arg1 with: arg2 
	| actualMethod frame |
	actualMethod := 	self somBlockMethod.
	
	actualMethod numberOfArguments ~= 2
		ifTrue: [ self error: 'Invalid block arguments' ].
	
	frame := self universe interpreter somFrame.
	frame push: arg1.
	frame push: arg2.
	actualMethod invokeInFrame: frame.

	^frame
! !

!SOMClass methodsFor: 'accessing'!
allInstanceFields

	^ self somInstanceFields elements collect: [:ea | ea string].
! !

!SOMClass methodsFor: 'accessing'!
indexOfInstanceField: aSOMSymbol 

	^ self somInstanceFields indexOf: aSOMSymbol.
! !

!SOMClass methodsFor: 'accessing'!
numberOfInstanceFields
	^ self somInstanceFields size! !

!SOMClass methodsFor: 'accessing'!
primfields
	^ somInstanceFields! !

!SOMClass methodsFor: 'accessing'!
somInstanceFields
	^ somInstanceFields! !

!SOMClass methodsFor: 'accessing'!
somInstanceFields: anObject 
	somInstanceFields := anObject! !

!SOMClass methodsFor: 'accessing'!
somInstanceInvokables
	^ somInstanceInvokables! !

!SOMClass methodsFor: 'accessing'!
somInstanceInvokables: aSomArray 
	somInstanceInvokables := aSomArray.
	somInstanceInvokables do: [ :invokable | invokable somHolder: self ]! !

!SOMClass methodsFor: 'accessing'!
somName
	^ somName! !

!SOMClass methodsFor: 'accessing'!
somName: anObject 
	somName := anObject! !

!SOMClass methodsFor: 'accessing'!
somSuperClass
	^ somSuperClass! !

!SOMClass methodsFor: 'accessing'!
somSuperClass: anObject 
	somSuperClass := anObject! !

!SOMClass methodsFor: 'accessing'!
squeakClass
	"We currently look up the required squeak class at runtime. This could be optimized by
	storing it in an instance field. Implementing this has been deferred, as it is currently not possible to add instance fields to SOMObject subclasses that are not automatically mapped to SOM fields."
	^ Smalltalk 
		at: ('SOM' , self somName string) asSymbol
		ifAbsent: [ self somSuperClass squeakClass ]! !

!SOMClass methodsFor: 'as yet unclassified'!
lookupInvokable: signature
	
	^ self somInstanceInvokables elements 
		detect: [:invokable | invokable somSignature symbol == signature]
		ifNone: [self hasSuperClass
			ifTrue: [self somSuperClass lookupInvokable: signature]
			ifFalse: [nil]]! !

!SOMClass methodsFor: 'as yet unclassified'!
performPrimitive: selector withArguments: arguments

	"If self is of kind SOMClass, primitives might either be instance primitives of SOMClass or class side primitives of the corresponding class. This dispatch is currently made during invocation.
	This is extremely unsexy code. Class primitives might need access to the universe or the class. Currently class primitives are implemented on the class side of SOMObject subclasses. As class methods do not have access to the universe this / the SOMClass object has to be passed in."
	| class classSelector |
	class := self squeakClass.
	classSelector := (selector, #inSomClass:) asSymbol.
	^ (class respondsTo: classSelector)
		ifTrue: [class perform: classSelector withArguments: arguments, {self}.]
		ifFalse:[self perform: selector withArguments: arguments].! !

!SOMClass methodsFor: 'primitives'!
primPositiveInfinity
	^ universe newNumber: Float infinity! !

!SOMClass methodsFor: 'primitives' stamp: 'jpb 4/11/2020 13:13:44'!
primfromString: aSOMString
	| str |
	str := aSOMString string.

	(universe globalIntegerClass) = self ifTrue: [
		^ SOMInteger inUniverse: universe
						 new: (Integer readFrom: str readStream) ].
	
	self assert: (universe globalDoubleClass) = self.
	^ SOMDouble inUniverse: universe new: (Float readFrom: str)! !

!SOMClass methodsFor: 'primitives'!
primmethods
	^ somInstanceInvokables! !

!SOMClass methodsFor: 'primitives'!
primname
	^ somName! !

!SOMClass methodsFor: 'primitives'!
primnew
	^ self squeakClass 
		inUniverse: universe
		withSomClass: self! !

!SOMClass methodsFor: 'primitives'!
primsuperclass
	^ somSuperClass! !

!SOMClass methodsFor: 'initialization'!
initialize
	super initialize.
	somSuperClass := universe globalNil.
	somInstanceFields := (SOMArray inUniverse: universe).
	
	self somInstanceInvokables: (SOMArray inUniverse: universe).
	somName := (universe newString: '')! !

!SOMClass methodsFor: 'testing'!
hasSuperClass

	^ somSuperClass isClass! !

!SOMClass methodsFor: 'testing'!
isClass

	^ true! !

!SOMClass class methodsFor: 'instance creation'!
inUniverse: universe withSomSuperClass: superClazz

	| metaclass superMeta |
	"metaclass"
	superMeta := superClazz isClass
		ifTrue: [superClazz somClass]
		ifFalse: [universe globalClassClass].
	metaclass := (self inUniverse: universe)
		somClass: (universe globalMetaclassClass);
		somSuperClass: superMeta;
		yourself.
	"class"
	^ (self inUniverse: universe)
		somSuperClass: superClazz;
		somClass: metaclass;
		yourself.! !

!SOMInvokable methodsFor: 'accessing'!
numberOfArguments
	^ somNumberOfArguments number! !

!SOMInvokable methodsFor: 'accessing'!
numberOfArguments: args 
	somNumberOfArguments := universe newNumber: args! !

!SOMInvokable methodsFor: 'accessing'!
primsignature
	^ somSignature! !

!SOMInvokable methodsFor: 'accessing'!
somHolder
	^ somHolder! !

!SOMInvokable methodsFor: 'accessing'!
somHolder: anObject 
	somHolder := anObject! !

!SOMInvokable methodsFor: 'accessing'!
somSignature
	^ somSignature! !

!SOMInvokable methodsFor: 'accessing'!
somSignature: anObject 
	somSignature := anObject! !

!SOMInvokable methodsFor: 'invoking'!
invokeInFrame: frame
	self subclassResponsibility.! !

!SOMInvokable methodsFor: 'initialization'!
initialize
	super initialize.
	somNumberOfArguments := self universe newNumber: 0! !

!SOMInvokable class methodsFor: 'instance creation'!
inUniverse: universe named: squeakSymbol numArgs: numArgs 
	| instance |
	instance := self inUniverse: universe.
	squeakSymbol ifNotNil: [ instance somSignature: (universe newSymbol: squeakSymbol) ].
	instance numberOfArguments: numArgs.
	^ instance! !

!SOMBlockEvaluation methodsFor: 'invoking'!
invokeInFrame: frame

	| block newFrame |
	block := frame stackElementAtIndex: self numberOfArguments + 1.
	newFrame := self universe interpreter
		pushNewFrameWithMethod: block somBlockMethod.
	newFrame somContext: block somContext.
	newFrame copyArgumentsFrom: frame.
	frame pop. "pops self -> block"
	^ newFrame! !

!SOMMethod methodsFor: 'initialization'!
assignLexicalContexts
	self bytecodes
		select: [ :bc | bc isPushBlock ]
		thenDo: [ :bc | bc literalValue lexicalContext: self ].
	^ self! !

!SOMMethod methodsFor: 'initialization'!
initialize

	super initialize.
	self
		maxStackDepth: 0;
		numberOfLocals: 0;
		constants: #();
		bytecodes: #();
		lexicalContext: nil.! !

!SOMMethod methodsFor: 'invoking'!
invokeInFrame: frame

	| newFrame |
	newFrame := self universe interpreter pushNewFrameWithMethod: self.
	newFrame copyArgumentsFrom: frame.
	^ newFrame! !

!SOMMethod methodsFor: 'accessing'!
bytecodeAt: index 
	^ self bytecodes at: index! !

!SOMMethod methodsFor: 'accessing'!
bytecodeAt: index put: bytecode 
	^ self bytecodes
		at: index
		put: bytecode! !

!SOMMethod methodsFor: 'accessing'!
bytecodes
	^ bytecodes! !

!SOMMethod methodsFor: 'accessing'!
bytecodes: anObject
	bytecodes := anObject! !

!SOMMethod methodsFor: 'accessing'!
constantAt: index 
	^ self constants at: index! !

!SOMMethod methodsFor: 'accessing'!
constantAt: index put: const
	^ constants at: index put: const! !

!SOMMethod methodsFor: 'accessing'!
constants
	^ constants! !

!SOMMethod methodsFor: 'accessing'!
constants: anObject
	constants := anObject! !

!SOMMethod methodsFor: 'accessing'!
isBlockMethod
	^ self somSignature == universe globalNil! !

!SOMMethod methodsFor: 'accessing'!
lexicalContext
	^ lexicalContext! !

!SOMMethod methodsFor: 'accessing'!
lexicalContext: aSOMMethod
	lexicalContext := aSOMMethod! !

!SOMMethod methodsFor: 'accessing'!
maxStackDepth
	^ maxStackDepth! !

!SOMMethod methodsFor: 'accessing'!
maxStackDepth: anObject
	maxStackDepth := anObject! !

!SOMMethod methodsFor: 'accessing'!
numberOfBytecodes
	^ bytecodes size! !

!SOMMethod methodsFor: 'accessing'!
numberOfConstants
	^ self constants size! !

!SOMMethod methodsFor: 'accessing'!
numberOfLocals
	^ numberOfLocals! !

!SOMMethod methodsFor: 'accessing'!
numberOfLocals: anObject
	numberOfLocals := anObject! !

!SOMMethod class methodsFor: 'instance creation'!
inUniverse: universe named: squeakSymbol numArgs: nArgs numLocals: nLoc maxStackDepth: nStack bytecodes: bc holder: holder lexicalContext: ctx

	^ (self
		inUniverse: universe
		named: squeakSymbol
		numArgs: nArgs)
		numberOfLocals: nLoc;
		maxStackDepth: nStack;
		bytecodes: bc;
		somHolder: holder;
		lexicalContext: ctx;
		yourself.
		
		! !

!SOMPrimitive methodsFor: 'as yet unclassified'!
invokeInFrame: frame

	| theSelf arguments result |	
	"without self, self is first argument"
	arguments := frame popN: (self numberOfArguments - 1).
	theSelf := frame pop.
	result := theSelf
		performPrimitive: self realSignature symbol
		withArguments: arguments.

	result isSOMObject
		ifTrue: [	frame push: result. ].
	! !

!SOMPrimitive methodsFor: 'as yet unclassified'!
translateSignature: sqSignature

	"#abc: --> #primabc: #~~ --> #primTildeTilde"
	| transformedSignature isBinary part |
	isBinary := true.
	transformedSignature := sqSignature
		inject: ''
		into: [:acc :each |
			part := self class selectorMapping
				at: each
				ifAbsent: [isBinary := false. each asString].
			acc , part].
	isBinary ifTrue: [transformedSignature := transformedSignature , ':'].
	^ SOMSymbol
		inUniverse: universe
		string: 'prim' , transformedSignature.! !

!SOMPrimitive methodsFor: 'accessing'!
realSignature
	^ realSignature! !

!SOMPrimitive methodsFor: 'accessing'!
realSignature: anObject
	realSignature := anObject! !

!SOMPrimitive methodsFor: 'accessing'!
somSignature: anObject 

	super somSignature: anObject.
	self realSignature: (self translateSignature: self somSignature string)! !

!SOMPrimitive class methodsFor: 'primitve selectors'!
selectorMapping

	^ Dictionary newFrom: {		
		$~ -> #Tilde.
		$& -> #And.
		$| -> #Bar.
		$* -> #Star.
		$/ -> #Slash.
		$@ -> #At.
		$+ -> #Plus.
		$- -> #Minus.
		$= -> #Equal.
		$> -> #GreaterThan.
		$< -> #LowerThan.
		$, -> #Comma.
		$% -> #Percent.
		$\ -> #Backslash}! !

!SOMNumber methodsFor: 'accessing'!
basicNumber: n

	"Private!!"
	number := n! !

!SOMNumber methodsFor: 'accessing'!
number
	^ number! !

!SOMNumber methodsFor: 'testing'!
isSOMNumber

	^ true! !

!SOMNumber methodsFor: 'primitives'!
primAnd: other
	^ universe newNumber: (self number bitAnd: other number)! !

!SOMNumber methodsFor: 'primitives'!
primEqual: other

	^ universe newBool: self number = other number! !

!SOMNumber methodsFor: 'primitives'!
primEqualEqual: otherObject 

	^ self universe newBool: number == otherObject number! !

!SOMNumber methodsFor: 'primitives'!
primLowerThan: other
	
	^ universe newBool: self number < other number! !

!SOMNumber methodsFor: 'primitives'!
primMinus: other
	^ universe newNumber: self number - other number! !

!SOMNumber methodsFor: 'primitives'!
primPercent: other
	^ universe newNumber: self number \\ other number! !

!SOMNumber methodsFor: 'primitives'!
primPlus: other
	^ universe newNumber: self number + other number! !

!SOMNumber methodsFor: 'primitives'!
primSlashSlash: other

	^ universe newNumber: self number asFloat / other number! !

!SOMNumber methodsFor: 'primitives'!
primStar: other
	^ universe newNumber: self number * other number! !

!SOMNumber methodsFor: 'primitives'!
primasString

	^ self universe newString: self number asString! !

!SOMNumber methodsFor: 'primitives'!
primsqrt
	^ universe newNumber: self number sqrt! !

!SOMNumber class methodsFor: 'as yet unclassified'!
create: number in: universe

	number isFloat ifTrue: [^ SOMDouble inUniverse: universe new: number].
	number isInteger ifTrue: [
		^ number <=  SOMInteger maxInt
			ifTrue: [SOMInteger inUniverse: universe new: number]
			ifFalse: [SOMBigInteger inUniverse: universe new: number]].

	Error signal: 'The value: ', number asString, ' is not one of the supported numbers'! !

!SOMNumber class methodsFor: 'as yet unclassified'!
inUniverse: universe new: int

	^ (self inUniverse: universe)
		basicNumber: int;
		yourself! !

!SOMBigInteger methodsFor: 'as yet unclassified'!
primSlash: other

	^ universe newNumber: self number // other number! !

!SOMBigInteger methodsFor: 'accessing'!
setDefaultClass
	somClass := universe globalIntegerClass! !

!SOMBigInteger methodsFor: 'primitives'!
primas32BitSignedValue
	| val hiBitSet |
	val := number.
	hiBitSet := (val bitAnd: 16r80000000) ~~ 0.
	val := val bitAnd: 16r7FFFFFFF.
	hiBitSet ifTrue: [
		val := 0 - (val bitXor: 16r7FFFFFFF) - 1 ].
	^ universe newNumber: val! !

!SOMBigInteger methodsFor: 'primitives'!
primas32BitUnsignedValue

	^ universe newNumber: (self number bitAnd: 16rFFFFFFFF)! !

!SOMDouble methodsFor: 'accessing'!
setDefaultClass
	somClass := universe globalDoubleClass! !

!SOMDouble methodsFor: 'primitives'!
primasInteger
	^ universe newNumber: self number asInteger! !

!SOMDouble methodsFor: 'primitives'!
primcos
	^ universe newNumber: self number cos! !

!SOMDouble methodsFor: 'primitives' stamp: 'jpb 4/11/2020 13:14:27'!
primround
	^ universe newNumber: (self number rounded)! !

!SOMDouble methodsFor: 'primitives'!
primsin
	^ universe newNumber: self number sin! !

!SOMInteger methodsFor: 'primitives'!
primGreaterThanGreaterThanGreaterThan: other
	^ universe newNumber: self number >> other number! !

!SOMInteger methodsFor: 'primitives'!
primLowerThanLowerThan: other

	^ universe newNumber: self number << other number! !

!SOMInteger methodsFor: 'primitives'!
primSlash: other

	^ universe newNumber: self number // other number! !

!SOMInteger methodsFor: 'primitives'!
primas32BitSignedValue
	| val hiBitSet |
	val := number.
	hiBitSet := (val bitAnd: 16r80000000) ~~ 0.
	val := val bitAnd: 16r7FFFFFFF.
	hiBitSet ifTrue: [
		val := 0 - (val bitXor: 16r7FFFFFFF) - 1 ].
	^ universe newNumber: val! !

!SOMInteger methodsFor: 'primitives'!
primas32BitUnsignedValue

	^ universe newNumber: (self number bitAnd: 16rFFFFFFFF)! !

!SOMInteger methodsFor: 'primitives'!
primatRandom

	^ universe newNumber: self number atRandom.! !

!SOMInteger methodsFor: 'primitives'!
primbitXor: other

	^ universe newNumber: (self number bitXor: other number)! !

!SOMInteger methodsFor: 'primitives'!
primrem: other

	^ universe newNumber: (self number rem: other number)! !

!SOMInteger methodsFor: 'accessing'!
setDefaultClass
	somClass := universe globalIntegerClass! !

!SOMInteger class methodsFor: 'constant'!
maxInt

	"(2 raisedTo: 31) - 1"
	^ 2147483647! !

!SOMString methodsFor: 'testing'!
hash
	^ self string hash! !

!SOMString methodsFor: 'comparing'!
= other
	^ (other isKindOf: SOMString) and: [
		self string = other string]! !

!SOMString methodsFor: 'accessing'!
string
	^ string! !

!SOMString methodsFor: 'accessing'!
string: anObject
	string := anObject! !

!SOMString methodsFor: 'primitives'!
primEqual: other
	^ universe newBool: self = other! !

!SOMString methodsFor: 'primitives'!
primasSymbol
	
	^ self universe newSymbol: self string! !

!SOMString methodsFor: 'primitives'!
primconcatenate: somString 
	
	^ self universe newString: self string, somString string! !

!SOMString methodsFor: 'primitives'!
primhashcode
	^ universe newNumber: self hash! !

!SOMString methodsFor: 'primitives' stamp: 'jpb 2/20/2021 11:15:14'!
primisDigits

	string isEmpty ifTrue: [ ^universe globalFalse ].
	
	string do: [:chr| chr isDigit ifFalse: [^universe globalFalse] ].
	
	^universe globalTrue! !

!SOMString methodsFor: 'primitives' stamp: 'jpb 2/20/2021 11:14:39'!
primisLetters
	string isEmpty ifTrue: [ ^universe globalFalse ].
	
	string do: [:char | (char isLetter) ifFalse: [ ^universe globalFalse ] ].
	
	^universe globalTrue.! !

!SOMString methodsFor: 'primitives' stamp: 'jpb 2/20/2021 11:28:03'!
primisWhiteSpace
	| spaces |
	spaces _ #(10 32 9 13).
	
	string isEmpty ifTrue: [^universe globalFalse ].
	
	string do: [:char | (spaces includes: char asciiValue) ifFalse: [ ^universe globalFalse ] ].
	
	^universe globalTrue.! !

!SOMString methodsFor: 'primitives'!
primlength
	^ universe newNumber: self string size! !

!SOMString methodsFor: 'primitives'!
primobjectSize
	
	"add 32-bit aligned size of string to basic objectSize"
	^ (super primobjectSize) primPlus:
		(self universe newNumber: ((self string size / 4) ceiling * 4))! !

!SOMString methodsFor: 'primitives'!
primprimSubstringFrom: start to: end 
	
	^ self universe newString: 
		(self string copyFrom: start number to: end number)! !

!SOMString class methodsFor: 'instance creation'!
inUniverse: universe string: string

	^ (self inUniverse: universe)
		string: string;
		yourself.! !

!SOMSymbol methodsFor: 'testing'!
isSOMSymbol

	^ true! !

!SOMSymbol methodsFor: 'primitives'!
primEqualEqual: other
	other isSOMSymbol ifFalse: [^ self universe newBool: false].
	
	^ self universe newBool: 
	  (self symbol = other symbol
	    ifTrue: [true]
	    ifFalse: [false])! !

!SOMSymbol methodsFor: 'primitives'!
primasString

	^ self universe newString: self symbol asString! !

!SOMSymbol methodsFor: 'accessing'!
symbol

	^ string! !

!SOMSymbol class methodsFor: 'instance creation'!
inUniverse: universe string: string

	^ super
		inUniverse: universe
		string: string asSymbol.! !

!SOMSystem methodsFor: 'primitives'!
primexit: errorCode
	
	errorCode number ~= SOMSystem successCode ifTrue: [
		self universe interpreter printStack].
	self universe quit: errorCode.! !

!SOMSystem methodsFor: 'primitives'!
primfullGC

	^ universe globalFalse! !

!SOMSystem methodsFor: 'primitives'!
primglobal: globalSymbol

	^ self universe
		globalAt: globalSymbol symbol
		ifAbsent: [self universe globalNil].! !

!SOMSystem methodsFor: 'primitives'!
primglobal: globalSymbol put: globalValue 
	
	self universe
		globalAt: globalSymbol symbol
		put: globalValue! !

!SOMSystem methodsFor: 'primitives'!
primload: clazzName

	| loadedClazz |
	loadedClazz := self universe loadSOMClass: clazzName string.
	^ loadedClazz
		ifNil: [self universe globalNil]
		ifNotNil: [loadedClazz].! !

!SOMSystem methodsFor: 'primitives' stamp: 'jpb 4/11/2020 11:05:17'!
primprintNewline
	
	self universe outStream newLine; flush.! !

!SOMSystem methodsFor: 'primitives'!
primprintString: somString
	
	self universe outStream
		nextPutAll: somString string;
		flush.! !

!SOMSystem methodsFor: 'primitives' stamp: 'jpb 4/11/2020 13:18:56'!
primticks
	
	^ universe newNumber: Time primUtcMicrosecondClock! !

!SOMSystem methodsFor: 'primitives'!
primtime
	
	^ universe newNumber: Time millisecondClockValue! !

!SOMSystem class methodsFor: 'constants'!
successCode

	^ 0! !
