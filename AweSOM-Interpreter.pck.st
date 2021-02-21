'From Cuis 5.0 [latest update: #4526] on 21 February 2021 at 6:21:26 pm'!
'Description The interpreter package of the AweSOM (Simple object machine) implementation.

Original authors: Arvid Heise, Matthias Kleine, Robert Krahn, Michael Haupt.
License: MIT'!
!provides: 'AweSOM-Interpreter' 1 2!
!requires: 'AweSOM-VM' 1 3 nil!
!requires: 'Cuis-Base' 50 4103 nil!
!requires: 'AweSOM-CoreObjects' 1 5 nil!
!requires: 'AweSOM-Meta' 1 2 nil!
SystemOrganization addCategory: 'AweSOM-Interpreter'!


!classDefinition: #SOMBytecode category: 'AweSOM-Interpreter'!
Object subclass: #SOMBytecode
	instanceVariableNames: 'mgenc'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBytecode class' category: 'AweSOM-Interpreter'!
SOMBytecode class
	instanceVariableNames: 'instructionName'!

!classDefinition: #SOMBCDup category: 'AweSOM-Interpreter'!
SOMBytecode subclass: #SOMBCDup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCDup class' category: 'AweSOM-Interpreter'!
SOMBCDup class
	instanceVariableNames: ''!

!classDefinition: #SOMBCHalt category: 'AweSOM-Interpreter'!
SOMBytecode subclass: #SOMBCHalt
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCHalt class' category: 'AweSOM-Interpreter'!
SOMBCHalt class
	instanceVariableNames: ''!

!classDefinition: #SOMBCPop category: 'AweSOM-Interpreter'!
SOMBytecode subclass: #SOMBCPop
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCPop class' category: 'AweSOM-Interpreter'!
SOMBCPop class
	instanceVariableNames: ''!

!classDefinition: #SOMBCReturnLocal category: 'AweSOM-Interpreter'!
SOMBytecode subclass: #SOMBCReturnLocal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCReturnLocal class' category: 'AweSOM-Interpreter'!
SOMBCReturnLocal class
	instanceVariableNames: ''!

!classDefinition: #SOMBCReturnNonLocal category: 'AweSOM-Interpreter'!
SOMBytecode subclass: #SOMBCReturnNonLocal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCReturnNonLocal class' category: 'AweSOM-Interpreter'!
SOMBCReturnNonLocal class
	instanceVariableNames: ''!

!classDefinition: #SOMBCStep category: 'AweSOM-Interpreter'!
SOMBytecode subclass: #SOMBCStep
	instanceVariableNames: 'originalBytecode owningFrames'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCStep class' category: 'AweSOM-Interpreter'!
SOMBCStep class
	instanceVariableNames: ''!

!classDefinition: #SOMBytecodeWithIndex category: 'AweSOM-Interpreter'!
SOMBytecode subclass: #SOMBytecodeWithIndex
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBytecodeWithIndex class' category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndex class
	instanceVariableNames: ''!

!classDefinition: #SOMBCPushBlock category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndex subclass: #SOMBCPushBlock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCPushBlock class' category: 'AweSOM-Interpreter'!
SOMBCPushBlock class
	instanceVariableNames: ''!

!classDefinition: #SOMBCPushConstant category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndex subclass: #SOMBCPushConstant
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCPushConstant class' category: 'AweSOM-Interpreter'!
SOMBCPushConstant class
	instanceVariableNames: ''!

!classDefinition: #SOMBCPushGlobal category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndex subclass: #SOMBCPushGlobal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCPushGlobal class' category: 'AweSOM-Interpreter'!
SOMBCPushGlobal class
	instanceVariableNames: ''!

!classDefinition: #SOMBCSend category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndex subclass: #SOMBCSend
	instanceVariableNames: 'numArgs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCSend class' category: 'AweSOM-Interpreter'!
SOMBCSend class
	instanceVariableNames: ''!

!classDefinition: #SOMBCSuperSend category: 'AweSOM-Interpreter'!
SOMBCSend subclass: #SOMBCSuperSend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCSuperSend class' category: 'AweSOM-Interpreter'!
SOMBCSuperSend class
	instanceVariableNames: ''!

!classDefinition: #SOMBytecodeWithFieldIndex category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndex subclass: #SOMBytecodeWithFieldIndex
	instanceVariableNames: 'fieldIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBytecodeWithFieldIndex class' category: 'AweSOM-Interpreter'!
SOMBytecodeWithFieldIndex class
	instanceVariableNames: ''!

!classDefinition: #SOMBCPopField category: 'AweSOM-Interpreter'!
SOMBytecodeWithFieldIndex subclass: #SOMBCPopField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCPopField class' category: 'AweSOM-Interpreter'!
SOMBCPopField class
	instanceVariableNames: ''!

!classDefinition: #SOMBCPushField category: 'AweSOM-Interpreter'!
SOMBytecodeWithFieldIndex subclass: #SOMBCPushField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCPushField class' category: 'AweSOM-Interpreter'!
SOMBCPushField class
	instanceVariableNames: ''!

!classDefinition: #SOMBytecodeWithIndexAndContextIndex category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndex subclass: #SOMBytecodeWithIndexAndContextIndex
	instanceVariableNames: 'contextIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBytecodeWithIndexAndContextIndex class' category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndexAndContextIndex class
	instanceVariableNames: ''!

!classDefinition: #SOMBCPopArgument category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndexAndContextIndex subclass: #SOMBCPopArgument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCPopArgument class' category: 'AweSOM-Interpreter'!
SOMBCPopArgument class
	instanceVariableNames: ''!

!classDefinition: #SOMBCPopLocal category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndexAndContextIndex subclass: #SOMBCPopLocal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCPopLocal class' category: 'AweSOM-Interpreter'!
SOMBCPopLocal class
	instanceVariableNames: ''!

!classDefinition: #SOMBCPushArgument category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndexAndContextIndex subclass: #SOMBCPushArgument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCPushArgument class' category: 'AweSOM-Interpreter'!
SOMBCPushArgument class
	instanceVariableNames: ''!

!classDefinition: #SOMBCPushLocal category: 'AweSOM-Interpreter'!
SOMBytecodeWithIndexAndContextIndex subclass: #SOMBCPushLocal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMBCPushLocal class' category: 'AweSOM-Interpreter'!
SOMBCPushLocal class
	instanceVariableNames: ''!

!classDefinition: #SOMInterpreter category: 'AweSOM-Interpreter'!
Object subclass: #SOMInterpreter
	instanceVariableNames: 'frame universe currentBytecode stoppedFrame stopped'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Interpreter'!
!classDefinition: 'SOMInterpreter class' category: 'AweSOM-Interpreter'!
SOMInterpreter class
	instanceVariableNames: ''!


!SOMBytecode methodsFor: 'printing'!
printOn: stream

	stream
		nextPut: $<;
		nextPutAll: self printName;
		nextPut: $>.! !

!SOMBytecodeWithIndex methodsFor: 'printing'!
printOn: stream

	"stream
		nextPut: $<;
		nextPutAll: self printName;
		nextPutAll: ' index: ';
		print: self index; 
		nextPut: $>."
	stream
		nextPut: $<;
		nextPutAll: self printName;
		nextPutAll: ' index: ';
		print: self index;
		nextPutAll: ' value: ';
		print: self literalValue;
		nextPut: $>.! !

!SOMBytecodeWithIndexAndContextIndex methodsFor: 'printing'!
printOn: stream
	
	stream
		nextPut: $<;
		nextPutAll: self printName;
		nextPutAll: ' index: ';
		print: self index;
		nextPutAll: ' context: ';
		print: self contextIndex;
		nextPut: $>.! !

!SOMBytecode methodsFor: 'printing'!
printName

	"'SOMBC' size = 6, SOMBCDup --> DUP"
	| name |
	name := self class name.
	^ (name copyFrom: 6 to: name size) asUppercase! !

!SOMBytecode methodsFor: 'constant'!
length

	^ 1! !

!SOMBytecode methodsFor: 'interpreting'!
interpret: interp
	Error signal: 'Needs to be overridden'! !

!SOMBytecode methodsFor: 'accessing'!
isPushBlock
	^ false! !

!SOMBytecode methodsFor: 'accessing'!
mgenc
	^ mgenc! !

!SOMBytecode methodsFor: 'accessing'!
mgenc: anObject
	mgenc := anObject! !

!SOMBytecode methodsFor: 'accessing'!
stackDepth

	^ 0! !

!SOMBytecode class methodsFor: 'instance creation'!
in: methodGenerationContext

	^ self new
		mgenc: methodGenerationContext;
		yourself.! !

!SOMBCDup methodsFor: 'accessing'!
stackDepth

	^ 1! !

!SOMBCDup methodsFor: 'interpreting'!
interpret: interp
	interp doDup! !

!SOMBCHalt methodsFor: 'interpreting'!
interpret: interp
	interp doHalt! !

!SOMBCPop methodsFor: 'interpreting'!
interpret: interp
	interp doPop! !

!SOMBCPop methodsFor: 'accessing'!
stackDepth

	^ -1! !

!SOMBCReturnLocal methodsFor: 'interpreting'!
interpret: interp
	interp doReturnLocal! !

!SOMBCReturnNonLocal methodsFor: 'interpreting'!
interpret: interp
	interp doReturnNonLocal! !

!SOMBCStep methodsFor: 'accessing'!
originalBytecode
	^ originalBytecode! !

!SOMBCStep methodsFor: 'accessing'!
originalBytecode: anObject
	originalBytecode := anObject! !

!SOMBCStep methodsFor: 'accessing'!
owningFrames
	^ owningFrames! !

!SOMBCStep methodsFor: 'accessing'!
owningFrames: anObject
	owningFrames := anObject! !

!SOMBytecodeWithIndex methodsFor: 'constant'!
length

	^ 2! !

!SOMBytecodeWithIndex methodsFor: 'accessing'!
index
	^ index! !

!SOMBytecodeWithIndex methodsFor: 'accessing'!
index: anObject
	index := anObject! !

!SOMBytecodeWithIndex methodsFor: 'accessing'!
literalValue
	self mgenc ifNil: [^ nil].
	^ self mgenc literals at: self index! !

!SOMBytecodeWithIndex class methodsFor: 'instance creation'!
in: mgenc index: i

	^ (self in: mgenc)
		index: i;
		yourself.! !

!SOMBCPushBlock methodsFor: 'interpreting'!
interpret: interp
	interp doPushBlock! !

!SOMBCPushBlock methodsFor: 'accessing'!
isPushBlock
	^ true! !

!SOMBCPushBlock methodsFor: 'accessing'!
stackDepth

	^ 1! !

!SOMBCPushConstant methodsFor: 'accessing'!
const
	^ self literalValue! !

!SOMBCPushConstant methodsFor: 'accessing'!
stackDepth

	^ 1! !

!SOMBCPushConstant methodsFor: 'interpreting'!
interpret: interp
	interp doPushConstant! !

!SOMBCPushGlobal methodsFor: 'accessing'!
global
	^ self literalValue! !

!SOMBCPushGlobal methodsFor: 'accessing'!
stackDepth

	^ 1! !

!SOMBCPushGlobal methodsFor: 'interpreting'!
interpret: interp
	interp doPushGlobal! !

!SOMBCSend methodsFor: 'interpreting'!
interpret: interp
	interp doSend! !

!SOMBCSend methodsFor: 'accessing'!
numArgs
	^ numArgs! !

!SOMBCSend methodsFor: 'accessing'!
numArgs: anInt
	numArgs := anInt! !

!SOMBCSend methodsFor: 'accessing'!
selector

	^ self literalValue! !

!SOMBCSend methodsFor: 'accessing'!
stackDepth

	^ self selector string numArgs negated + 1! !

!SOMBCSend class methodsFor: 'as yet unclassified'!
in: mgenc index: idx numArgs: numArgs
	^ (super in: mgenc index: idx)
		numArgs: numArgs! !

!SOMBCSuperSend methodsFor: 'interpreting'!
interpret: interp
	interp doSuperSend! !

!SOMBytecodeWithFieldIndex methodsFor: 'accessing'!
fieldIndex
	^ fieldIndex! !

!SOMBytecodeWithFieldIndex methodsFor: 'accessing'!
fieldIndex: anObject
	fieldIndex := anObject! !

!SOMBCPopField methodsFor: 'interpreting'!
interpret: interp
	interp doPopField! !

!SOMBCPopField methodsFor: 'accessing'!
stackDepth

	^ -1! !

!SOMBCPushField methodsFor: 'interpreting'!
interpret: interp
	interp doPushField! !

!SOMBCPushField methodsFor: 'accessing'!
stackDepth

	^ 1! !

!SOMBytecodeWithIndexAndContextIndex methodsFor: 'accessing'!
contextIndex
	^ contextIndex! !

!SOMBytecodeWithIndexAndContextIndex methodsFor: 'accessing'!
contextIndex: anObject
	contextIndex := anObject! !

!SOMBytecodeWithIndexAndContextIndex methodsFor: 'constant'!
length

	^ 3! !

!SOMBytecodeWithIndexAndContextIndex class methodsFor: 'instance creation'!
in: mgenc index: idx contextIndex: ctxIdx

	^ (self in: mgenc)
		index: idx;
		contextIndex: ctxIdx;
		yourself.! !

!SOMBCPopArgument methodsFor: 'interpreting'!
interpret: interp
	interp doPopArgument! !

!SOMBCPopArgument methodsFor: 'accessing'!
stackDepth

	^ -1! !

!SOMBCPopLocal methodsFor: 'accessing'!
stackDepth

	^ -1! !

!SOMBCPopLocal methodsFor: 'interpreting'!
interpret: interp
	interp doPopLocal! !

!SOMBCPushArgument methodsFor: 'accessing'!
stackDepth

	^ 1! !

!SOMBCPushArgument methodsFor: 'interpreting'!
interpret: interp
	interp doPushArgument! !

!SOMBCPushLocal methodsFor: 'accessing'!
stackDepth

	^ 1! !

!SOMBCPushLocal methodsFor: 'interpreting'!
interpret: interp
	interp doPushLocal! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doDup
	"duplicate the topmost element of the stack"
	
	self somFrame 
		push: (self somFrame stackElementAtIndex: 1)! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doHalt

	stopped := true! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doPop
	"pops the topmost element of the stack"
	
	self somFrame pop! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doPopArgument
	"pops the topmost stack element into the argument which is identified by the slot index and context level in the bytecode"
	
	self somFrame 
		argumentAtIndex: (self currentBytecode index)
		contextLevel: (self currentBytecode contextIndex)
		put: (self somFrame pop)! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doPopField
	"pops the topmost stack element into the field which is identified by field index in the bytecode"
	
	self somCurrentObject
		fieldAtIndex: (self currentBytecode fieldIndex)
		put: self somFrame pop! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doPopLocal
	| localSlot contextLevel |
	localSlot := self currentBytecode index.
	contextLevel := self currentBytecode contextIndex.
	self somFrame 
			localAtIndex: localSlot
			contextLevel: contextLevel
			put: (self somFrame pop)! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doPushArgument
	"pushes the argument onto the stack which is identified by the slot index and context level in the next two bytes of the bytecode"
	| slot contextLevel |
	slot := self currentBytecode index.
	contextLevel := self currentBytecode contextIndex.
	self somFrame push: (self somFrame 
			argumentAtIndex: slot
			contextLevel: contextLevel)! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doPushBlock
	| blockMethod block |
	blockMethod := currentBytecode literalValue.
	block := universe newBlock: blockMethod in: frame.
	
	frame push: block
! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doPushConstant
	self somFrame push: (self currentBytecode literalValue)! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doPushField

	self somFrame push:
		(self somCurrentObject fieldAtIndex: 
			(self currentBytecode fieldIndex)).! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doPushGlobal

	| global |
	global := 
		self universe 
			globalAt: self currentBytecode literalValue
			ifAbsent: [
				self sendUnknownGlobal: 
					self currentBytecode literalValue.
				^ self].
	self somFrame push: global! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doPushLocal
	| localSlot contextLevel |
	localSlot := self currentBytecode index.
	contextLevel := self currentBytecode contextIndex.
	self somFrame push: (self somFrame 
			localAtIndex: localSlot
			contextLevel: contextLevel)! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doReturnLocal
	"pops the topmost element of the stack and treats it as the return value"
	self popFrameAndPushResult: self somFrame pop! !

!SOMInterpreter methodsFor: 'bytecode processing'!
doReturnNonLocal
	"pops the topmost element of the stack and treats it as the return value"
	| result context |
	result := self somFrame pop.
	context := self somFrame outerContext.
	
	"Make sure block context is still on the stack"
	context hasPreviousFrame ifFalse: [
		"Try to recover by sending #escapedBlock: to the sending object.
		 This can be a problem with nested blocks. In this case, the sender will
		 be the surrounding block and not the object that actually sent the #value message."
		| block sender method numArgs |
		block := (self somFrame frameAtContextLevel: 2) stackElementAtIndex: 0.
		sender := self somFrame somPreviousFrame outerContext argumentAtIndex: 1 contextLevel: 1.

 		self popFrame.
		
		"pop old arguments from stack"
		method := self somFrame somMethod.
		numArgs := method numberOfArguments.
		numArgs - 1 timesRepeat: [ self somFrame pop ].
		
		"execute the escapedBlock message instead"
		sender sendMessage: #escapedBlock: withArguments: (
			SOMArray inUniverse: universe withAll: {block}).
			^ self ].
	
	"unwind frames"
	[self somFrame ~= context] whileTrue: [self popFrame].
	self popFrameAndPushResult: result! !

!SOMInterpreter methodsFor: 'bytecode processing' stamp: 'jpb 2/21/2021 13:13:03'!
doSend

	| methodName receiver |
	
	methodName := currentBytecode selector.
	receiver := frame stackElementAtIndex: currentBytecode numArgs + 1.
	^ self 
		send: methodName
		toClazz: receiver somClass! !

!SOMInterpreter methodsFor: 'bytecode processing' stamp: 'jpb 2/21/2021 14:29:18'!
doSuperSend
	| methodName superClazz |
	
	methodName := self currentBytecode selector.
	superClazz := self somFrame outerContext somMethod somHolder somSuperClass.
	
	self 
		send: methodName
		toClazz: superClazz! !

!SOMInterpreter methodsFor: 'debugging'!
doStep

	| bytecodeIndex originalBytecode |
	(self currentBytecode owningFrames includes: self somFrame)
		ifFalse: [
			"if we are not in the right frame; execute the normal bytecode"
			^ self perform: (self instructionSelectors at: 
				self currentBytecode originalBytecode class)].
			
	"uninstall step bytecode if necessary and reinstall original bytecode"
	originalBytecode := self currentBytecode originalBytecode.
	self currentBytecode owningFrames remove: self somFrame.
	self currentBytecode owningFrames ifEmpty: [ 
		bytecodeIndex := self somFrame bytecodeIndex.
		self somMethod bytecodeAt: bytecodeIndex - 1 put: originalBytecode].
	
	"display inspection view again"
	self showInspection.
	
	"execute the normal bytecode"
	self currentBytecode: originalBytecode.
	self perform: (self instructionSelectors at: 
		self currentBytecode class)
	! !

!SOMInterpreter methodsFor: 'debugging'!
showInspection

	| stackTrace bytecodes fullStackTrace stackContents stackPointer topElement realBytecode |
	stackTrace := String streamContents: [:s | self printStackOn: s].	
	stackContents := String streamContents: [:s | self somFrame printStackOn: s].
	realBytecode := self somMethod bytecodeAt: (self somFrame bytecodeIndex - 1).
	bytecodes := String streamContents: [:s | self somFrame printBytecodesOn: s].
	
	stackPointer := self somFrame stackPointer.
	topElement := self somFrame at: stackPointer.
	
	fullStackTrace := String streamContents: [:s | self printFullStacksOn: s].
	
	"inspect local variables or use following commands:"
	"self step"
	"self stepBytecode"
	
	"self halt."
	
	"locals are used by programmers to debug SOM"
	"however for Squeak they are unused"
	"the following lines avoid the annoying unused message of Squeak"
	{stackTrace. bytecodes. fullStackTrace. stackContents. stackPointer. topElement. realBytecode} size.! !

!SOMInterpreter methodsFor: 'debugging'!
step

	self somFrame installStep! !

!SOMInterpreter methodsFor: 'debugging'!
stepBytecode

	self somFrame installStepBytecode! !

!SOMInterpreter methodsFor: 'message dispatch'!
send: signature toClazz: clazz
	"sends the method to the given class or invokes do not understand"
	(clazz lookupInvokable: signature)
		ifNotNil: [:invokable | invokable invokeInFrame: self somFrame]
		ifNil: [self sendDoesNotUnderstand: signature]! !

!SOMInterpreter methodsFor: 'message dispatch'!
sendDoesNotUnderstand: signature
	| arguments receiver |
	"for debugging: in test suite DNU shouldn't be used"
	"self halt."
	
	"assemble and send DO NOT UNDERSTAND"
	arguments := SOMArray inUniverse: universe 
		withAll: (self somFrame popN: signature numArgs).
	"remove receiver from stack"
	receiver := self somFrame pop.
	
	"check if current frame is big enough for this unplanned Send"
	"doesNotUnderstand: needs 3 slots, one for this, one for method name, one for args"
	self somFrame remainingStackSize < 3
		ifTrue: [self somFrame resize: (self somFrame size + 3)].
		
	receiver 
		sendMessage: #doesNotUnderstand:arguments:
		withArguments: 
			(SOMArray inUniverse: universe withAll: 
				{universe newSymbol: signature. arguments})	! !

!SOMInterpreter methodsFor: 'printing'!
printBytecodes
	
	self printBytecodesOn: Transcript.
	Transcript endEntry! !

!SOMInterpreter methodsFor: 'printing'!
printBytecodesOn: stream
	| currentFrame |
	
	currentFrame := frame.
	[currentFrame = universe globalNil] whileFalse: 
		[
			currentFrame printBytecodesOn: stream.
			currentFrame := currentFrame somPreviousFrame
		]! !

!SOMInterpreter methodsFor: 'printing'!
printFullStacks
	
	self printFullStacksOn: Transcript.
	Transcript endEntry! !

!SOMInterpreter methodsFor: 'printing'!
printFullStacksOn: stream
	| currentFrame |
	
	currentFrame := stoppedFrame ifNotNil: [stoppedFrame] ifNil: [frame].
	[currentFrame = universe globalNil] 
		whileFalse: [
			currentFrame printStackOn: stream.
			currentFrame := currentFrame somPreviousFrame
		]! !

!SOMInterpreter methodsFor: 'printing'!
printStack
	
	self printStackOn: Transcript.
	Transcript endEntry! !

!SOMInterpreter methodsFor: 'printing'!
printStackOn: stream
	| currentFrame |
	
	currentFrame := self somFrame.
	[currentFrame = universe globalNil] 
		whileFalse: [
			stream nextPutAll: currentFrame somMethod asString.
			
			currentFrame somCurrentObject ~= self universe globalNil
				ifTrue: [stream nextPutAll: ' in '; nextPutAll: currentFrame somCurrentObject somClass asString].
				
			currentFrame arguments ~= self universe globalNil
				ifTrue: [stream nextPutAll: ' ('; nextPutAll: currentFrame arguments asString; nextPutAll: ') '].
				
			stream cr.
			currentFrame := currentFrame somPreviousFrame.
		]! !

!SOMInterpreter methodsFor: 'frame manipulation'!
popFrame
	| currentFrame |
	currentFrame := self somFrame.
	self somFrame: currentFrame somPreviousFrame.
	^ currentFrame
		clearPreviousFrame;
		yourself! !

!SOMInterpreter methodsFor: 'frame manipulation'!
popFrameAndPushResult: result 

	| poppedMethod |
	poppedMethod := self somFrame somMethod.
	self popFrame.
	self somFrame removeN: poppedMethod numberOfArguments.
	self somFrame push: result! !

!SOMInterpreter methodsFor: 'frame manipulation'!
pushNewFrameWithMethod: method 

	"creates a new frame encapsulating the given method
	and sets the needed length of its stack"
	| frameLength |
	frameLength := method numberOfArguments
		+ method numberOfLocals
		+ method maxStackDepth.
	^ frame := (SOMFrame
		inUniverse: self universe
		size: frameLength)
		somMethod: method;
		somPreviousFrame: (frame ifNil: [universe globalNil]);
		resetStackPointer;
		bytecodeIndex: 1;
		yourself! !

!SOMInterpreter methodsFor: 'as yet unclassified'!
sendUnknownGlobal: globalName 

	"check if current frame is big enough for this unplanned Send"
	"unknownGlobal: needs 2 slots, one for this and one for globalName"
	self somFrame remainingStackSize < 2
		ifTrue: [self somFrame resize: (self somFrame size + 2)].
		
	self somCurrentObject 
		sendMessage: #unknownGlobal:
		withArguments: 
			(SOMArray inUniverse: universe withAll: 
				{universe newSymbol: globalName})! !

!SOMInterpreter methodsFor: 'accessing'!
currentBytecode

	^ currentBytecode! !

!SOMInterpreter methodsFor: 'accessing'!
currentBytecode: anObject 

	currentBytecode := anObject! !

!SOMInterpreter methodsFor: 'accessing'!
somCurrentObject
	^ (self somFrame outerContext) somCurrentObject! !

!SOMInterpreter methodsFor: 'accessing'!
somFrame
	^ frame! !

!SOMInterpreter methodsFor: 'accessing'!
somFrame: anFrame 
	frame := anFrame! !

!SOMInterpreter methodsFor: 'accessing'!
somMethod
	^ frame somMethod! !

!SOMInterpreter methodsFor: 'accessing'!
universe
	^ universe! !

!SOMInterpreter methodsFor: 'accessing'!
universe: anObject
	universe := anObject! !

!SOMInterpreter methodsFor: 'initialization'!
start

	stopped := false.
	[stopped] whileFalse: [| bytecode bytecodeIndex |
		bytecodeIndex := frame bytecodeIndex.
		bytecode := self somMethod bytecodeAt: bytecodeIndex.
		currentBytecode := bytecode.
		"increase bytecode index here because frame might change
		while dispatching current bytecode"
		frame bytecodeIndex: bytecodeIndex + 1.
		bytecode interpret: self
	]! !

!SOMInterpreter methodsFor: 'initialization'!
stop
	"rolls back to the first frame which contains the halt command; saves current frame for debug purposes"
	stopped := true! !

!SOMInterpreter class methodsFor: 'instance creation'!
inUniverse: universe

	^ self new
		universe: universe;
		yourself.! !
