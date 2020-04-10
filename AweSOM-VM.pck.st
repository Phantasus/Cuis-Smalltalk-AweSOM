'From Cuis 5.0 [latest update: #4103] on 10 April 2020 at 10:05:56 pm'!
'Description '!
!provides: 'AweSOM-VM' 1 0!
SystemOrganization addCategory: #'AweSOM-VM-Test'!
SystemOrganization addCategory: #'AweSOM-VM'!


!classDefinition: #SOMSymbolTable category: #'AweSOM-VM'!
IdentityDictionary subclass: #SOMSymbolTable
	instanceVariableNames: 'universe'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM'!
!classDefinition: 'SOMSymbolTable class' category: #'AweSOM-VM'!
SOMSymbolTable class
	instanceVariableNames: ''!

!classDefinition: #SOMBasicInterpreterTest category: #'AweSOM-VM-Test'!
TestCase subclass: #SOMBasicInterpreterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMBasicInterpreterTest class' category: #'AweSOM-VM-Test'!
SOMBasicInterpreterTest class
	instanceVariableNames: ''!

!classDefinition: #SOMTest category: #'AweSOM-VM-Test'!
TestCase subclass: #SOMTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMTest class' category: #'AweSOM-VM-Test'!
SOMTest class
	instanceVariableNames: ''!

!classDefinition: #SOMClassTest category: #'AweSOM-VM-Test'!
TestCaseWithUniverse subclass: #SOMClassTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMClassTest class' category: #'AweSOM-VM-Test'!
SOMClassTest class
	instanceVariableNames: ''!

!classDefinition: #SOMFrameTest category: #'AweSOM-VM-Test'!
TestCaseWithUniverse subclass: #SOMFrameTest
	instanceVariableNames: 'frame frame2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMFrameTest class' category: #'AweSOM-VM-Test'!
SOMFrameTest class
	instanceVariableNames: ''!

!classDefinition: #SOMGlobalsTest category: #'AweSOM-VM-Test'!
TestCaseWithUniverse subclass: #SOMGlobalsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMGlobalsTest class' category: #'AweSOM-VM-Test'!
SOMGlobalsTest class
	instanceVariableNames: ''!

!classDefinition: #SOMInterpreterTest category: #'AweSOM-VM-Test'!
TestCaseWithUniverse subclass: #SOMInterpreterTest
	instanceVariableNames: 'interpreter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMInterpreterTest class' category: #'AweSOM-VM-Test'!
SOMInterpreterTest class
	instanceVariableNames: 'mgec callerFrame'!

!classDefinition: #SOMMethodTest category: #'AweSOM-VM-Test'!
TestCaseWithUniverse subclass: #SOMMethodTest
	instanceVariableNames: 'method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMMethodTest class' category: #'AweSOM-VM-Test'!
SOMMethodTest class
	instanceVariableNames: ''!

!classDefinition: #SOMNumberTest category: #'AweSOM-VM-Test'!
TestCaseWithUniverse subclass: #SOMNumberTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMNumberTest class' category: #'AweSOM-VM-Test'!
SOMNumberTest class
	instanceVariableNames: ''!

!classDefinition: #SOMObjectTest category: #'AweSOM-VM-Test'!
TestCaseWithUniverse subclass: #SOMObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMObjectTest class' category: #'AweSOM-VM-Test'!
SOMObjectTest class
	instanceVariableNames: ''!

!classDefinition: #SOMFakeObjectTest category: #'AweSOM-VM-Test'!
SOMObjectTest subclass: #SOMFakeObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMFakeObjectTest class' category: #'AweSOM-VM-Test'!
SOMFakeObjectTest class
	instanceVariableNames: ''!

!classDefinition: #SOMPrimitiveTest category: #'AweSOM-VM-Test'!
TestCaseWithUniverse subclass: #SOMPrimitiveTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMPrimitiveTest class' category: #'AweSOM-VM-Test'!
SOMPrimitiveTest class
	instanceVariableNames: ''!

!classDefinition: #SOMUniverseTest category: #'AweSOM-VM-Test'!
TestCaseWithUniverse subclass: #SOMUniverseTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM-Test'!
!classDefinition: 'SOMUniverseTest class' category: #'AweSOM-VM-Test'!
SOMUniverseTest class
	instanceVariableNames: ''!

!classDefinition: #HaltPrimData category: #'AweSOM-VM'!
Object subclass: #HaltPrimData
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-VM'!
!classDefinition: 'HaltPrimData class' category: #'AweSOM-VM'!
HaltPrimData class
	instanceVariableNames: 'doBreak'!

!classDefinition: #SOMUniverse category: #'AweSOM-VM'!
Object subclass: #SOMUniverse
	instanceVariableNames: 'globals interpreter outStream symbolTable exitCode isInitialized somObjectClass somClassClass somMetaclassClass somNilClass somIntegerClass somArrayClass somMethodClass somSymbolClass somPrimitiveClass somStringClass somDoubleClass somBooleanClass somTrueObject somFalseObject somSystemObject somTrueClass somFalseClass somSystemClass somNilObject somBlockClass somBlockClasses'
	classVariableNames: 'ClassPaths Default DefaultInterpreter'
	poolDictionaries: ''
	category: 'AweSOM-VM'!
!classDefinition: 'SOMUniverse class' category: #'AweSOM-VM'!
SOMUniverse class
	instanceVariableNames: ''!


!SOMSymbolTable methodsFor: 'as yet unclassified'!
somSymbolFor: squeakSymbol

	^ self
		at: squeakSymbol 
		ifAbsentPut: [SOMSymbol
			inUniverse: self universe
			string: squeakSymbol].! !

!SOMSymbolTable methodsFor: 'accessing'!
universe
	^ universe! !

!SOMSymbolTable methodsFor: 'accessing'!
universe: anObject
	universe := anObject! !

!SOMSymbolTable class methodsFor: 'as yet unclassified'!
in: universe

	^ self new
		universe: universe;
		yourself.! !

!SOMBasicInterpreterTest methodsFor: 'asserting'!
assert: actual equals: aValue as: aType
	aType = #Integer ifTrue: [
		self assert: actual number equals: aValue.
		^ self ].
	
	aType = #Double ifTrue: [
		self assert: actual number equals: aValue.
		^ self ].
	
	aType = #Class ifTrue: [
		self assert: actual somName symbol equals: aValue.
		^ self ].
	
	aType = #Symbol ifTrue: [
		self assert: actual symbol equals: aValue.
		^ self ].
	
	self fail: 'SOM Value handler missing for ', actual asString.
	
	! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
load: className execute: methodName expect: aValue as: aType
	| result |
	SOMUniverse classPaths: SOMTools basicInterpreterTestClassPath.
	
	[ result := SOMUniverse new start: className method: methodName. ] on: SOMParseError do: [:e | 
		aType == #SOMParseError ifFalse: [ e signal ]
	 ].
	
	aType == #SOMParseError ifFalse: [
		self assert: result equals: aValue as: aType ]! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testArrays1
	self load: 'Arrays' execute: 'testEmptyToInts' expect: 3 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testArrays2
	self load: 'Arrays' execute: 'testPutAllInt' expect: 5 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testArrays3
	self load: 'Arrays' execute: 'testPutAllNil' expect: 'Nil' as: #Class! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testArrays4
	self load: 'Arrays' execute: 'testPutAllBlock' expect: 3 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testArrays5
	self load: 'Arrays' execute: 'testNewWithAll' expect: 1 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining1
	self load: 'BlockInlining' execute: 'testNoInlining' expect: 1 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining10
	self load: 'BlockInlining' execute: 'testDeepNestedBlocksInInlinedIfFalse' expect: 43 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining11
	self load: 'BlockInlining' execute: 'testDeepDeepNestedTrue' expect: 9 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining12
	self load: 'BlockInlining' execute: 'testDeepDeepNestedFalse' expect: 43 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining13
	self load: 'BlockInlining' execute: 'testToDoNestDoNestIfTrue' expect: 2 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining2
	self load: 'BlockInlining' execute: 'testOneLevelInlining' expect: 1 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining3
	self load: 'BlockInlining' execute: 'testOneLevelInliningWithLocalShadowTrue' expect: 2 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining4
	self load: 'BlockInlining' execute: 'testOneLevelInliningWithLocalShadowFalse' expect: 1 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining5
	self load: 'BlockInlining' execute: 'testBlockNestedInIfTrue' expect: 2 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining6
	self load: 'BlockInlining' execute: 'testBlockNestedInIfFalse' expect: 42 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining7
	self load: 'BlockInlining' execute: 'testDeepNestedInlinedIfTrue' expect: 3 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining8
	self load: 'BlockInlining' execute: 'testDeepNestedInlinedIfFalse' expect: 42 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlockInlining9
	self load: 'BlockInlining' execute: 'testDeepNestedBlocksInInlinedIfTrue' expect: 5 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlocks1
	self load: 'Blocks' execute: 'testArg1' expect: 42 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlocks2
	self load: 'Blocks' execute: 'testArg2' expect: 77 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlocks3
	self load: 'Blocks' execute: 'testArgAndLocal' expect: 8 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testBlocks4
	self load: 'Blocks' execute: 'testArgAndContext' expect: 8 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testCompilerSimplification1
	self load: 'CompilerSimplification' execute: 'testReturnConstantSymbol' expect: 'constant' as: #Symbol! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testCompilerSimplification2
	self load: 'CompilerSimplification' execute: 'testReturnConstantInt' expect: 42 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testCompilerSimplification3
	self load: 'CompilerSimplification' execute: 'testReturnSelf' expect: 'CompilerSimplification' as: #Class! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testCompilerSimplification4
	self load: 'CompilerSimplification' execute: 'testReturnSelfImplicitly' expect: 'CompilerSimplification' as: #Class! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testCompilerSimplification5
	self load: 'CompilerSimplification' execute: 'testReturnArgumentN' expect: 55 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testCompilerSimplification6
	self load: 'CompilerSimplification' execute: 'testReturnArgumentA' expect: 44 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testCompilerSimplification7
	self load: 'CompilerSimplification' execute: 'testSetField' expect: 'foo' as: #Symbol! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testCompilerSimplification8
	self load: 'CompilerSimplification' execute: 'testGetField' expect: 40 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testHash
	self load: 'Hash' execute: 'testHash' expect: 444 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testIfTrueIfFalse
	self load: 'IfTrueIfFalse' execute: 'test' expect: 42 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testIfTrueIfFalse2
	self load: 'IfTrueIfFalse' execute: 'test2' expect: 33 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testIfTrueIfFalse3
	self load: 'IfTrueIfFalse' execute: 'test3' expect: 4 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testMethodCall1
	self load: 'MethodCall' execute: 'test' expect: 42 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testMethodCall2
	self load: 'MethodCall' execute: 'test2' expect: 42 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testNonLocalReturn1
	self load: 'NonLocalReturn' execute: 'test1' expect: 42 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testNonLocalReturn2
	self load: 'NonLocalReturn' execute: 'test2' expect: 43 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testNonLocalReturn3
	self load: 'NonLocalReturn' execute: 'test3' expect: 3 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testNonLocalReturn4
	self load: 'NonLocalReturn' execute: 'test4' expect: 42 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testNonLocalReturn5
	self load: 'NonLocalReturn' execute: 'test5' expect: 22 as: #Integer.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testNonLocalVars
	self load: 'NonLocalVars' execute: 'testWriteDifferentTypes' expect: 3.75 as: #Double! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testNumberOfTests
	| numTestMethods |
	numTestMethods := (self class methods select: [ :m | m selector beginsWith: 'test' ]) size.
	numTestMethods := numTestMethods - 1. "ignoring this method"
	self load: 'NumberOfTests' execute: 'numberOfTests' expect: numTestMethods as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testObjectCreation
	<expectedFailure> "Currently, AweSOM is simply too slow to execute this test sensibly"
	self timeLimit: 5 seconds.
	
	self load: 'ObjectCreation' execute: 'test' expect: 1000000 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testRegressions1
	self load: 'Regressions' execute: 'testSymbolEquality' expect: 1 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testRegressions2
	self load: 'Regressions' execute: 'testSymbolReferenceEquality' expect: 1 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testReturn1
	self load: 'Return' execute: 'testReturnSelf' expect: 'Return' as: #Class! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testReturn2
	self load: 'Return' execute: 'testReturnSelfImplicitly' expect: 'Return' as: #Class! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testReturn3
	self load: 'Return' execute: 'testNoReturnReturnSelf' expect: 'Return' as: #Class! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testReturn4
	self load: 'Return' execute: 'testBlockReturnsImplicitlyLastValue' expect: 4 as: #Integer! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testSelfTestAssignSelf
	self load: 'Self' execute: 'testAssignSelf' expect: 42 as: #SOMParseError.! !

!SOMBasicInterpreterTest methodsFor: 'tests'!
testSelfTestAssignSuper
	self load: 'Self' execute: 'testAssignSuper' expect: 42 as: #SOMParseError.! !

!SOMTest methodsFor: 'tests'!
exec: aTest
	| universe |
	universe := SOMUniverse new.
	universe start: {'-cp'. 'Smalltalk'. 'TestSuite/TestHarness.som'. aTest}.
	self assert: universe exitCode equals: 0.
! !

!SOMTest methodsFor: 'tests'!
setUp
	SOMUniverse classPaths: nil! !

!SOMTest methodsFor: 'tests'!
testArray
	self exec: 'Array'
! !

!SOMTest methodsFor: 'tests'!
testBlock
	self exec: 'Block'
! !

!SOMTest methodsFor: 'tests'!
testClassLoading
	self exec: 'ClassLoading'
! !

!SOMTest methodsFor: 'tests'!
testClassStructure
	self exec: 'ClassStructure'
! !

!SOMTest methodsFor: 'tests'!
testClosure
	self exec: 'Closure'
! !

!SOMTest methodsFor: 'tests'!
testCoercion
	self exec: 'Coercion'
! !

!SOMTest methodsFor: 'tests'!
testCompilerReturn
	self exec: 'CompilerReturn'
! !

!SOMTest methodsFor: 'tests'!
testDoesNotUnderstand
	self exec: 'DoesNotUnderstand'
! !

!SOMTest methodsFor: 'tests'!
testDouble
	self exec: 'Double'
! !

!SOMTest methodsFor: 'tests'!
testEmpty
	self exec: 'Empty'
! !

!SOMTest methodsFor: 'tests'!
testGlobal
	self exec: 'Global'
! !

!SOMTest methodsFor: 'tests'!
testHash
	self exec: 'Hash'
! !

!SOMTest methodsFor: 'tests'!
testInteger
	self exec: 'Integer'
! !

!SOMTest methodsFor: 'tests'!
testPreliminary
	self exec: 'Preliminary'
! !

!SOMTest methodsFor: 'tests'!
testReflection
	self exec: 'Reflection'
! !

!SOMTest methodsFor: 'tests'!
testSelfBlock
	self exec: 'SelfBlock'
! !

!SOMTest methodsFor: 'tests'!
testSet
	self exec: 'Set'
! !

!SOMTest methodsFor: 'tests'!
testSpecialSelectors
	self exec: 'SpecialSelectors'
! !

!SOMTest methodsFor: 'tests'!
testString
	self exec: 'String'
! !

!SOMTest methodsFor: 'tests'!
testSuper
	self exec: 'Super'
! !

!SOMTest methodsFor: 'tests'!
testSymbol
	self exec: 'Symbol'
! !

!SOMTest methodsFor: 'tests'!
testSystem
	self exec: 'System'
! !

!SOMTest methodsFor: 'tests'!
testVector
	self exec: 'Vector'
! !

!SOMClassTest methodsFor: 'tests'!
test01ObjectCreation

	| clazz instance |
	self loadClazzes: {#Object}.
	clazz := universe loadSOMClass: #TestHarness.
	instance := clazz primnew.
	self assert: clazz equals: instance somClass! !

!SOMClassTest methodsFor: 'tests'!
test02Subclassing
	| somArray newClass newInstance |
	self loadClazzes: #(#Array #Object).
	somArray := universe globalAt: #Array.
	newClass := SOMClass
		inUniverse: universe
		withSomSuperClass: somArray.
	self 
		assert: newClass squeakClass
		equals: SOMArray.
	newInstance := newClass primnew.
	self 
		assert: newInstance somClass
		equals: newClass! !

!SOMClassTest methodsFor: 'tests'!
test03LookupOfFields

	| source class method pushBc field |
	self loadClazzes: {#Object}.
	source := 'ClassA = ( | x | m=(x) )'.
	class := universe loadAndStoreFromSource: source.
	method := class somInstanceInvokables at: 1.
	pushBc := method bytecodes first.
	self shouldnt: [field := class allInstanceFields at: pushBc fieldIndex] raise: Error.
	self assert: field string equals: 'x'.! !

!SOMClassTest methodsFor: 'tests'!
test04LookupOfFieldDefinedInSuperclass

	| sourceSuper sourceSub
	  class method pushBc field |
	self loadClazzes: #(#Object).
	sourceSuper := 'ClassA = ( | aField | )'.
	sourceSub   := 'ClassB = ClassA ( m=(aField) )'.
	
	universe loadAndStoreFromSource: sourceSuper.
	class := universe loadAndStoreFromSource: sourceSub.
	
	method := class somInstanceInvokables at: 1.
	pushBc := method bytecodes first.

	self shouldnt: [field := class allInstanceFields at: pushBc fieldIndex] raise: Error.
	self assert: field string equals: 'aField'.
! !

!SOMClassTest methodsFor: 'tests'!
test05ClassDoesNotRegisterInUniverseAfterCompiling

	universe loadAndStoreFromSource: 'ClassA = ()'.
	self assert: (universe hasGlobalAt: #ClassA).! !

!SOMClassTest methodsFor: 'tests'!
test06ClassClassHasCorrectInstanceFields

	| classClass |
	self loadClazzes: #(#Object #Class).
	classClass := universe globalAt: #Class.
	self
		assert: classClass allInstanceFields
		equals: #()
		"Note: in previous versions of SOM we did have the following fields:
		       'class' 'superClass' 'name' 'instanceFields' 'instanceInvokables'"
! !

!SOMClassTest methodsFor: 'tests'!
test07MetaClassHasInstanceFields

	| class field method pushFieldBc |
	self loadClazzes: #(#Object #Class).
	class := universe loadAndStoreFromSource: 'ClassA = (---- | x | m = (x))'.
	self assert: class somClass somInstanceFields size equals: 1.
	method := class somClass somInstanceInvokables at: 1.
	pushFieldBc := method bytecodes first.
	self shouldnt: [field := class fieldAtIndex: pushFieldBc fieldIndex] raise: Error.
	self assert: universe globalNil equals: field.! !

!SOMClassTest methodsFor: 'tests'!
test08NumberOfFieldsInSubclass

	| sourceSuper sourceSub
	  classSuper classSub method pushBc field |
	self loadClazzes: #(#Object).
	sourceSuper := 'ClassA = ( | aa1 aa2 aa3 | )'.
	sourceSub   := 'ClassB = ClassA ( | bb1 bb2 bb3 |  m=(aa2) )'.
	
	classSuper := universe loadAndStoreFromSource: sourceSuper.
	classSub := universe loadAndStoreFromSource: sourceSub.
	
	method := classSub somInstanceInvokables at: 1.
	pushBc := method bytecodes first.

	self shouldnt: [field := classSub allInstanceFields at: pushBc fieldIndex] raise: Error.
	self assert: field string equals: 'aa2'.

	self assert: classSuper somInstanceFields size equals: 3.
	self assert: classSub somInstanceFields size equals: 6.! !

!SOMClassTest methodsFor: 'running'!
setUp
	SOMUniverse classPaths: SOMTools basicInterpreterTestClassPath.
	super setUp.
	! !

!SOMFrameTest methodsFor: 'tests'!
test01Push
	self assert: frame stackPointer equals: 0.
	frame push: 'A'.
	self assert: frame stackPointer equals: 1! !

!SOMFrameTest methodsFor: 'tests'!
test02Pop
	frame push: 'A'.
	self assert: 'A' equals: (frame pop).
	
	frame push: 'A'.
	frame push: 'B'.
	self assert: 'B' equals: (frame pop);
		assert: 'A' equals: (frame pop).! !

!SOMFrameTest methodsFor: 'tests'!
test03Context
	self 
		assert: universe globalNil
		equals: frame somContext.
	self assert: frame = (frame frameAtContextLevel: 1).
	self 
		assert: frame somContext
		equals: (frame frameAtContextLevel: 2).
	frame2 somContext: frame.
	self 
		assert: frame
		equals: frame2 somContext.
	self 
		assert: frame2
		equals: (frame2 frameAtContextLevel: 1).
	self 
		assert: frame2 somContext
		equals: (frame2 frameAtContextLevel: 2).
	self 
		assert: frame2 somContext somContext
		equals: (frame2 frameAtContextLevel: 3)! !

!SOMFrameTest methodsFor: 'tests'!
test04StackSize
	self assert: 10 equals: frame remainingStackSize.
	
	9 to: 0 by: -1 do: [ :expectedRemainingSize |
		frame push: 'A'.
		self assert: expectedRemainingSize equals: frame remainingStackSize.
	].! !

!SOMFrameTest methodsFor: 'tests'!
test05CallPrimitive
	| theSelf theOther method |
	theSelf := SOMInteger 
		inUniverse: universe
		new: 50.
	theOther := SOMInteger 
		inUniverse: universe
		new: 8.
	frame
		push: theSelf;
		push: theOther.
	method := SOMPrimitive inUniverse: universe.
	method
		numberOfArguments: 2;
		somSignature: (SOMSymbol 
				inUniverse: universe
				string: '-');
		invokeInFrame: frame.
	self 
		assert: frame pop number
		equals: 42! !

!SOMFrameTest methodsFor: 'running'!
setUp

	super setUp.
	frame := (SOMFrame 
		inUniverse: universe
		size: 10)
		somMethod: (SOMMethod 
				inUniverse: universe
				withNumberOfAdditionalFields: 0);
		yourself.
	frame2 := (SOMFrame 
		inUniverse: universe
		size: 10)
		somMethod: (SOMMethod 
				inUniverse: universe
				withNumberOfAdditionalFields: 0);
		yourself! !

!SOMGlobalsTest methodsFor: 'tests'!
test01Metaclass
	| clazz metaclazz object nilObject |
	metaclazz := universe globalAt: #Metaclass.
	clazz := universe globalAt: #Class.
	object := universe globalAt: #Object.
	nilObject := universe globalAt: #nil.
	self 
		assert: metaclazz somClass somClass
		equals: metaclazz.
	self 
		assert: object somSuperClass
		equals: nilObject.
	self 
		assert: object somClass somSuperClass
		equals: clazz.
	self 
		assert: object somClass somClass
		equals: metaclazz! !

!SOMGlobalsTest methodsFor: 'tests'!
test02Subclass
	| object array |
	object := universe globalAt: #Object.
	array := universe globalAt: #Array.
	self 
		assert: array somSuperClass
		equals: object.
	self 
		assert: array somClass somSuperClass
		equals: object somClass! !

!SOMGlobalsTest methodsFor: 'tests'!
test03NilClass
	| nilObject nilClass object |
	nilObject := universe globalAt: #nil.
	nilClass := universe globalAt: #Nil.
	object := universe globalAt: #Object.
	self 
		assert: nilObject somClass
		equals: nilClass.
	self 
		assert: nilObject somClass somSuperClass
		equals: object! !

!SOMInterpreterTest methodsFor: 'helper'!
assembleMethod: name withArguments: args withByteCodes: byteCodeGenerator 
	^ self assembleMethod: name withArguments: args withLocals: {} withByteCodes: byteCodeGenerator! !

!SOMInterpreterTest methodsFor: 'helper'!
assembleMethod: name withArguments: args withLocals: locals withByteCodes: byteCodeGenerator

	| testMgenc |
	testMgenc := SOMMethodGenerationContext named: name.
	byteCodeGenerator value: testMgenc.
	testMgenc arguments
		add: 'self';
		addAll: args.
	testMgenc locals addAll: locals.
	^ testMgenc assembleIn: universe.! !

!SOMInterpreterTest methodsFor: 'helper'!
assembleMethod: name withByteCodes: byteCodeGenerator 
	^ self assembleMethod: name withArguments: {} withLocals: {} withByteCodes: byteCodeGenerator! !

!SOMInterpreterTest methodsFor: 'helper'!
assembleMethod: name withLocals: locals withByteCodes: byteCodeGenerator 
	^ self assembleMethod: name withArguments: {} withLocals: locals withByteCodes: byteCodeGenerator! !

!SOMInterpreterTest methodsFor: 'helper'!
startInterpreterWith: method 
	self startInterpreterWith: method withLocals: {} withArguments: {}! !

!SOMInterpreterTest methodsFor: 'helper'!
startInterpreterWith: method withArguments: args
	self startInterpreterWith: method withLocals: {} withArguments: args! !

!SOMInterpreterTest methodsFor: 'helper'!
startInterpreterWith: method withLocals: locals
	self startInterpreterWith: method withLocals: locals withArguments: {}! !

!SOMInterpreterTest methodsFor: 'helper'!
startInterpreterWith: method withLocals: locals withArguments: args
	| frame |
	frame := interpreter pushNewFrameWithMethod: method.
	locals withIndexDo: [:each :index | 
		frame localAtIndex: index contextLevel: 1 put: each].
	args withIndexDo: [:each :index | 
		frame argumentAtIndex: index contextLevel: 1 put: each].
	interpreter start.! !

!SOMInterpreterTest methodsFor: 'running'!
compileMethod: source 

	| parser mgenc |
	parser := SOMMethodParser inUniverse: universe onSource: source from: 'test'.
	mgenc := parser apply: #method.
	^ mgenc assembleIn: universe.! !

!SOMInterpreterTest methodsFor: 'running'!
setUp

	super setUp.
	interpreter := universe interpreter.! !

!SOMInterpreterTest methodsFor: 'tests'!
test01Bootstrap
	universe bootstrapWithArguments: {}! !

!SOMInterpreterTest methodsFor: 'tests'!
test02PushConstant
	self startInterpreterWith: 
		(self assembleMethod: 'test' withByteCodes: [:mgenc | 
			mgenc 
				bcPushConstant: (universe newNumber: 42); 
				bcHalt
		]).
	
	self 
		assert: 42
		equals: interpreter somFrame pop number.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test03Dup
	"Duplicates the constant 42 on the stack and checks if there are exactly
	2 matching items on the stack"
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushConstant: (universe newNumber: 42); 
					bcDup;
					bcHalt
			]).
	
	self 
		assert: 42
		equals: interpreter somFrame pop number.
	self 
		assert: 42
		equals: interpreter somFrame pop number.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test04PushGlobal
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushGlobal: #nil;
					bcHalt
			]).
			
	self assert: universe globalNil = interpreter somFrame pop.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test05PushLocal
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withLocals: {'a'. 'b'} 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushLocalIndex: 2 ctxIndex: 1;
					bcHalt
			])
		withLocals: {universe newNumber: 41. universe newNumber: 42}.
	
	self assert: 42 equals: interpreter somFrame pop number.
	self should: [interpreter somFrame pop] raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test06PushArguments
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withArguments: {'a'. 'b'} 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushArgumentIndex: 2 ctxIndex: 1;
					bcHalt
			])
		withArguments: {universe newNumber: 41. universe newNumber: 42}.
	
	self assert: 42 equals: interpreter somFrame pop number.
	self should: [interpreter somFrame pop] raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test07Pop
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushConstant: (universe newNumber: 42); 
					bcDup;
					bcPop;
					bcHalt
			]).
	
	self assert: 42 equals: interpreter somFrame pop number.
	self should: [interpreter somFrame pop] raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test08PopLocal
	"Pushes constant 42 to stack and pops it into local variable"
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withLocals: {'a'. 'b'} 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushConstant: (universe newNumber: 42);
					bcPopLocalIndex: 2 ctxIndex: 1;
					bcHalt
			])
		withLocals: {universe newNumber: 41. nil}.
		
	self assert: 42 equals: (interpreter somFrame localAtIndex: 2 contextLevel: 1) number.
	self should: [interpreter somFrame pop] raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test09PopArgument
	"Pushes constant 42 to stack and pops it into argument"
	self startInterpreterWith: 
		(self assembleMethod: 'test' 
			withArguments: {'a'. 'b'} 
			withByteCodes: [:mgenc | 
				mgenc 
					bcPushConstant: (universe newNumber: 42);
					bcPopArgumentIndex: 2 ctxIndex: 1;
					bcHalt
			])
		withArguments: {universe newNumber: 41. nil}.
	
	self assert: 42 equals: (interpreter somFrame argumentAtIndex: 2 contextLevel: 1) number.
	self should: [interpreter somFrame pop] raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test10ReturnLocal

	| callerFrame calleeFrame method |
	method := self
		assembleMethod: 'main' 
		withByteCodes: [:mgenc | mgenc bcHalt].
	method maxStackDepth: 2.
	callerFrame := interpreter pushNewFrameWithMethod: method.
	callerFrame push: (universe newSymbol: #self).
	
	method := self compileMethod: 'subroutine = (^ 42)'.
	calleeFrame := interpreter pushNewFrameWithMethod: method.
	calleeFrame somPreviousFrame: callerFrame.

	
	interpreter start.
	
	self should: [calleeFrame pop] raise: Error.
	self assert: 42 equals: callerFrame pop number.
	self should: [callerFrame pop] raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test11Send
	| testClazz testMethod testInstance |
	testClazz := SOMClass inUniverse: universe.
	testMethod := self 
		assembleMethod: 'testMessage:p2:'
		withArguments: {  'a'. 'b'  }
		withByteCodes: 
			[ :mgenc | 
			mgenc
				bcPushArgumentIndex: 2
					ctxIndex: 1;
				bcReturnLocal ].
	testClazz somInstanceInvokables: (SOMArray 
			inUniverse: universe
			withAll: {  testMethod  }).
	testClazz somInstanceFields: (SOMArray 
			inUniverse: universe
			withAll: {  (universe newSymbol: 'class')  }).
	testInstance := SOMObject 
		inUniverse: universe
		withSomClass: testClazz.
	self startInterpreterWith: (self 
			assembleMethod: 'main'
			withByteCodes: 
				[ :mgenc | 
				mgenc
					bcPushConstant: testInstance;
					bcPushConstant: #param1;
					bcPushConstant: #param2;
					bcSend: #testMessage:p2:;
					bcHalt ]).
	self 
		assert: #param1
		equals: interpreter somFrame pop.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test12DNU
	| testClazz testMethod testInstance params result |
	self loadClazzes: #(#Array #Object).
	testClazz := SOMClass inUniverse: universe.
	params := SOMArray 
		inUniverse: universe
		size: 5.
	testMethod := self 
		assembleMethod: 'doesNotUnderstand:arguments:'
		withArguments: {  'message'. 'arguments'  }
		withByteCodes: 
			[ :mgenc | 
			1 
				to: 3
				do: 
					[ :paramIndex | 
					mgenc
						bcPushConstant: params;
						bcPushConstant: (universe newNumber: paramIndex);
						bcPushArgumentIndex: paramIndex
							ctxIndex: 1;
						bcSend: #at:put: ].
			mgenc bcReturnLocal ].
	testClazz somInstanceInvokables: (SOMArray 
			inUniverse: universe
			withAll: {  testMethod  }).
	testClazz somInstanceFields: (SOMArray 
			inUniverse: universe
			withAll: {  (universe newSymbol: 'class')  }).
	testInstance := SOMObject 
		inUniverse: universe
		withSomClass: testClazz.
	self startInterpreterWith: (self 
			assembleMethod: 'main'
			withByteCodes: 
				[ :mgenc | 
				mgenc
					bcPushConstant: testInstance;
					bcPushConstant: #param1;
					bcPushConstant: #param2;
					bcPushConstant: #param3;
					bcSend: #unknownMethod:p2:p3:;
					bcHalt ]).
	result := interpreter somFrame pop.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error.
	self 
		assert: testInstance
		equals: (params at: 1).
	self 
		assert: #unknownMethod:p2:p3:
		equals: (params at: 2) symbol.
	self 
		assert: {  #param1. #param2. #param3  }
		equals: (params at: 3) elements! !

!SOMInterpreterTest methodsFor: 'tests'!
test13Block
	| testMethod |
	self loadClazzes: #(#Object #Block).
	testMethod := self 
		assembleMethod: 'testMessage:p2:'
		withArguments: {  'a'. 'b'  }
		withByteCodes: 
			[ :mgenc | 
			mgenc
				bcPushArgumentIndex: 2
					ctxIndex: 1;
				bcReturnLocal	"pushes the second REAL param" ].
	testMethod numberOfArguments: 2.	"no self"
	self startInterpreterWith: (self 
			assembleMethod: 'main'
			withByteCodes: 
				[ :mgenc | 
				mgenc
					bcPushBlock: testMethod;
					bcPushConstant: #param1;
					bcPushConstant: #param2;
					bcSend: #value:with:;
					bcHalt ]).
	self 
		assert: #param2
		equals: interpreter somFrame pop.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test14ReturnNonLocal

	| callerFrame calleeFrame method |
	method := self 
		assembleMethod: 'main'
		withByteCodes: [:mgenc | mgenc bcHalt].
	method maxStackDepth: 2.
	callerFrame := interpreter pushNewFrameWithMethod: method.
	callerFrame push: (universe newSymbol: #self).
	
	method := self compileMethod: 'subroutine = ([^42] value. ^24)'.
	calleeFrame := interpreter pushNewFrameWithMethod: method.
	calleeFrame somPreviousFrame: callerFrame.
	
	interpreter start.
	self 
		assert: 42
		equals: callerFrame pop number.
	self 
		should: [callerFrame pop]
		raise: Error! !

!SOMInterpreterTest methodsFor: 'tests'!
test15SuperSend
	| testClazz testMethod superClazz superMethod testInstance |
	superClazz := SOMClass inUniverse: universe.
	superMethod := self 
		assembleMethod: 'test'
		withByteCodes: 
			[ :mgenc | 
			mgenc
				bcPushConstant: (universe newNumber: 42);
				bcReturnLocal ].
	superMethod somHolder: superClazz.
	superClazz somInstanceInvokables: (SOMArray 
			inUniverse: universe
			withAll: {  superMethod  }).
	superClazz somInstanceFields: (SOMArray 
			inUniverse: universe
			withAll: {  (universe newSymbol: 'class')  }).
	testClazz := SOMClass
		inUniverse: universe
		withSomSuperClass: superClazz.
	testMethod := self 
		assembleMethod: 'test'
		withByteCodes: 
			[ :mgenc | 
			mgenc
				bcPushArgumentIndex: 1
					ctxIndex: 1;
				bcSuperSend: #test;
				bcReturnLocal ].
	testMethod somHolder: testClazz.
	testClazz somInstanceInvokables: (SOMArray 
			inUniverse: universe
			withAll: {  testMethod  }).
	testClazz somInstanceFields: (SOMArray 
			inUniverse: universe
			withAll: {  (universe newString: 'class')  }).
	testInstance := SOMObject 
		inUniverse: universe
		withSomClass: testClazz.
	self startInterpreterWith: (self 
			assembleMethod: 'main'
			withByteCodes: 
				[ :mgenc | 
				mgenc
					bcPushConstant: testInstance;
					bcSend: #test;
					bcHalt ]).
	self 
		assert: 42
		equals: interpreter somFrame pop number.
	self 
		should: [ interpreter somFrame pop ]
		raise: Error! !

!SOMMethodTest methodsFor: 'tests'!
test01MaxStackSize

	self createMethod: 'x = ()'.
	self assert: method maxStackDepth equals: 1.
	self createMethod: 'x = (1. 2. ''abc''. #def)'.
	self assert: method maxStackDepth equals: 1.! !

!SOMMethodTest methodsFor: 'tests'!
test02MaxStackSize

	self createMethod: 'x = (1+2)'.
	self assert: method maxStackDepth equals: 2.! !

!SOMMethodTest methodsFor: 'tests'!
test03MaxStackSize

	self createMethod: 'x: a = ( self a: 3 b: a)'.
	self assert: method maxStackDepth equals: 3.! !

!SOMMethodTest methodsFor: 'helper'!
createMethod: source

	method := ((SOMMethodParser
		inUniverse: universe
		onSource: source from: 'test')
			fakeCgenc;
			apply: #method) assembleIn: universe.! !

!SOMNumberTest methodsFor: 'tests'!
testIntegerVsBigInteger

	| n |
	n := universe newNumber: SOMInteger maxInt.
	self assert: n class equals: SOMInteger.
	n := universe newNumber: SOMInteger maxInt + 1.
	self assert: n class equals: SOMBigInteger.! !

!SOMObjectTest methodsFor: 'tests'!
test01CreateSimpleObject
	| object |
	object := SOMObject inUniverse: universe withNumberOfAdditionalFields: 1.
	
	
	"Objects now come with a default class"
	"self 
		assert: (object fieldAtIndex: 1)
		equals: (universe globalAt: #nil)."
	self 
		assert: (object fieldAtIndex: 1)
		equals: (universe globalNil).
	self assert: object numberOfFields equals: 1.! !

!SOMObjectTest methodsFor: 'tests'!
test02FieldAccess
	| object1 object2 |
	object1 := SOMObject inUniverse: universe withNumberOfAdditionalFields: 1.
	object2 := SOMObject inUniverse: universe withNumberOfAdditionalFields: 0.
	object1 
		fieldAtIndex: 1
		put: object2.
	self 
		assert: (object1 fieldAtIndex: 1)
		equals: object2! !

!SOMObjectTest methodsFor: 'tests'!
test04Array

	| array |
	array := universe newArray: 2.
	array at: 1 put: 42.
	array at: 2 put: 23.
	self assert: (array at: 1) equals: 42.
	self assert: (array at: 2) equals: 23! !

!SOMObjectTest methodsFor: 'tests'!
test04bArray
	| array |
	self loadClazzes: #(#Object #Array).
	array := SOMArray 
		inUniverse: universe
		withSomClass: (universe globalAt: #Array)
		numIndexable: 3.
	array 
		at: 3
		put: 42.
	self 
		assert: (array at: 3)
		equals: 42.
	self 
		should: [ array at: 4 ]
		raise: Error! !

!SOMObjectTest methodsFor: 'tests'!
test05UniverseAccess

	| array |
	array := SOMArray inUniverse: universe withNumberOfAdditionalFields: 2.
	self assert: array universe globalNil equals: universe globalNil.! !

!SOMFakeObjectTest methodsFor: 'running'!
setUp

	"These should be set automatically when loading SOM classes"
	| objectClass instanceFields |
	super setUp.
	objectClass := universe globalAt: #Object.
	instanceFields := SOMArray inUniverse: universe size: 1.
	instanceFields at: 1 put: (universe newSymbol: 'class').
	objectClass instanceFields: instanceFields.! !

!SOMFakeObjectTest class methodsFor: 'as yet unclassified'!
shouldInheritSelectors
	^ false "reset to true in order to execute fake object tests"! !

!SOMPrimitiveTest methodsFor: 'tests'!
test01AddIntegers
	| a b c |
	a := universe newNumber: 5.
	b := universe newNumber: 7.
	c := a primPlus: b.
	self 
		assert: c number
		equals: 12.
	self 
		assert: c somClass
		equals: (universe globalAt: #Integer).
	a := SOMInteger 
		inUniverse: universe
		new: 5.
	b := SOMDouble 
		inUniverse: universe
		new: 7.5.
	c := a primPlus: b.
	self 
		assert: c number
		equals: 12.5.
	self 
		assert: c somClass
		equals: (universe globalAt: #Double)! !

!SOMPrimitiveTest methodsFor: 'tests'!
test02AsString
	| a s |
	a := SOMInteger 
		inUniverse: universe
		new: 5678.
	s := a primasString.
	self 
		assert: s string
		equals: '5678'.
	self 
		assert: s somClass
		equals: (universe globalAt: #String)! !

!SOMPrimitiveTest methodsFor: 'tests'!
test03PrimitiveNames
	| primitive |
	primitive := SOMPrimitive inUniverse: universe.
	primitive somSignature: (SOMSymbol 
			inUniverse: universe
			string: '-').
	self 
		assert: primitive realSignature string
		equals: #primMinus:.
	primitive somSignature: (SOMSymbol 
			inUniverse: universe
			string: '//').
	self 
		assert: primitive realSignature string
		equals: #primSlashSlash:.
	primitive somSignature: (SOMSymbol 
			inUniverse: universe
			string: 'key:word:').
	self 
		assert: primitive realSignature string
		equals: #primkey:word:.
	primitive somSignature: (SOMSymbol 
			inUniverse: universe
			string: 'unary').
	self 
		assert: primitive realSignature string
		equals: #primunary! !

!SOMPrimitiveTest methodsFor: 'tests'!
test04PrimitiveNew
	| clazz instance primLength |
	self loadClazzes: #(#Object #Array).
	clazz := universe globalAt: #Array.
	instance := clazz primnew.
	self 
		assert: instance somClass
		equals: clazz.
	instance := clazz 
		performPrimitive: #primnew:
		withArguments: {  (universe newNumber: 5)  }.
	self 
		assert: instance somClass
		equals: clazz.
	primLength := instance 
		performPrimitive: #primlength
		withArguments: {   }.
	self 
		assert: primLength number
		equals: 5! !

!SOMPrimitiveTest methodsFor: 'tests'!
test05PrimitiveComparison

	| symbol1 symbol2 string1 |
	symbol1 := universe newSymbol: 'banana'.
	symbol2 := universe newSymbol: 'banana'.
	string1 := universe newString: 'banana'.
	self assert: (symbol1 primEqualEqual: symbol2) equals: (universe newBool: true).
	
	self assert: (symbol1 primEqual: string1) equals: (universe newBool: true).! !

!SOMUniverseTest methodsFor: 'tests'!
test01GlobalAccess
	self assert: universe globalNil equals: (universe globalAt: #nil).! !

!SOMUniverseTest methodsFor: 'tests'!
testHandleArguments
	| args |
	args := universe handleArguments: { 'Test.som'. '1'. '2'. '3' }.
	self assert: args equals: { 'Test'. '1'. '2'. '3' }.! !

!HaltPrimData class methodsFor: 'initialization'!
break
	^ doBreak! !

!HaltPrimData class methodsFor: 'initialization'!
resetBreak
	" HaltPrimData resetBreak "
	doBreak := false.! !

!HaltPrimData class methodsFor: 'initialization'!
setBreak
	doBreak := true! !

!SOMUniverse methodsFor: 'code evaluation'!
createShellClassWith: code

	^ String streamContents: [:stream |
		stream
			nextPutAll: 'ShellClass = ('; cr;
			nextPutAll: 'run = ('; cr;
			nextPutAll: code; cr;
			nextPutAll: '))'].! !

!SOMUniverse methodsFor: 'code evaluation'!
eval: code

	| shellClassSource shellClass |
	self initializeObjectSystemIfNecessary.
	shellClassSource := self createShellClassWith: code.
	shellClass := self loadAndStoreFromSource: shellClassSource.
	self start: {shellClass somName string}.! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalAt: aSymbol 

	^ globals at: aSymbol! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalAt: aSymbol ifAbsent: aBlock
	^ globals at: aSymbol ifAbsent: aBlock.! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalAt: aSymbol ifAbsentPut: aBlock
"Treat nil values as absent values"
	| result |
	result := globals at: aSymbol ifAbsentPut: aBlock.
	^ result! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalAt: aSymbol put: anObject 

	^ globals 
		at: aSymbol
		put: anObject! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalBlockClass
	^ somBlockClass! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalBlockClass: numArgs
	^ somBlockClasses at: numArgs + 1
! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalClassClass
	^ somClassClass! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalDoubleClass
	^ somDoubleClass! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalFalse
	^ somFalseObject! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalIntegerClass
	^ somIntegerClass! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalMetaclassClass
	^ somMetaclassClass! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalNil

	^ somNilObject! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalSystemClass
	^ somSystemClass! !

!SOMUniverse methodsFor: 'gobal accessing'!
globalTrue
	^ somTrueObject! !

!SOMUniverse methodsFor: 'gobal accessing'!
globals

	^ globals! !

!SOMUniverse methodsFor: 'gobal accessing'!
hasGlobalAt: aSymbol 
	^ globals includesKey: aSymbol! !

!SOMUniverse methodsFor: 'gobal accessing'!
newBlock: blockMethod in: aSomFrame

	^ (SOMBlock inUniverse: self)
		somClass: (self globalBlockClass: blockMethod numberOfArguments);
		somBlockMethod: blockMethod;
		somContext: aSomFrame! !

!SOMUniverse methodsFor: 'gobal accessing'!
symbolFor: global

	self flag: #rkrk. "Should return SOMSymbol!!!!?"
	^ globals keyAtValue: global ifAbsent: [nil].! !

!SOMUniverse methodsFor: 'object creation'!
createGlobal: globalName somClass: className

	| sqClassName sqClass somClass instance |
	"If class exists in Squeak use it as base class"
	sqClassName :=  ('SOM' , className) asSymbol.
	sqClass := (Smalltalk
		classNamed: sqClassName)
		ifNil: [SOMObject].
	somClass := self
		globalAt: className
		ifAbsentPut: [self loadSOMClass: className].
	somClass ifNil: [ Error signal: 'Loading class ', className, ' failed. Classpath: ', SOMUniverse classPaths printString ].
	
	instance := sqClass
		inUniverse: self
		withSomClass: somClass.
	^ self
		globalAt: globalName
		put: instance.! !

!SOMUniverse methodsFor: 'object creation'!
newArray: size

	^ SOMArray
		inUniverse: self
		size: size! !

!SOMUniverse methodsFor: 'object creation'!
newArrayWithAll: collection

	^ SOMArray
		inUniverse: self
		withAll: collection! !

!SOMUniverse methodsFor: 'object creation'!
newBool: squeakBool

	^  squeakBool ifTrue: [ somTrueObject ] ifFalse: [ somFalseObject ]! !

!SOMUniverse methodsFor: 'object creation'!
newInstance: aSomClass
	^ SOMObject inUniverse: self withSomClass: aSomClass! !

!SOMUniverse methodsFor: 'object creation'!
newNumber: number

	^ SOMNumber create: number in: self.! !

!SOMUniverse methodsFor: 'object creation'!
newString: string

	^ SOMString
		inUniverse: self
		string: string! !

!SOMUniverse methodsFor: 'object creation'!
newSymbol: symbolOrString

	^ self symbolTable somSymbolFor: symbolOrString.! !

!SOMUniverse methodsFor: 'object creation'!
newSystemClass
	| systemClass |
	systemClass := SOMClass inUniverse: self.
	
	systemClass somClass: (SOMClass inUniverse: self).
	systemClass somClass somClass: somMetaclassClass.
	
	^ systemClass! !

!SOMUniverse methodsFor: 'initializing'!
allocateBasicObjects
	"Allocate the nil object"
	somNilObject := SOMObject inUniverse: self.
	
	"Allocate the Metaclass classes"
	somMetaclassClass := self newMetaclassClass.

	"Allocate the rest of the system classes"
	somObjectClass := self newSystemClass.
	somNilClass := self newSystemClass.
	somClassClass := self newSystemClass.
	somArrayClass := self newSystemClass.
	somSymbolClass := self newSystemClass.
	somMethodClass := self newSystemClass.
	somIntegerClass := self newSystemClass.
	somPrimitiveClass := self newSystemClass.
	somStringClass := self newSystemClass.
	somDoubleClass := self newSystemClass.
	
	"Setup the class reference for the nil object"
	somNilObject somClass: somNilClass.
	
	"Initialize the system classes"
	self initializeSystemClass: somObjectClass superclass: nil named: #Object.
	self initializeSystemClass: somClassClass  superclass: somObjectClass  named: #Class.
	self initializeSystemClass: somMetaclassClass superclass: somClassClass named: #Metaclass.
	self initializeSystemClass: somNilClass superclass: somObjectClass named: #Nil.
	self initializeSystemClass: somArrayClass superclass: somObjectClass named: #Array.
	self initializeSystemClass: somMethodClass superclass: somArrayClass named: #Method.
	self initializeSystemClass: somStringClass superclass: somObjectClass named: #String.
	self initializeSystemClass: somSymbolClass superclass: somStringClass named: #Symbol.
	self initializeSystemClass: somIntegerClass superclass: somObjectClass named: #Integer.
	self initializeSystemClass: somPrimitiveClass superclass: somObjectClass named: #Primitive.
	self initializeSystemClass: somDoubleClass superclass: somObjectClass named: #Double.! !

!SOMUniverse methodsFor: 'initializing'!
initialize

	super initialize.
	self interpreter: (self class defaultInterpreter inUniverse: self).
	globals := IdentityDictionary new.
	symbolTable := SOMSymbolTable in: self.
	somBlockClasses := Array new: 3.

	exitCode := 0.
	isInitialized := false.! !

!SOMUniverse methodsFor: 'initializing'!
initializeGlobalsDict: systemObject
	"Put special objects and classess into the dictionary of globals"
	self globalAt: #nil put: somNilObject.
	self globalAt: #true put: somTrueObject.
	self globalAt: #false put: somFalseObject.
	self globalAt: #system put: systemObject.

	^ systemObject
! !

!SOMUniverse methodsFor: 'initializing'!
initializeObjectSystem
	| systemObject |
	self allocateBasicObjects.
	
	"Load methods and fields into the system classes"
	self loadSystemClass: somObjectClass.
	self loadSystemClass: somClassClass.
	self loadSystemClass: somMetaclassClass.
	self loadSystemClass: somNilClass.
	self loadSystemClass: somArrayClass.
	self loadSystemClass: somMethodClass.
	self loadSystemClass: somStringClass.
	self loadSystemClass: somSymbolClass.
	self loadSystemClass: somIntegerClass.
	self loadSystemClass: somPrimitiveClass.
	self loadSystemClass: somDoubleClass.

	"Fix up objectClass"
	somObjectClass somSuperClass: somNilObject.
	
	"Load the generic block class"
	somBlockClass := self loadSOMClass: #Block.
	somBlockClasses at: 1 put: (self loadSOMClass: #Block1).
	somBlockClasses at: 2 put: (self loadSOMClass: #Block2).
	somBlockClasses at: 3 put: (self loadSOMClass: #Block3).
	
	"Setup the true and false objects"
	somTrueClass := self loadSOMClass: #True.
	somTrueObject := self newInstance: somTrueClass.
	
	somFalseClass := self loadSOMClass: #False.
	somFalseObject := self newInstance: somFalseClass.
	
	somSystemClass := self loadSOMClass: #System.
	systemObject := SOMSystem inUniverse: self withSomClass: somSystemClass.
	
	self initializeGlobalsDict: systemObject.
	
	isInitialized := true.
	^ systemObject
! !

!SOMUniverse methodsFor: 'initializing'!
initializeObjectSystemIfNecessary

	isInitialized ifFalse: [ self initializeObjectSystem ]! !

!SOMUniverse methodsFor: 'initializing'!
initializeSystemClass: systemClass superclass: superClass named: name
	self assert: name isSymbol.

	superClass
		ifNotNil: [
			systemClass somSuperClass: superClass.
			systemClass somClass somSuperClass: superClass somClass ]
		ifNil: [ 
			systemClass somClass somSuperClass: somClassClass ].
	
	"Initialize the array of instance fields"
	systemClass somInstanceFields: (self newArray: 0).
	systemClass somClass somInstanceFields: (self newArray: 0).

	"Initialize the array of instance invokables"
	systemClass somInstanceInvokables: (self newArray: 0).
	systemClass somClass somInstanceInvokables: (self newArray: 0).
	
	"Initialize the name of the system class"
	systemClass somName: (self newSymbol: name).
	systemClass somClass somName: (self newSymbol: name, ' class').

	"Insert the system class into the globals dictionary"
	self globalAt: name put: systemClass
! !

!SOMUniverse methodsFor: 'initializing'!
initializeTestObjectSystem
	self allocateBasicObjects.
	
	somBlockClass := self newSystemClass.
	self initializeSystemClass: somBlockClass superclass: somObjectClass named: #Block.
	somBlockClasses at: 1 put: somBlockClass.
	somBlockClasses at: 2 put: somBlockClass.
	somBlockClasses at: 3 put: somBlockClass.


	self initializeGlobalsDict: somNilObject.

	somSystemClass := self newSystemClass.
	self globalAt: #System put: somSystemClass.

	isInitialized := true.
	^ somNilObject
	! !

!SOMUniverse methodsFor: 'initializing'!
newMetaclassClass
	| result |
	"Allocate the metaclass classes"
	result := SOMClass inUniverse: self.
	result somClass: (SOMClass inUniverse: self).
	"Setup the metaclass hierarchy"
	
	result somClass somClass: result.

	"Return the freshly allocated metaclass class"
	^ result
! !

!SOMUniverse methodsFor: 'initializing'!
sortedSubClassesOf: class

	"Sort by inheritance hierarchy"
	^ (SortedCollection sortBlock: [:a :b | (a inheritsFrom: b) not])
		addAll: class withAllSubclasses;
		sortTopologically;
		yourself! !

!SOMUniverse methodsFor: 'initializing'!
start: arguments

	| remainingArgs wrappedArguments |
	remainingArgs := self handleArguments: arguments.
 	self initializeObjectSystem.
	wrappedArguments := remainingArgs collect: [ :arg | self newString: arg].
	self bootstrapWithArguments: (SOMArray inUniverse: self withAll: wrappedArguments).! !

!SOMUniverse methodsFor: 'initializing'!
start: className method: methodName
	| invokable class frame |
 	self initializeObjectSystem.
	
	class := self loadSOMClass: className asSymbol.
	invokable := class somClass lookupInvokable: methodName asSymbol.
	 
	frame := self 
		bootstrapWithEntryPoint: invokable
		on: class
		withArguments: nil.
	^ frame pop
! !

!SOMUniverse methodsFor: 'quiting'!
quit: errorCode

	interpreter stop.
	exitCode := errorCode number.
! !

!SOMUniverse methodsFor: 'printing'!
printUsage
	 self outStream
		nextPutAll: 'Usage: som [-options] [args...]'; lf;
		lf;
		nextPutAll: 'where options include:'; lf;
		nextPutAll: '    -cp <directories separated by ":">'; lf;
		nextPutAll: '              sets search path for application classes'; lf;
		lf
! !

!SOMUniverse methodsFor: 'bootstrapping'!
bootstrapFrameFor: receiver withArguments: args
	| frame |
	frame := self interpreter pushNewFrameWithMethod: self bootstrapMethod.
	frame push: receiver.
	args ifNotNil: [
		frame push: args ].

	^ frame
! !

!SOMUniverse methodsFor: 'bootstrapping'!
bootstrapMethod

	^ SOMMethod
		inUniverse: self
		named: #bootstrap
		numArgs: 1
		numLocals: 0
		maxStackDepth: 2
		bytecodes: {SOMBCHalt new}
		holder: self globalSystemClass
		lexicalContext: self globalNil.
! !

!SOMUniverse methodsFor: 'bootstrapping'!
bootstrapWithArguments: args 

	self 
		bootstrapWithEntryPoint: ((self globalSystemClass) lookupInvokable: #initialize:)
		on: (self globalAt: #system)
		withArguments: args.! !

!SOMUniverse methodsFor: 'bootstrapping'!
bootstrapWithEntryPoint: invokable on: receiver withArguments: args

	| bootstrapFrame |
	bootstrapFrame := self bootstrapFrameFor: receiver withArguments: args.
	invokable ifNotNil: [invokable invokeInFrame: bootstrapFrame].
	self interpreter start.
	^ bootstrapFrame! !

!SOMUniverse methodsFor: 'accessing'!
compiler

	^ SOMCompiler inUniverse: self on: self class classPaths! !

!SOMUniverse methodsFor: 'accessing'!
exitCode
	^ exitCode! !

!SOMUniverse methodsFor: 'accessing'!
interpreter
	^ interpreter! !

!SOMUniverse methodsFor: 'accessing'!
interpreter: anObject
	interpreter := anObject! !

!SOMUniverse methodsFor: 'accessing'!
outStream

	^ outStream ifNil: [Transcript]! !

!SOMUniverse methodsFor: 'accessing'!
outStream: writeStream

	outStream := writeStream! !

!SOMUniverse methodsFor: 'accessing'!
symbolTable
	^ symbolTable! !

!SOMUniverse methodsFor: 'accessing'!
symbolTable: anObject
	symbolTable := anObject! !

!SOMUniverse methodsFor: 'as yet unclassified'!
classpathPrepend: aString
	| cp |
	cp := self class classPaths asOrderedCollection.
	cp add: aString beforeIndex: 1.
	self class classPaths: cp asArray! !

!SOMUniverse methodsFor: 'as yet unclassified'!
getPathClassExt: aString
  " take argument of the form '../foo/Test.som' and return
    '../foo', 'Test', 'som'"

	| pathElements fileName parentPath nameParts |
	pathElements := ('/' split: aString) asOrderedCollection.
	
	fileName   := pathElements removeLast.
	parentPath := '/' join: pathElements.
	nameParts  := '.' split: fileName.
	
	nameParts size > 2 ifTrue: [
		Error signal: 'Does class name in arguments have . in its name? Argument: ', aString  ].
	
	^ { parentPath ifNil: [ '' ] ifNotNil: [ parentPath ].
		 nameParts at: 1.
		 nameParts size > 1 ifTrue: [ nameParts at: 2 ] ifFalse: [ '' ] }
! !

!SOMUniverse methodsFor: 'as yet unclassified'!
handleArguments: args
	| gotClasspath remainingArgs i |
	gotClasspath := false.
	remainingArgs := OrderedCollection new.
	
	i := 1.
	[ i <= args size ] whileTrue: [ 
		| arg |
		arg := args at: i.
		arg = '-cp'
			ifTrue: [ 
				i + 1 >= args size ifTrue: [ 
					self printUsage.
					^ nil ].
			
				self setupClasspath: (args at: i + 1).
				i := i + 1. "skip classpath"
				gotClasspath := true ]
			ifFalse: [
				({ '-h'. '--help'. '-?' } includes: arg)
					ifTrue: [ 
						self printUsage.
						^ nil ]
					ifFalse: [ 
						remainingArgs add: arg ]
				].
		i := i + 1 ].
	
	gotClasspath ifFalse: [ self setupDefaultClasspath. ].
	
	remainingArgs := remainingArgs asArray.
	
	remainingArgs doWithIndex: [ :e :idx |
		| split |
		split := self getPathClassExt: e.
		(split at: 1) = '' ifFalse: [ 
			self classpathPrepend: (split at: 1) ].
		
		remainingArgs at: idx put: (split at: 2) ].
	
	^ remainingArgs! !

!SOMUniverse methodsFor: 'as yet unclassified'!
setupClasspath: classpathString
	| cp |
	cp := ':' split: classpathString.
	self class classPaths: cp
! !

!SOMUniverse methodsFor: 'as yet unclassified'!
setupDefaultClasspath
	self setupClasspath: '.'! !

!SOMUniverse methodsFor: 'loading'!
loadAndStoreFromSource: source

	| class |
	class := self compiler
		compileSOMClassSource: source
		stub: nil
		from: '<eval>'.
	^ self
		globalAt: class somName symbol
		put: class! !

!SOMUniverse methodsFor: 'loading'!
loadAndStoreSOMClass: className

	^ self
		globalAt: className
		put: (self loadSOMClass: className)! !

!SOMUniverse methodsFor: 'loading'!
loadSOMClass: className

	^ self loadSOMClass: className stub: nil! !

!SOMUniverse methodsFor: 'loading'!
loadSOMClass: className stub: stub

	^ self globalAt: className ifAbsentPut: [
		self compiler
			loadAndCompileSOMClass: className
			stub: stub ]
.
	! !

!SOMUniverse methodsFor: 'loading'!
loadSystemClass: systemClass
	| className |
	className := systemClass somName symbol.

	^ self compiler
		loadAndCompileSOMClass: className
		stub: systemClass.! !

!SOMUniverse class methodsFor: 'accessing'!
classPaths

	^ ClassPaths ifNil: [
		self notify: 'classPaths was not set. Use SOMTools>>setClassPathBase: and pass the path to the SOM directory'].! !

!SOMUniverse class methodsFor: 'accessing'!
classPaths: anObject
	ClassPaths := anObject! !

!SOMUniverse class methodsFor: 'accessing'!
default
	Default ifNil: [Default := self].
	^ Default! !

!SOMUniverse class methodsFor: 'accessing'!
default: aUniverseClass
	Default := aUniverseClass! !

!SOMUniverse class methodsFor: 'accessing'!
defaultInterpreter
	DefaultInterpreter ifNil: [DefaultInterpreter := SOMInterpreter ].
	^ DefaultInterpreter! !

!SOMUniverse class methodsFor: 'accessing'!
defaultInterpreter: interpClass
	DefaultInterpreter := interpClass! !
