'From Cuis 5.0 [latest update: #4526] on 21 February 2021 at 11:30:38 am'!
'Description The compiler package of the AweSOM (Simple object machine) implementation.

Original authors: Arvid Heise, Matthias Kleine, Robert Krahn, Michael Haupt.
License: MIT'!
!provides: 'AweSOM-Compiler' 1 14!
!requires: 'Cuis-Base' 50 4103 nil!
!requires: 'AweSOM-Meta' 1 2 nil!
SystemOrganization addCategory: 'AweSOM-Compiler-Test'!
SystemOrganization addCategory: 'AweSOM-Compiler'!


!classDefinition: #SOMParseError category: 'AweSOM-Compiler'!
Error subclass: #SOMParseError
	instanceVariableNames: 'line column text fileName foundSym expectedSym'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler'!
!classDefinition: 'SOMParseError class' category: 'AweSOM-Compiler'!
SOMParseError class
	instanceVariableNames: ''!

!classDefinition: #CompileSOMClassTest category: 'AweSOM-Compiler-Test'!
TestCaseWithUniverse subclass: #CompileSOMClassTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'CompileSOMClassTest class' category: 'AweSOM-Compiler-Test'!
CompileSOMClassTest class
	instanceVariableNames: ''!

!classDefinition: #CompileSOMMethodTest category: 'AweSOM-Compiler-Test'!
TestCaseWithUniverse subclass: #CompileSOMMethodTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'CompileSOMMethodTest class' category: 'AweSOM-Compiler-Test'!
CompileSOMMethodTest class
	instanceVariableNames: ''!

!classDefinition: #ParseClassTest category: 'AweSOM-Compiler-Test'!
TestCaseWithUniverse subclass: #ParseClassTest
	instanceVariableNames: 'parser result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'ParseClassTest class' category: 'AweSOM-Compiler-Test'!
ParseClassTest class
	instanceVariableNames: ''!

!classDefinition: #ParseBytecodeTest category: 'AweSOM-Compiler-Test'!
ParseClassTest subclass: #ParseBytecodeTest
	instanceVariableNames: 'bytecode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'ParseBytecodeTest class' category: 'AweSOM-Compiler-Test'!
ParseBytecodeTest class
	instanceVariableNames: ''!

!classDefinition: #ParseCompleteClassTest category: 'AweSOM-Compiler-Test'!
ParseClassTest subclass: #ParseCompleteClassTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'ParseCompleteClassTest class' category: 'AweSOM-Compiler-Test'!
ParseCompleteClassTest class
	instanceVariableNames: ''!

!classDefinition: #ParseMethodTest category: 'AweSOM-Compiler-Test'!
ParseClassTest subclass: #ParseMethodTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'ParseMethodTest class' category: 'AweSOM-Compiler-Test'!
ParseMethodTest class
	instanceVariableNames: ''!

!classDefinition: #SOMLexerTest category: 'AweSOM-Compiler-Test'!
TestCaseWithUniverse subclass: #SOMLexerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'SOMLexerTest class' category: 'AweSOM-Compiler-Test'!
SOMLexerTest class
	instanceVariableNames: ''!

!classDefinition: #SOMClassGenerationContext category: 'AweSOM-Compiler'!
Object subclass: #SOMClassGenerationContext
	instanceVariableNames: 'superName isClassSide instanceFields instanceMethods classFields classMethods theName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler'!
!classDefinition: 'SOMClassGenerationContext class' category: 'AweSOM-Compiler'!
SOMClassGenerationContext class
	instanceVariableNames: ''!

!classDefinition: #SOMCompiler category: 'AweSOM-Compiler'!
Object subclass: #SOMCompiler
	instanceVariableNames: 'universe classPaths'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler'!
!classDefinition: 'SOMCompiler class' category: 'AweSOM-Compiler'!
SOMCompiler class
	instanceVariableNames: ''!

!classDefinition: #SOMLexer category: 'AweSOM-Compiler'!
Object subclass: #SOMLexer
	instanceVariableNames: 'stream text nextText lineNumber peekDone sym nextSym symChr nextSymChr buf bufP appendNewlineOnFirstLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler'!
!classDefinition: 'SOMLexer class' category: 'AweSOM-Compiler'!
SOMLexer class
	instanceVariableNames: ''!

!classDefinition: #SOMMethodGenerationContext category: 'AweSOM-Compiler'!
Object subclass: #SOMMethodGenerationContext
	instanceVariableNames: 'signature holder outer arguments isPrimitive onClassSide locals literals bytecode isFinished isBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler'!
!classDefinition: 'SOMMethodGenerationContext class' category: 'AweSOM-Compiler'!
SOMMethodGenerationContext class
	instanceVariableNames: ''!

!classDefinition: #SOMParser category: 'AweSOM-Compiler'!
Object subclass: #SOMParser
	instanceVariableNames: 'universe cgenc sym text lexer nextSym shouldReadSources fileName'
	classVariableNames: 'BinaryOpSyms KeywordSelectorSyms SingleOpSyms'
	poolDictionaries: ''
	category: 'AweSOM-Compiler'!
!classDefinition: 'SOMParser class' category: 'AweSOM-Compiler'!
SOMParser class
	instanceVariableNames: ''!

!classDefinition: #SOMClassParser category: 'AweSOM-Compiler'!
SOMParser subclass: #SOMClassParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler'!
!classDefinition: 'SOMClassParser class' category: 'AweSOM-Compiler'!
SOMClassParser class
	instanceVariableNames: ''!

!classDefinition: #SOMMethodParser category: 'AweSOM-Compiler'!
SOMParser subclass: #SOMMethodParser
	instanceVariableNames: 'mgenc'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler'!
!classDefinition: 'SOMMethodParser class' category: 'AweSOM-Compiler'!
SOMMethodParser class
	instanceVariableNames: ''!


!SOMParseError commentStamp: '' prior: 0!
I represent an error that occured doing parsing.

I know all the details of where the error occured,
and what the original expectation was that go violated.
I try to provide actionable information to the developer.!

!ParseClassTest methodsFor: 'running'!
parserClass

	^ SOMClassParser! !

!ParseBytecodeTest methodsFor: 'running'!
parserClass

	^ SOMMethodParser! !

!ParseMethodTest methodsFor: 'running'!
parserClass

	^ SOMMethodParser! !

!SOMMethodGenerationContext methodsFor: 'printing'!
printOn: stream


	self signature ifNil: [
		super printOn: stream.
		^ self].
	stream
		nextPutAll: '<SOMMgenc signature: ';
		nextPutAll: self signature;
		nextPut: $>.! !

!SOMParseError methodsFor: 'signalling' stamp: 'jpb 4/11/2020 12:13:23'!
signalWith: message expectedSym: aSym and: parser
	| msg |
	line   := parser currentLineNumber.
	column := parser currentColumn.
	text   := parser rawBuffer.
   fileName := parser fileName.
   foundSym := parser sym.
   expectedSym := aSym.

	msg := ('{3}:{4}:{5}: error: ', message)
				format: { expectedSym. foundSym. fileName. line. column }.

	^ self signal: msg, text! !

!SOMParseError class methodsFor: 'signalling'!
signalWith: message expectedSym: aSym and: parser
	^ self new
		signalWith: message expectedSym: aSym and: parser! !

!CompileSOMClassTest methodsFor: 'as yet unclassified'!
createCgencFromSource: source
	
	| parser |
	parser := SOMClassParser inUniverse: universe onSource: source from: 'test'.
	parser start.
	^ parser cgenc.! !

!CompileSOMClassTest methodsFor: 'tests'!
test01SimpleClassCreation

	| cgenc clazz |
	cgenc := SOMClassGenerationContext new.
	cgenc theName: 'Robert'.
	cgenc superName: #Object.
	cgenc addInstanceFields: { 'alter'. 'adresse' }.
	clazz := cgenc assembleIn: universe.
	self assert: (clazz isKindOf: SOMClass).
	self assert: clazz somName symbol equals: #Robert.
	self assert: clazz somClass somName symbol equals: #'Robert class'.
	self assert: clazz somSuperClass equals: (universe globalAt: #Object).
	self assert: clazz somInstanceFields size equals: 2.
	self assert: (clazz somInstanceFields at: 1) string equals: 'alter'! !

!CompileSOMClassTest methodsFor: 'tests'!
test02CompileClass
	| cgenc clazz |
	cgenc := SOMClassGenerationContext new.
	cgenc addClassField: 'alter'.
	clazz := cgenc assembleIn: universe.
	self 
		assert: (clazz somClass somInstanceFields at: 1) string
		equals: 'alter'! !

!CompileSOMClassTest methodsFor: 'tests'!
test03CompileClassWithMethod
	| cgenc clazz |
	cgenc := self createCgencFromSource: 'Bla = Array (method1 = (^ 42) method2 = primitive ---- classMethod = ())'.
	clazz := cgenc assembleIn: universe.
	self 
		assert: clazz somInstanceInvokables size
		equals: 2.
	self assert: ((clazz somInstanceInvokables at: 1) isKindOf: SOMMethod).
	self assert: ((clazz somInstanceInvokables at: 2) isKindOf: SOMPrimitive).
	self 
		assert: clazz somClass somInstanceInvokables size
		equals: 1! !

!CompileSOMClassTest methodsFor: 'tests'!
test04CompileClassWithSuperclass
	| cgenc clazz |
	cgenc := self createCgencFromSource: 'Bla = Array (method1 = (^ 42) method2 = primitive)'.
	clazz := cgenc assembleIn: universe.
	self 
		assert: clazz somSuperClass
		equals: (universe globalAt: #Array)
	"self assert: clazz superClazz theName symbol equals: #Array."! !

!CompileSOMClassTest methodsFor: 'tests'!
test05UnsharedFieldInMethodSubClass
	| cgenc somClass instance privateInstVarNames |
	
	"Instance fields declared in SOM might not map properly to the field 'fields', if on the VM-side instance fields are added to subclasses of SOMObject that are not supposed to be visible from SOM, e.g. Method's field 'bytecodes'."
	universe setupClasspath: 'Smalltalk:TestSuite:.'.
	
	self loadClazzes: { #Object. #Method }.
	cgenc := self createCgencFromSource: 
	  'MethodSubClass = Method(	| thisMightCollideWithBytecodes |
	   setField = (thisMightCollideWithBytecodes := 42.))'.
	somClass := cgenc assembleIn: universe.
	instance := somClass primnew.
	universe 
		bootstrapWithEntryPoint: (somClass somInstanceInvokables at: 1)
		on: (universe globalAt: #system)
		withArguments: instance.
	privateInstVarNames := instance class instVarNames select: [ :each | (each beginsWith: 'som') not ].
	privateInstVarNames do: 
		[ :each |
		| instVarVal |
		instVarVal := instance instVarNamed: each.
		self 
			assert: ((instVarVal isKindOf: SOMNumber) and: [instVarVal number = 42])
			equals: false ]! !

!CompileSOMClassTest methodsFor: 'tests'!
test06AssembleNormalClass

	| class |
	class := self compileSource: 'Test = (| a b| m1=(1+2))'.
	self assert: class somInstanceFields elements second string equals: 'b'.
	self assert: class somInstanceInvokables size equals: 1.! !

!CompileSOMClassTest methodsFor: 'tests' stamp: 'jpb 2/17/2021 20:33:15'!
test07InternalClassHierarchyEqualsSomClassHierarchy

	"This test is currently deactivated. It tests if the class
	hierarchy of system classes is the same as in SOM. Currently
	it isn't but there could be problems in the future because of this'"
	| basePath |
	basePath := SOMTools basePath.
	universe := SOMUniverse new.
	universe setupClasspath: basePath, '/Smalltalk:' , basePath , '/TestSuite:' , basePath.
	universe initializeObjectSystem.

	"self assertSuperClassOf: #Object is: #nil."
	self assertSuperClassOf: #Class is: #Object.
	self assertSuperClassOf: #Metaclass is: #Class.
	self assertSuperClassOf: #Nil is: #Object.
	self assertSuperClassOf: #Array is: #Object.
	self assertSuperClassOf: #Method is: #Array.
	self assertSuperClassOf: #Symbol is: #String.
	self assertSuperClassOf: #Integer is: #Object.
	self assertSuperClassOf: #Primitive is: #Object.
	self assertSuperClassOf: #String is: #Object.
	self assertSuperClassOf: #Double is: #Object.! !

!CompileSOMClassTest methodsFor: 'compiling'!
compileSource: source
	
	^ universe loadAndStoreFromSource: source! !

!CompileSOMClassTest methodsFor: 'asserting'!
assertSuperClassOf: className is: superClassName

	self
		assert: (universe globalAt: superClassName)
		equals: (universe globalAt: className) somSuperClass.! !

!CompileSOMMethodTest methodsFor: 'as yet unclassified'!
createMgencFromSource: source
	
	| parser |
	parser := SOMMethodParser inUniverse: universe onSource: source from: 'test'.
	^ parser apply: #method.! !

!CompileSOMMethodTest methodsFor: 'tests'!
test01BuildSimpleMethod
	| mgenc method |
	mgenc := SOMMethodGenerationContext named: 'a:b:c:'.
	method := mgenc assembleIn: universe.
	self 
		assert: method somSignature symbol
		equals: #a:b:c:! !

!CompileSOMMethodTest methodsFor: 'tests'!
test02BuildByteCode
	| mgenc method |
	mgenc := self createMgencFromSource: 'x: a = (|aLocal| ^a)'.
	method := mgenc assembleIn: universe.
	{SOMBCPushArgument. SOMBCReturnLocal} withIndexDo: [:each :i|
		self assert: ((method bytecodeAt: i) isKindOf: each)].
	self assert: method numberOfLocals equals: 1.
	self assert: method numberOfArguments equals: 2.
! !

!CompileSOMMethodTest methodsFor: 'tests'!
test02BuildMethodWithConstants
	| mgenc method |
	mgenc := self createMgencFromSource: 'x: a = (a foo: 42)'.
	method := mgenc assembleIn: universe.
	"waiting for arvid's patch"
	"self assert: (method constantForBytecodeIndex: 1) symbol equals: #foo."! !

!ParseClassTest methodsFor: 'running'!
setUp
	super setUp.
	parser := nil.! !

!ParseClassTest methodsFor: 'running'!
setUpParser: source

	parser := self parserClass
		inUniverse: universe
		onSource: source
		from: 'test'.! !

!ParseClassTest methodsFor: 'running'!
setUpParser: source andApply: rule

	self setUpParser: source.
	result := parser apply: rule.! !

!ParseClassTest methodsFor: 'tests'!
test01SimpleClassDef

	self setUpParser: 'Class1 = ()'.
	parser start.
	self assert: parser cgenc theName equals: #Class1.
	self assert: parser cgenc superName equals: #Object.! !

!ParseClassTest methodsFor: 'tests'!
test02ClassInstVars

	self setUpParser: 'Class1 = ( | a b cdef |)'.
	parser start.
	self
		assert: parser cgenc instanceFields
		equals: {'a'. 'b'. 'cdef'} asOrderedCollection.! !

!ParseClassTest methodsFor: 'tests'!
test03RecognizeSpaces

	self setUpParser: '"bla " Class1 = ()'.
	parser start.
	self assert: parser cgenc theName equals: #Class1.! !

!ParseClassTest methodsFor: 'tests'!
test04aRecognizeMethodUnary
	| methods |
	self setUpParser: 'Class1 = ( abc = ())'.
	parser start.
	methods := parser cgenc instanceMethods.
	self 
		assert: methods size
		equals: 1.
	self 
		assert: methods first signature
		equals: #abc! !

!ParseClassTest methodsFor: 'tests'!
test04bRecognizeMethodBinary
	| methods |
	self setUpParser: 'Class1 = ( & a = ())'.
	parser start.
	methods := parser cgenc instanceMethods.
	self 
		assert: methods size
		equals: 1.
	self 
		assert: methods first signature
		equals: #&! !

!ParseClassTest methodsFor: 'tests'!
test04cRecognizeKeywordMethod
	| methods |
	self setUpParser: 'Class1 = ( a: x abc: y = ())'.
	parser start.
	methods := parser cgenc instanceMethods.
	self 
		assert: methods size
		equals: 1.
	self 
		assert: methods first signature
		equals: #a:abc:! !

!ParseClassTest methodsFor: 'tests'!
test05RecognizeMultipleMethods

	| methods |
	self setUpParser: 'Class1 = ( a: x abc: y = ()
     & bool = ()
	test = ()
)'.
	parser start.
	methods := parser cgenc instanceMethods.
	self assert: methods size equals: 3.! !

!ParseClassTest methodsFor: 'tests'!
test06RecognizeClassMethods

	| methods |
	self setUpParser: 'Class1 = ( ---- test = () )'.
	parser start.
	self assert: parser cgenc isClassSide.
	methods := parser cgenc classMethods.
	self assert: methods size equals: 1.! !

!ParseClassTest methodsFor: 'tests'!
test06aRecognizeClassSide

	self setUpParser: 'Class1 = ( ---- | a | test = () x = (1 +2))'.
	parser start.
	self assert: parser cgenc isClassSide.
	self assert: parser cgenc classMethods size equals: 2.
	self assert: parser cgenc classFields size equals: 1.! !

!ParseClassTest methodsFor: 'tests'!
test06bRecognizeInstanceAndClassSide

	self setUpParser: 'Class1 = ( | a | y = (1) ---- | a | test = ())'.
	parser start.
	self assert: parser cgenc instanceMethods size equals: 1.
	self assert: parser cgenc instanceFields size equals: 1.
	self assert: parser cgenc classMethods size equals: 1.
	self assert: parser cgenc classFields size equals: 1.! !

!ParseClassTest methodsFor: 'tests'!
test07AccessInstanceVars

	| mgenc bc |
	self setUpParser: 'Class1 = (|a| y = (^a))'.
	parser start.
	mgenc := parser cgenc instanceMethods first.
	bc := mgenc bytecode.
	self assert: (bc first isKindOf: SOMBCPushField).
	self assert: (bc second isKindOf: SOMBCReturnLocal).! !

!ParseBytecodeTest methodsFor: 'running'!
setUpParser: source andApply: rule

	super setUpParser: source andApply: rule.
	(result respondsTo: #bytecode) ifTrue: [
		bytecode := result bytecode]! !

!ParseBytecodeTest methodsFor: 'running'!
setUpParser: source withMgencAndApply: rule

	self setUpParser: source.
	result := parser apply: rule.
	(result respondsTo: #bytecode) ifTrue: [
		bytecode := result bytecode]! !

!ParseBytecodeTest methodsFor: 'as yet unclassified'!
setUpParser: source

	super setUpParser: source.
	parser
		fakeCgenc;
		fakeMgenc.! !

!ParseBytecodeTest methodsFor: 'tests' stamp: 'jpb 2/21/2021 10:28:44'!
test01EmptyMethod

	self setUpParser: 'x = ()' andApply: #method.
	self assert: result locals isEmpty.
	self assert: result arguments size equals: 1. "self"
	self assert: result literals isEmpty.
	self assert: result bytecodesSize equals: 4.
	self assert: result bytecodesCount equals: 2.
	self assertBcAt: 2 is: SOMBCReturnLocal.! !

!ParseBytecodeTest methodsFor: 'tests' stamp: 'jpb 2/21/2021 10:34:47'!
test02Constant

	self setUpParser: 'x = (1)' andApply: #method.
	self assert: result literals size equals: 1.
	self assert: result bytecodesSize equals: 7.
	self assert: result bytecodesCount equals: 4.
	self assert: result literals first number equals: 1.! !

!ParseBytecodeTest methodsFor: 'tests' stamp: 'jpb 2/21/2021 10:35:08'!
test03aReturnObject

	self setUpParser: 'x = (^1.)' andApply: #method.
	self assert: result bytecodesSize equals: 3.
	self assert: result bytecodesCount equals: 2! !

!ParseBytecodeTest methodsFor: 'tests' stamp: 'jpb 2/21/2021 10:35:24'!
test03bReturnObject

	self setUpParser: 'x = (^1)' andApply: #method.
	self assert: result bytecodesSize equals: 3.
	self assert: result bytecodesCount equals: 2! !

!ParseBytecodeTest methodsFor: 'tests' stamp: 'jpb 2/21/2021 10:35:34'!
test04MultipleExpressions

	self setUpParser: 'x = (1. 2. 3. ^self)' andApply: #method.
	self assert: result isFinished.
	self assert: result bytecodesSize equals: 13.
	self assert: result bytecodesCount equals: 8.
	self assertBcAt: 8 is: SOMBCReturnLocal.! !

!ParseBytecodeTest methodsFor: 'tests' stamp: 'jpb 2/21/2021 10:35:47'!
test05UnaryMessage

	self setUpParser: 'x = (1 test)' andApply: #method.
	self assert: result bytecodesCount equals: 5.
	self assertLiteralAt: 2 equals: #test.
	self assert: result bytecodesSize equals: 9.
! !

!ParseBytecodeTest methodsFor: 'tests' stamp: 'jpb 2/21/2021 10:35:55'!
test06MultipleUnaryMessages

	self setUpParser: 'x = (1 test test2 test3)' andApply: #method.
	self assert: result bytecodesCount equals: 7.
	self assertLiteralAt: 3 equals: #test2.
	self assertLiteralAt: 4 equals: #test3.
	self assert: result bytecodesSize equals: 13.
! !

!ParseBytecodeTest methodsFor: 'tests'!
test07BinaryMessage

	self setUpParser: 'x = (1 + 2)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 equals: #+.! !

!ParseBytecodeTest methodsFor: 'tests'!
test08BinaryUnaryMessage

	self setUpParser: 'x = (1 + 2 test)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 equals: #test.
	self assertLiteralAt: 4 equals: #+.
	self assert: result bytecode size equals: 7.! !

!ParseBytecodeTest methodsFor: 'tests'!
test09MultipleBinaryMessages

	self setUpParser: 'x = (1 + 2 ++ 3)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 4 accessor: #number equals: 3.
	self assertLiteralAt: 3 equals: #+.
	self assertLiteralAt: 5 equals: #++.! !

!ParseBytecodeTest methodsFor: 'tests'!
test10aKeywordMessage

	self setUpParser: 'x = (1 a: 2)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 equals: #a:.! !

!ParseBytecodeTest methodsFor: 'tests'!
test10bKeywordMessage

	self setUpParser: 'x = (1 a: 2 b: 3)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 accessor: #number equals: 3.
	self assertLiteralAt: 4 equals: #a:b:.! !

!ParseBytecodeTest methodsFor: 'tests'!
test10cKeywordMessage

	self setUpParser: 'x = (1 a: self test)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 3 equals: #test.
	self assertLiteralAt: 4 equals: #a:.! !

!ParseBytecodeTest methodsFor: 'tests'!
test10dKeywordMessage

	self setUpParser: 'x = (self test a: 1)' andApply: #method.
	self assertLiteralAt: 3 accessor: #number equals: 1.
	self assertLiteralAt: 2 equals: #test.
	self assertLiteralAt: 4 equals: #a:.! !

!ParseBytecodeTest methodsFor: 'tests'!
test11KeywordBinaryMessage

	self setUpParser: 'x = (1 + 2 a: 3 b: 4)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 equals: #+.
	self assertLiteralAt: 4 accessor: #number equals: 3.
	self assertLiteralAt: 5 accessor: #number equals: 4.
	self assertLiteralAt: 6 equals: #a:b:.! !

!ParseBytecodeTest methodsFor: 'tests'!
test12KeywordBinaryUnaryMessage

	self setUpParser: 'x = (1 + 2 test a: 3 test2 b: 4 test3.)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 equals: #test.
	self assertLiteralAt: 4 equals: #+.
	self assertLiteralAt: 5 accessor: #number equals: 3.
	self assertLiteralAt: 6 equals: #test2.
	self assertLiteralAt: 7 accessor: #number equals: 4.
	self assertLiteralAt: 8 equals: #test3.
	self assertLiteralAt: 9 equals: #a:b:.! !

!ParseBytecodeTest methodsFor: 'tests'!
test13ParenthesisExpr

	self setUpParser: 'x = ((1 + 2) test)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertLiteralAt: 2 accessor: #number equals: 2.
	self assertLiteralAt: 3 equals: #+.
	self assertLiteralAt: 4 equals: #test.! !

!ParseBytecodeTest methodsFor: 'tests'!
test14aSuperSimple

	self setUpParser: 'x = (super test)' andApply: #method.
	self assert: bytecode first index equals: 1. "self"
	self assertLiteralAt: 2 equals: #test.
	self assertBcAt: 2 is: SOMBCSuperSend.! !

!ParseBytecodeTest methodsFor: 'tests'!
test14bSuperMsgAsArg

	self setUpParser: 'x = (1 a: super test)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assert: bytecode second index equals: 1. "self"
	self assertLiteralAt: 3 equals: #test.
	self assertBcAt: 3 is: SOMBCSuperSend.
	self assertLiteralAt: 4 equals: #a:.
	self assertBcAt: 4 is: SOMBCSend.! !

!ParseBytecodeTest methodsFor: 'tests'!
test15SimpleBlock

	self setUpParser: 'x = ([])' andApply: #method.
	self assertBcAt: 1 is: SOMBCPushBlock.! !

!ParseBytecodeTest methodsFor: 'tests'!
test16SimpleBlockWithContent

	self setUpParser: 'x = ([1])' andApply: #method.
	self assertBcAt: 1 is: SOMBCPushBlock.! !

!ParseBytecodeTest methodsFor: 'tests'!
test17SimpleBlockWithContent

	self setUpParser: '[1]' withMgencAndApply: #nestedBlock.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertBcAt: 2 is: SOMBCReturnLocal.
	self assert: bytecode size equals: 2.! !

!ParseBytecodeTest methodsFor: 'tests'!
test18BlockReturn

	self setUpParser: '[^1]' withMgencAndApply: #nestedBlock.
	self assertLiteralAt: 1 accessor: #number equals: 1.
	self assertBcAt: 2 is: SOMBCReturnNonLocal.
	self assert: bytecode size equals: 2.! !

!ParseBytecodeTest methodsFor: 'tests'!
test19BlockArguments

	self setUpParser: '[:a :abc | 1]' withMgencAndApply: #nestedBlock.
	self assert: result arguments size equals: 2.
	self assert: (result arguments includes: 'a').
	self assert: (result arguments includes: 'abc').! !

!ParseBytecodeTest methodsFor: 'tests'!
test20MultipleArguments

	self setUpParser: '[''abc'' println. ^nil]' withMgencAndApply: #nestedBlock.
	self assertLiteralAt: 1 accessor: #string equals: 'abc'.
	self assertLiteralAt: 2 equals: #println.
	self assertBcAt: 4 is: SOMBCPushGlobal.
	self assertLiteralAt: 4 equals: #nil.
	self assertBcAt: 5 is: SOMBCReturnNonLocal.! !

!ParseBytecodeTest methodsFor: 'tests'!
test21aSimpleSymbol

	self setUpParser: 'x=(#someSymbol)' andApply: #method.
	self assertLiteralAt: 1 accessor: #symbol equals: #someSymbol.! !

!ParseBytecodeTest methodsFor: 'tests'!
test21bSymbol

	self setUpParser: 'x=(#someSymbol:a:)' andApply: #method.
	self assertLiteralAt: 1 accessor: #symbol equals: #someSymbol:a:.! !

!ParseBytecodeTest methodsFor: 'tests'!
test22aSimpleAssignment

	self setUpParser: 'x=(| a | a := 2)' andApply: #method.
	self assertLiteralAt: 1 accessor: #number equals: 2.
	self assertBcAt: 2 is: SOMBCDup.
	self assertBcAt: 3 is: SOMBCPopLocal.
	self assert: bytecode third index equals: 1.
	self assert: bytecode third contextIndex equals: 1.! !

!ParseBytecodeTest methodsFor: 'tests'!
test22bMultipleAssignments

	self setUpParser: 'x=(| a b | b := a := field := 2)'.
	parser cgenc addFields: {'field'}.
	bytecode := (parser apply: #method) bytecode.
	self assertLiteralAt: 1 accessor: #number equals: 2.
	self assertBcAt: 2 is: SOMBCDup.
	self assertBcAt: 3 is: SOMBCDup.
	self assertBcAt: 4 is: SOMBCDup.
	self assertBcAt: 5 is: SOMBCPopField.
	self assert: bytecode fifth index equals: 3. "literal indexof field"
	self assert: bytecode sixth index equals: 1. "local index"
	self assert: bytecode seventh index equals: 2. "local index"! !

!ParseBytecodeTest methodsFor: 'tests'!
test23MultipleAssignments

	self setUpParser: 'x: a=(1 + a)' andApply: #method.
	self assertBcAt: 2 is: SOMBCPushArgument.
	self assert: bytecode second index equals: 2. "1 is self"
	self assert: bytecode second contextIndex equals: 1.! !

!ParseBytecodeTest methodsFor: 'tests'!
test24aSelfLookupWithBlock

	| blockBc |
	self setUpParser: 'x: a=( [self].)' andApply: #method.
	blockBc := (result literals at: bytecode first index ) bytecodes.
	self assert: (blockBc first isKindOf: SOMBCPushArgument).
	self assert: blockBc first index equals: 1.
	self assert: blockBc first contextIndex equals: 2.! !

!ParseBytecodeTest methodsFor: 'tests'!
test24bLocalAndArgumentLookupWithBlock

	| innerBlockBc firstInnerBlock |
	self setUpParser: 'x: a y: b=([ |x y| [b + y] ])' andApply: #method.
	firstInnerBlock := (result literals at: bytecode first index) bytecodes first.
	innerBlockBc := (firstInnerBlock mgenc literals at: firstInnerBlock index) bytecodes.
	self assert: (innerBlockBc first isKindOf: SOMBCPushArgument).
	self assert: innerBlockBc first index equals: 3. "first is self, second a, third b"
	self assert: innerBlockBc first contextIndex equals: 3.
	self assert: (innerBlockBc second isKindOf: SOMBCPushLocal).
	self assert: innerBlockBc second index equals: 2.
	self assert: innerBlockBc second contextIndex equals: 2.! !

!ParseBytecodeTest methodsFor: 'tests'!
test25BlockInBlock

	self setUpParser: '[ [] ]' andApply: #nestedBlock.
	self assertBcAt: 1 is: SOMBCPushBlock.! !

!ParseBytecodeTest methodsFor: 'tests'!
test26returnArgument

	self setUpParser: 'x: a = (^a)' andApply: #method.
	self assertBcAt: 1 is: SOMBCPushArgument.
	self assertBcAt: 2 is: SOMBCReturnLocal.! !

!ParseBytecodeTest methodsFor: 'tests'!
test27StoreIntoArgument

	self setUpParser: 'x: a = (a := 1)' andApply: #method.
	self assertBcAt: 1 is: SOMBCPushConstant.
	self assertBcAt: 2 is: SOMBCDup.
	self assertBcAt: 3 is: SOMBCPopArgument.! !

!ParseBytecodeTest methodsFor: 'tests'!
test28GlobalsTest

	self setUpParser: 'x = (^ EmptyTest, DoubleTest, HashTest)' andApply: #method.
	"self halt."
	"self assertBcAt: 1 is: SOMBCPushConstant."! !

!ParseBytecodeTest methodsFor: 'tests' stamp: 'jpb 2/17/2021 19:22:21'!
test29do
	| block |
	self setUpParser: 'do: block = ( self doIndexes: [ :i | block value: (self at: i) ] )' andApply: #method.

	self assertBcAt: 1 is: SOMBCPushArgument.
	self assert: (bytecode at: 1) index equals: 1.
	self assert: (bytecode at: 1) contextIndex equals: 1.
	
	self assertBcAt: 2 is: SOMBCPushBlock.
	self assert: (bytecode at: 2) index equals: 1.
	self assert: ((bytecode at: 2) literalValue isKindOf: SOMMethod).
	
	self assertBcAt: 3 is: SOMBCSend.
	self assert: (bytecode at: 3) index equals: 2.
	self assert: (bytecode at: 3) literalValue equals: #doIndexes:.
	self assert: (bytecode at: 3) literalValue class equals: Symbol.
	
	self assertBcAt: 4 is: SOMBCPop.
	self assertBcAt: 5 is: SOMBCPushArgument.
	self assertBcAt: 6 is: SOMBCReturnLocal.
	
	block := (bytecode at: 1) literalValue.
	bytecode := block bytecodes.
	
	self assertBcAt: 1 is: SOMBCPushArgument.
	self assertBcAt: 2 is: SOMBCPushArgument.
	self assertBcAt: 3 is: SOMBCPushArgument.
	self assertBcAt: 4 is: SOMBCSend.
	self assertBcAt: 5 is: SOMBCSend.
	self assertBcAt: 6 is: SOMBCReturnLocal.! !

!ParseBytecodeTest methodsFor: 'tests' stamp: 'jpb 2/21/2021 11:29:43'!
test30EmptyBlock

	self setUpParser: '[]' withMgencAndApply: #nestedBlock.
	
	self assert: result locals isEmpty.
	self assert: 0 equals: result arguments size.
	
	self assert: 1 equals: result literals size.
	self assert: #nil equals: (result literals at: 1).
	
	self assert: 3 equals: result bytecodesSize.
	self assert: 2 equals: result bytecodesCount.
	
	self assertBcAt: 2 is: SOMBCReturnLocal.! !

!ParseBytecodeTest methodsFor: 'tests' stamp: 'jpb 2/21/2021 11:21:47'!
test31ReturnNilBlock

	self setUpParser: '[nil]' withMgencAndApply: #nestedBlock.
	
	self assert: result locals isEmpty.
	self assert: 0 equals: result arguments size. "self"
	
	self assert: 1 equals: result literals size.
	self assert: #nil equals: (result literals at: 1).
	
	self assert: 3 equals: result bytecodesSize.
	self assert: 2 equals: result bytecodesCount.
	
	self assertBcAt: 1 is: SOMBCPushGlobal.
	self assertBcAt: 2 is: SOMBCReturnLocal.! !

!ParseBytecodeTest methodsFor: 'assertion'!
assertBcAt: idx is: bcType

	self assert: ((bytecode at: idx) isKindOf: bcType).! !

!ParseBytecodeTest methodsFor: 'assertion'!
assertLiteralAt: idx accessor: accessorSelector equals: expected

	| literal inner |
	literal := (bytecode at: idx) literalValue.
	self
		assert: (literal respondsTo: accessorSelector)
		description: 'wrong kind of SOMObject?'.
	inner := literal perform: accessorSelector.
	self assert: inner equals: expected.! !

!ParseBytecodeTest methodsFor: 'assertion'!
assertLiteralAt: idx equals: expected

	| literal |
	literal := (bytecode at: idx) literalValue.
	self assert: literal equals: expected.! !

!ParseCompleteClassTest methodsFor: 'as yet unclassified'!
classObject

	^ 'Object = nil (

    | class |
    
    "Accessing"
    class     = ( ^class )
    
    "Primitive size in bytes"
    objectSize = primitive
    
    "Comparing"
    =  other    = ( ^self == other )
    <> argument = ( ^(self = argument) not )
    == other    = primitive
    isNil       = ( ^false )
    " If you override =, you MUST override hashcode as well.  The rule
      obj1 = obj2   =>  obj1 hashcode = obj2 hashcode
      must be valid for all objects, or Hashtable will not work"
    
    "Converting"
    asString  = ( ^''instance of '' + (self class) )
    , element = ( ^(Vector new append: self) append: element )
    hashcode  = primitive
    
    "Evaluating"
    value     = ( ^self )
    
    "Printing"
    print     = ( self asString print )
    println   = ( self print. system printNewline )
    
    "Error handling"
    error: string = ( '''' println. (''ERROR: '' + string) println. system exit )
    
    "Abstract method support"
    subclassResponsibility = (
        self error: ''This method is abstract and should be overridden''
    )
    
    "Error recovering"
    doesNotUnderstand: selector arguments: arguments = (
        self error:
            (''Method '' + selector + '' not found in class '' + class name)
    )
    
    escapedBlock: block = (
        self error: ''Block has escaped and cannot be executed''
    )
    
    unknownGlobal: name = ( ^system resolve: name )
    
    "Reflection"
    respondsTo: aSymbol = (
        (self class hasMethod: aSymbol)
            ifTrue:  [ ^true ]
            ifFalse: [ | cls |
                cls := self class superclass.
                [ cls isNil ] whileFalse: [
                    (cls hasMethod: aSymbol)
                        ifTrue:  [ ^true ]
                        ifFalse: [ cls := cls superclass ] ].
                ^ false ]
    )
    
)'! !

!ParseCompleteClassTest methodsFor: 'as yet unclassified'!
classSystem

	^ '"

$Id: System.som 226 2008-04-21 12:45:01Z michael.haupt $

Copyright (c) 2001-2007 see AUTHORS file

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the ''Software''), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ''AS IS'', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
"

System = (

    "Accessing"
    global: name            = primitive
    global: name put: value = primitive
    
    "Initializing"
    initialize: arguments = (
        | application |
        
        "Make sure we have got at least one argument"
        (arguments length < 1) ifTrue: [ ''No class specified'' println. ^nil ].
        
        "Load the class with the specified name, create an instance of it, and
         run it. If there is more than only the class given on the command line,
         and the class has a method #run:, the arguments array is passed to it,
         otherwise, #run is sent."
        application := (self resolve: (arguments at: 1) asSymbol) new.
        
        (arguments length > 1) && (application class hasMethod: #run:)
            ifTrue:  [ application run: arguments ]
            ifFalse: [ application run ]
    )
    
    "Loading and resolving"
    load:    symbol = primitive
    resolve: symbol = (
        | class current_class |
        
        "Check if we''ve already got the global"
        (self global: symbol) == nil ifFalse: [ ^self global: symbol ].
        
        "Try loading the class"
        class := self load: symbol.
        (class == nil) ifFalse: [
            "Put class and its super-classes into global dictionary. We can stop
             as soon as we find a super-class in the globals dictionary because
             in this case, all its super-classes must have been added to the
             dictionary earlier"
             current_class := class.
             [ (self global: (current_class name)) == nil ] whileTrue: [
                self global: (current_class name) put: current_class.
                current_class := current_class superclass. ].
            ^class ].
        self error: ''Unable to resolve '' + symbol
    )
    
    "Exiting"
    exit: error  = primitive  
    exit         = ( self exit: 0 )
    
    "Printing"
    printString: string = primitive
    printNewline        = primitive
    
    "Time"
    time = primitive
    
    "Force Garbage Collection"
    fullGC = primitive
    
    ----------------------------------
    
    "Allocation"
    new = ( self error: ''The system object is singular'' )
    
)
'! !

!ParseCompleteClassTest methodsFor: 'tests'!
test01parseSystem

	self setUpParser: self classSystem.
	parser start.
	parser cgenc.
	"self halt."! !

!ParseCompleteClassTest methodsFor: 'tests'!
test02parseObject

	self setUpParser: self classObject.
	parser start.
	parser cgenc.
	"self halt."! !

!ParseMethodTest methodsFor: 'running'!
setUpParser: source

	super setUpParser: source.
	parser
		"fakeMgenc;"
		fakeCgenc.! !

!ParseMethodTest methodsFor: 'tests'!
test01SimpleMethodDef

	self setUpParser: 'x = (1)'.
	result := parser apply: #method.
	self assert: (result isKindOf: SOMMethodGenerationContext).
	self 
		assert: result signature
		equals: #x! !

!ParseMethodTest methodsFor: 'tests'!
test02ParseArguments

	self setUpParser: 'x: abc y: def4 = ( 1 + 1 )'.
	result := parser apply: #method.
	self assert: result arguments size = 3. "First is self"
	self assert: (result arguments includes: 'abc').
	self assert: (result arguments includes: 'def4').! !

!ParseMethodTest methodsFor: 'tests'!
test04Primitive

	| res |
	self setUpParser: '"Accessing" at: index = primitive'.
	res := parser apply: #method.
	self assert: res isPrimitive.! !

!ParseMethodTest methodsFor: 'tests'!
test05PrimitiveMethodGeneratesBody

	self setUpParser: 'test = primitive'.
	parser fakeCgenc. "className = Dummy"
	result := parser apply: #method.! !

!ParseMethodTest methodsFor: 'tests'!
test06PrimitiveWithParameters

	self setUpParser: 'test: a test: b = primitive'.
	result := parser apply: #method.! !

!ParseMethodTest methodsFor: 'tests'!
test07LocalVars

	self setUpParser: 'x = (| abc |)'.
	result := parser apply: #method.
	self assert: result locals equals: {'abc'} asOrderedCollection.! !

!ParseMethodTest methodsFor: 'tests'!
test08SystemResolveMethod

	| src |
	src := 'resolve: symbol = (
        | class currentclass |
        (self global: symbol) == nil ifFalse: [ ^self global: symbol ].        
        class := self load: symbol.
        (class == nil) ifFalse: [
             currentclass := class.
             [ (self global: (currentclass name)) == nil ] whileTrue: [
                self global: (currentclass name) put: currentclass.
                currentclass := currentclass superclass. ].
            ^class ].
        self error: ''Unable to resolve '' + symbol
    )'.
	self setUpParser: src.
	result := parser apply: #method.
	"self halt."! !

!ParseMethodTest methodsFor: 'tests'!
test09HashEntryRun

	| src |
	src := 'run = ("(")'.
	self setUpParser: src.
	result := parser apply: #method.
"	self halt."! !

!ParseMethodTest methodsFor: 'tests'!
test10BigIntegerTestRun

	| src |
	src := 'run: harness = (-1)'.
	self setUpParser: src.
	result := parser apply: #method.
"	self halt."! !

!ParseMethodTest methodsFor: 'tests'!
test11ReflectionTestRun

	| src |
	src := 'run: harness = (self x: #==)'.
	self setUpParser: src.
	result := parser apply: #method.
"	self halt."! !

!ParseMethodTest methodsFor: 'tests'!
test12SimpleOperatorMethodDef

	self setUpParser: '& bool = ()'.
	result := parser apply: #method.
	self assert: (result isKindOf: SOMMethodGenerationContext).
	self assert: result signature 			equals: '&'.
	self assert: result arguments size  		equals: 2.
	self assert: result arguments first 		equals: #self.
	self assert: result arguments second 	equals: #bool.! !

!SOMLexerTest methodsFor: 'tests'!
testIsOperator
	| lexer |
	lexer := SOMLexer new.

	'~&|*/\+=><,@%' asCharacterSet do: [:c |
		self assert: (lexer isOperator: c).
	]
	! !

!SOMLexerTest methodsFor: 'tests' stamp: 'jpb 2/19/2021 08:24:37'!
testMatchingMultiline2String
	| lexer lines expected |
	lines := String newLineString join: #(
		''''
		'''. 1 + 2. '
	).
	
	lexer := SOMLexer on: lines readStream.
	
	expected := String newLineString.
	
	self assert: #STString equals: lexer symbol.
	self assert: expected equals: lexer text.
	! !

!SOMLexerTest methodsFor: 'tests' stamp: 'jpb 2/20/2021 10:08:55'!
testMatchingMultilineString
	| lexer lines expected |
	lines := String newLineString join: #(
		'''foo '
		'bar'
		' long''. 1 + 2. '
	).
	
	lexer := SOMLexer on: lines readStream.
	
	expected := String lfString join: #(
		'foo '
		'bar'
		' long'
	).
	
	self assert: #STString equals: lexer symbol.
	self assert: expected equals: lexer text.
	! !

!SOMLexerTest methodsFor: 'tests' stamp: 'jpb 2/18/2021 19:34:58'!
testMatchingSimpleString
	| lexer |
	lexer := SOMLexer on: '''foobar ''.' readStream.
	
	self assert: #STString equals: lexer symbol.
	self assert: 'foobar ' equals: lexer text.
	! !

!SOMClassGenerationContext methodsFor: 'initialization'!
initialize

	super initialize.
	
	isClassSide := false.
	superName := #nil.
	instanceFields := OrderedCollection new.
	classFields := OrderedCollection new.
	instanceMethods := OrderedCollection new.
	classMethods := OrderedCollection new.
	theName := ''.! !

!SOMClassGenerationContext methodsFor: 'assembling'!
assembleIn: universe

	^ self
		assembleIn: universe
		stub: (self createEmptyClassIn: universe).! !

!SOMClassGenerationContext methodsFor: 'assembling'!
assembleIn: universe stub: classStub

	self
		initInstanceSideOf: classStub in: universe;
		initClassSideOf: classStub in: universe;
		initFieldsOf: classStub in: universe.
	^ classStub! !

!SOMClassGenerationContext methodsFor: 'assembling'!
createEmptyClassIn: universe

	| superclass |
	superclass := universe
		globalAt: self superName
		ifAbsent: [universe loadSOMClass: self superName].
	^ SOMClass
		inUniverse: universe
		withSomSuperClass: superclass.! !

!SOMClassGenerationContext methodsFor: 'assembling'!
initClassSideOf: somClass in: universe

	| fields methods |
	self flag: #rkrk. "Duplication with #initInstanceSideOf:in:"
	somClass somClass somName: (universe newSymbol: self theName , ' class').
	fields := self classFields collect: [:each | universe newSymbol: each].
	somClass somClass somInstanceFields: (universe newArrayWithAll: fields).
	methods := self classMethods collect: [:each | each assembleIn: universe].
	somClass somClass somInstanceInvokables: (universe newArrayWithAll: methods).! !

!SOMClassGenerationContext methodsFor: 'assembling'!
initFieldsOf: somClass in: universe

	| nAdditionalFields nilObject |
	nAdditionalFields := somClass somClass somInstanceFields size.
	nilObject := universe globalNil.
	somClass fields: (Array new: nAdditionalFields).
	somClass numberOfFields - nAdditionalFields + 1
		to: somClass numberOfFields
		do: [:i | somClass fieldAtIndex: i put: nilObject].! !

!SOMClassGenerationContext methodsFor: 'assembling'!
initInstanceSideOf: somClass in: universe

	| fields methods |
	somClass somName: (universe newSymbol: self theName).
	fields := self instanceFields collect: [:each | universe newSymbol: each].
	somClass somInstanceFields: (universe newArrayWithAll: fields).
	methods := self instanceMethods collect: [:each | each assembleIn: universe].
	somClass somInstanceInvokables: (universe newArrayWithAll: methods).! !

!SOMClassGenerationContext methodsFor: 'testing'!
hasField: fieldName

	^ self isClassSide
		ifTrue: [self classFields includes: fieldName]
		ifFalse: [self instanceFields includes: fieldName]! !

!SOMClassGenerationContext methodsFor: 'accessing'!
classFields
	^ classFields! !

!SOMClassGenerationContext methodsFor: 'accessing'!
classMethods
	^ classMethods! !

!SOMClassGenerationContext methodsFor: 'accessing'!
instanceFields
	^ instanceFields! !

!SOMClassGenerationContext methodsFor: 'accessing'!
instanceFields: anObject
	instanceFields := anObject! !

!SOMClassGenerationContext methodsFor: 'accessing'!
instanceMethods
	^ instanceMethods! !

!SOMClassGenerationContext methodsFor: 'accessing'!
isClassSide
	^ isClassSide! !

!SOMClassGenerationContext methodsFor: 'accessing'!
isClassSide: anObject
	isClassSide := anObject! !

!SOMClassGenerationContext methodsFor: 'accessing'!
superName
	^ superName! !

!SOMClassGenerationContext methodsFor: 'accessing'!
superName: anObject
	superName := anObject! !

!SOMClassGenerationContext methodsFor: 'accessing'!
theName
	^ theName! !

!SOMClassGenerationContext methodsFor: 'accessing'!
theName: string
	^ theName := string! !

!SOMClassGenerationContext methodsFor: 'accessing'!
toggleClassSide
	self isClassSide: self isClassSide not! !

!SOMClassGenerationContext methodsFor: 'adding'!
addClassField: fieldName

	classFields add: fieldName.! !

!SOMClassGenerationContext methodsFor: 'adding'!
addClassFields: fields
	classFields addAll: fields.! !

!SOMClassGenerationContext methodsFor: 'adding'!
addField: field
	self isClassSide
		ifTrue:  [classFields add: field]
		ifFalse: [instanceFields add: field].! !

!SOMClassGenerationContext methodsFor: 'adding'!
addFields: fieldNames

	^ self isClassSide
		ifTrue: [classFields addAll: fieldNames]
		ifFalse: [instanceFields addAll: fieldNames]! !

!SOMClassGenerationContext methodsFor: 'adding'!
addInstanceField: field
	instanceFields add: field.! !

!SOMClassGenerationContext methodsFor: 'adding'!
addInstanceFields: fields
	instanceFields addAll: fields.! !

!SOMClassGenerationContext methodsFor: 'adding'!
addMethod: methodGenContext

	^ self isClassSide
		ifFalse: [self instanceMethods add: methodGenContext]
		ifTrue: [
			methodGenContext onClassSide: true.
			self classMethods add: methodGenContext]! !

!SOMClassGenerationContext methodsFor: 'adding'!
fieldIndex: fieldName
	^ self isClassSide
		ifTrue:  [classFields indexOf: fieldName]
		ifFalse: [instanceFields indexOf: fieldName].! !

!SOMCompiler methodsFor: 'file access'!
classFileExtension

	^ '.som'! !

!SOMCompiler methodsFor: 'file access' stamp: 'jpb 4/11/2020 10:15:00'!
sourceOfClassFile: className

	| classFile theDir source stream |
	classFile := className , self classFileExtension.
	theDir := (self classPaths
		collect: [:path | path asDirectoryEntry ])
		detect: [:dir | (dir // classFile) exists ]
		ifNone: [^ nil].
	"theDir ifNil: [self error: 'Cannot find class in classPath']."
	stream := (theDir // classFile) readStream.
	source := stream contents.
	stream close.
	^ {source. classFile}! !

!SOMCompiler methodsFor: 'accessing'!
classPaths
	^ classPaths! !

!SOMCompiler methodsFor: 'accessing'!
classPaths: anObject
	classPaths := anObject! !

!SOMCompiler methodsFor: 'accessing'!
universe
	^ universe! !

!SOMCompiler methodsFor: 'accessing'!
universe: anObject
	universe := anObject! !

!SOMCompiler methodsFor: 'compiling'!
compileSOMClassSource: source stub: classStubOrNil from: aFileName

	| cgenc |
	cgenc := (SOMClassParser inUniverse: universe onSource: source from: aFileName) start.
	^ classStubOrNil
		ifNil: [cgenc assembleIn: universe]
		ifNotNil: [cgenc assembleIn: universe stub: classStubOrNil].! !

!SOMCompiler methodsFor: 'loading'!
loadAndCompileSOMClass: className stub: classStubOrNil

	| sourceAndFile |
	sourceAndFile := self sourceOfClassFile: className.
	sourceAndFile ifNil: [^ nil].
	^ self compileSOMClassSource: (sourceAndFile at: 1) stub: classStubOrNil from: (sourceAndFile at: 2).! !

!SOMCompiler class methodsFor: 'as yet unclassified'!
inUniverse: universe on: classPaths

	^ self new
		classPaths: classPaths;
		universe: universe;
		yourself.! !

!SOMLexer methodsFor: 'helper' stamp: 'jpb 2/20/2021 09:50:13'!
ignoreNewlines! !

!SOMLexer methodsFor: 'helper'!
isOperator: char
	^ char == $~ or: [
	  char == $& or: [
	  char == $| or: [
	  char == $* or: [
	  char == $/ or: [
	  char == $\ or: [
	  char == $+ or: [
	  char == $= or: [
	  char == $> or: [
	  char == $< or: [
	  char == $, or: [
	  char == $@ or: [
	  char == $% or: [
	  char == $- ]]]]]]]]]]]]].! !

!SOMLexer methodsFor: 'helper'!
nextInBufIs: aString
	| p |
	p := buf findString: aString startingAt: bufP.
	^ p == bufP! !

!SOMLexer methodsFor: 'helper'!
nextWordInBufIs: aString
   (self nextInBufIs: aString) ifTrue: [
     | nextPos nextChar |
      nextPos := bufP + aString size.
       
      nextPos > buf size ifTrue: [^true].
       
      nextChar := buf at: nextPos.
      ^ (nextChar isLetter or: [nextChar isDigit]) not.
	].

	^ false.! !

!SOMLexer methodsFor: 'helper' stamp: 'jpb 2/20/2021 09:50:04'!
preserveNewlines! !

!SOMLexer methodsFor: 'helper'!
skipComment
	self currentChar == $" ifTrue: [
		[
			self readNext.
			self readBufferIfEmpty: [^ self].
		] doWhileTrue: [self currentChar ~= $"].
		self readNext.
	].
! !

!SOMLexer methodsFor: 'helper'!
skipWhitespace
	[self currentChar isSeparator]
		whileTrue: [
			self readNext.
			self readBufferIfEmpty: [^ self]]! !

!SOMLexer methodsFor: 'helper' stamp: 'jpb 4/10/2020 23:16:17'!
skipWhitespaceAndCommentsOrEnd: atEndBlock
	[	self hasMoreInput ifFalse: atEndBlock.
		self skipWhitespace.
		self skipComment.
	] doWhileTrue: [
		self endOfBuffer 				or: [
		self currentChar isSeparator 	or: [
		self currentChar == $" ]]].! !

!SOMLexer methodsFor: 'lexing'!
match: aSymbol
	sym := aSymbol.
	symChr := self currentChar.
	text := RWBinaryOrTextStream with: symChr asString.
	self readNext.
	^ sym.! !

!SOMLexer methodsFor: 'lexing'!
matchColonOrAssignment
	(self bufchar: bufP + 1) == $= ifTrue: [
		sym := #assign.
		bufP := bufP + 2.
		symChr := nil.
		text := RWBinaryOrTextStream with: ':='.
		^ sym
	].

	^ self match: #colon.! !

!SOMLexer methodsFor: 'lexing'!
matchDigit
	| sawDecimalMark |
	sym    := #integer.
	symChr := nil.
	text   := RWBinaryOrTextStream on: String new.
	
	sawDecimalMark := false.

	[ text nextPut: self currentChar.
	  self readNext.
	
	  (sawDecimalMark not and: [
		  $. == self currentChar and: [
			self nextChar notNil and: [ 
				self nextChar isDigit ] ] ]) ifTrue: [
				sym := #double.
				text nextPut: self currentChar.
				self readNext ].
	  
	] doWhileTrue: [self currentChar notNil and: [ self currentChar isDigit ]].

	^ sym! !

!SOMLexer methodsFor: 'lexing' stamp: 'jpb 4/11/2020 15:11:38'!
matchEscapeChar
	| cur |
	cur := self currentChar.
	
	cur == $t ifTrue: [ 
		text nextPut: Character tab. ^ self ].
	cur == $b ifTrue: [
		text nextPut: Character backspace. ^ self ].
	cur == $n ifTrue: [
		text nextPut: Character lf. ^ self ].
	cur == $r ifTrue: [
		text nextPut: Character cr. ^ self ].
	cur == $f ifTrue: [
		text nextPut: Character newPage. ^ self ].
	cur == $' ifTrue: [
		text nextPut: $'. ^ self ].
	cur == $\ ifTrue: [
		text nextPut: $\. ^ self ].
	cur == $0 ifTrue: [
		text nextPut:( Character asciiValue: 0). ^self ].
	
	Error signal: 'Found unsupported escape sequence. Current character: ', cur asString.	
	
	"self readNext is done by caller to simplify the smalltalk code"! !

!SOMLexer methodsFor: 'lexing'!
matchLetter
	symChr := nil.
	text := RWBinaryOrTextStream on: String new.
	
	[self currentChar notNil and: [
		 self currentChar isLetter or: [
		 self currentChar isDigit  or: [
		 self currentChar == $_]]]]
		whileTrue: [
			text nextPut: self currentChar.
			self readNext.
		].
	
	sym := #identifier.
	
	self currentChar == $: ifTrue: [
		sym := #keyword.
		self readNext.
		text nextPut: $:.
		
		(self currentChar notNil and: [self currentChar isLetter]) ifTrue: [
			sym := #keywordSequence.
			[self currentChar isLetter or: [self currentChar == $:]]
				whileTrue: [
					text nextPut: self currentChar.
					self readNext.
				]
		]
	].

	^ sym! !

!SOMLexer methodsFor: 'lexing'!
matchMinusOrSeparator
	(self nextInBufIs: self seperator) ifTrue: [
		text := RWBinaryOrTextStream on: String new.
		[self currentChar == $-] whileTrue: [
			text nextPut: $-.
			self readNext.
		].
		sym := #seperator.
		^ sym.
	].

	^ self matchOperator
! !

!SOMLexer methodsFor: 'lexing'!
matchOperator
	| cur |
	(self isOperator: (self bufchar: bufP + 1)) ifTrue: [
		sym := #operatorSequence.
		symChr := nil.
		text := RWBinaryOrTextStream on: String new.
		
		[self isOperator: self currentChar] whileTrue: [
			text nextPut: self currentChar.
			self readNext.
		].
		^ sym.
	].

	cur := self currentChar.
	cur == $~ ifTrue: [ ^ self match: #not ].
	cur == $& ifTrue: [ ^ self match: #and ].
	cur == $| ifTrue: [ ^ self match: #or  ].
	cur == $* ifTrue: [ ^ self match: #star].
	cur == $/ ifTrue: [ ^ self match: #div ].
	cur == $\ ifTrue: [ ^ self match: #mod ].
	cur == $+ ifTrue: [ ^ self match: #plus].
	cur == $= ifTrue: [ ^ self match: #equal].
	cur == $> ifTrue: [ ^ self match: #more].
	cur == $< ifTrue: [ ^ self match: #less].
	cur == $, ifTrue: [ ^ self match: #comma].
	cur == $@ ifTrue: [ ^ self match: #at  ].
	cur == $% ifTrue: [ ^ self match: #per ].
	cur == $- ifTrue: [ ^ self match: #minus ].
	
	Error signal: 'STEFAN: this is unexpected, I think...'.! !

!SOMLexer methodsFor: 'lexing'!
matchPrimitive
	bufP := bufP + self primitive size.
	sym := #primitive.
	symChr := nil.
	text := RWBinaryOrTextStream with: self primitive.
	^ sym
	! !

!SOMLexer methodsFor: 'lexing' stamp: 'jpb 2/20/2021 10:37:31'!
matchString
	
	sym := #STString.
	symChr := nil.
	text := RWBinaryOrTextStream on: String new.
	appendNewlineOnFirstLine := true.
	
	self readNext. "skip start $' "
	
	[ self currentChar == $' ]
	whileFalse: [
		self matchStringChar.
		self readBufferForStringIfEmpty:  [ ^ sym ] ].	
	
	self readNext. "skip the ending $'"
		
	^ sym! !

!SOMLexer methodsFor: 'lexing' stamp: 'jpb 2/19/2021 13:09:03'!
matchStringChar
	| cur |
	cur := self currentChar.
	cur isNil ifTrue: [ ^ self ].
	
	$\ == cur
		ifTrue: [
			self readNext.
			self matchEscapeChar.
			self readNext ]
		ifFalse: [
			text nextPut: cur.
			self readNext ]
! !

!SOMLexer methodsFor: 'lexing'!
peek
	| oldSym oldSymChr oldText |
	peekDone
		ifTrue: [ Error signal: 'SOM Lexer: cannot peek twice!!' ].
	
	oldSym    := sym.
	oldSymChr := symChr.
	oldText   := RWBinaryOrTextStream with: text contents.
	
	nextSym   := self symbol.
	nextSymChr:= symChr.
	nextText  := text.
	
	sym   := oldSym.
	symChr:= oldSymChr.
	text  := oldText.
	
	peekDone := true.
	
	^ nextSym.! !

!SOMLexer methodsFor: 'lexing'!
peekDone
	^ peekDone
! !

!SOMLexer methodsFor: 'lexing'!
symbol
	| currentChar |
	peekDone ifTrue: [^ self symbolAfterPeek].
	
	self skipWhitespaceAndCommentsOrEnd: [
		sym := #none.
		symChr := nil.
		text := RWBinaryOrTextStream on: String new.
		^ sym
	].

	currentChar := self currentChar.
	
	currentChar == $' ifTrue: [ ^ self matchString ].
	currentChar == $[ ifTrue: [ ^ self match: #newBlock ].
	currentChar == $] ifTrue: [ ^ self match: #endBlock ].
	currentChar == $: ifTrue: [ ^ self matchColonOrAssignment ].
	currentChar == $( ifTrue: [ ^ self match: #newTerm ].
	currentChar == $) ifTrue: [ ^ self match: #endTerm ].
	currentChar == $# ifTrue: [ ^ self match: #pound   ].
	currentChar == $^ ifTrue: [ ^ self match: #exit    ].
	currentChar == $. ifTrue: [ ^ self match: #period  ].
	currentChar == $- ifTrue: [ ^ self matchMinusOrSeparator ].
	(self isOperator: currentChar) ifTrue: [ ^ self matchOperator ].

	(self nextWordInBufIs: self primitive) ifTrue: [ ^ self matchPrimitive ].
	
	currentChar isLetter ifTrue: [ ^ self matchLetter ].
	currentChar isDigit  ifTrue: [ ^ self matchDigit  ].
	
	"else"
	sym    := #none.
	symChr := currentChar.
	text   := RWBinaryOrTextStream with: currentChar asString.
	
	^ sym! !

!SOMLexer methodsFor: 'lexing'!
symbolAfterPeek
	peekDone := false.
	sym      := nextSym.
	symChr   := nextSymChr.
	text     := nextText.
	^ sym! !

!SOMLexer methodsFor: 'private'!
bufchar: p
	^ p > buf size
		ifTrue:  [nil]
		ifFalse: [buf at: p]! !

!SOMLexer methodsFor: 'private'!
currentChar
	^ self bufchar: bufP! !

!SOMLexer methodsFor: 'private'!
hasMoreInput
	self readBufferIfEmpty: [^ false].
	
	^ true! !

!SOMLexer methodsFor: 'private'!
nextChar
	^ self bufchar: bufP + 1! !

!SOMLexer methodsFor: 'private'!
readNext
	bufP := bufP + 1! !

!SOMLexer methodsFor: 'initialize-release'!
initialize
	lineNumber := 0.
	peekDone := false.
	text := RWBinaryOrTextStream on: String new.
	buf := ''.
	bufP := 1.! !

!SOMLexer methodsFor: 'buffered reading'!
endOfBuffer
	^ bufP > (buf size)! !

!SOMLexer methodsFor: 'buffered reading' stamp: 'jpb 2/20/2021 10:39:30'!
endOfBufferForString
	"Adds special newline behaviour to strings, so that multiline strings are possible according the old Smalltalk style of doing them"

	(self endOfBuffer and: [ appendNewlineOnFirstLine not ])
		ifTrue: [ ^true ].
		
	(self endOfBuffer and: [ appendNewlineOnFirstLine ])
		ifTrue: [ 
			buf := String lfString.
			appendNewlineOnFirstLine := false.
			bufP := 1. ].
		
	^false! !

!SOMLexer methodsFor: 'buffered reading'!
fillBuffer
	stream atEnd ifTrue: [^ -1].
	
	buf := stream nextLine.
	buf ifNil: [^ -1].
	
	lineNumber := lineNumber + 1.
	
	bufP := 1.
	^ buf size.! !

!SOMLexer methodsFor: 'buffered reading' stamp: 'jpb 2/20/2021 10:06:00'!
fillBufferForString
	| readChar |
	stream atEnd ifTrue: [^ -1].
	
	readChar := stream next.
	
	readChar ifNil: [ ^ -1].
	
	Character cr = readChar ifTrue: [ readChar := Character lf ].
	Character lf = readChar ifTrue: [ lineNumber := lineNumber + 1 ].
	
	buf := readChar asString.	
	bufP := 1.
	
	^ buf size.! !

!SOMLexer methodsFor: 'buffered reading'!
rawBuffer
	^ buf! !

!SOMLexer methodsFor: 'buffered reading' stamp: 'jpb 2/20/2021 10:25:44'!
readBufferForStringIfEmpty: aBlock
	[self endOfBufferForString ] whileTrue: [
		self fillBufferForString == -1
			ifTrue: aBlock]! !

!SOMLexer methodsFor: 'buffered reading'!
readBufferIfEmpty: aBlock
	[self endOfBuffer] whileTrue: [
		self fillBuffer == -1
			ifTrue: aBlock]! !

!SOMLexer methodsFor: 'accessing'!
currentLineNumber
	^ lineNumber! !

!SOMLexer methodsFor: 'accessing'!
nextText
	^ nextText asString! !

!SOMLexer methodsFor: 'accessing'!
stream: aReadStream
	stream := aReadStream.! !

!SOMLexer methodsFor: 'accessing'!
text
	^ text contents! !

!SOMLexer methodsFor: 'constant'!
primitive
	^ 'primitive'! !

!SOMLexer methodsFor: 'constant'!
seperator
	^ '----'! !

!SOMLexer class methodsFor: 'instance creation'!
on: aReadStream
	| lexer |
	[aReadStream isKindOf: PositionableStream ] assert.
	
	lexer := self new.
	lexer stream: aReadStream.
	^ lexer! !

!SOMMethodGenerationContext methodsFor: 'printing'!
bytecodeString

	^ String streamContents: [:s |
		self
			bytecodeStringTab: 0
			stream: s].! !

!SOMMethodGenerationContext methodsFor: 'printing'!
bytecodeStringTab: tabWidth stream: s

	self bytecode do: [:ea |
		tabWidth timesRepeat: [s tab].
		ea printOn: s.
		s cr.
		(ea isKindOf: SOMBCPushBlock) ifTrue: [
			(ea mgenc literals at: ea index) bytecodes first mgenc
				bytecodeStringTab: tabWidth+1
				stream: s.]].! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
addArgumentIfAbsent: argName

	(self arguments includes: argName) ifTrue: [^ false].
	self arguments add: argName.
	^ true! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
addLiteralIfAbsent: literal

	| idx |
	idx := self literals identityIndexOf: literal.
	idx isZero ifFalse: [^ idx].
	self literals add: literal.
	^ self literals size! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
addLocalIfAbsent: varName

	(self locals includes: varName) ifTrue: [^ false].
	self locals add: varName.
	^ true! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
arguments
	^ arguments! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
arguments: anObject
	arguments := anObject! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
bytecode
	^ bytecode! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
bytecode: anObject
	bytecode := anObject! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
finished

	isFinished := true! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
holder
	^ holder! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
holder: anObject
	holder := anObject! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
isBlockMethod
	^ isBlock! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
isBlockMethod: bool
	isBlock := bool! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
isFinished

	^ isFinished! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
isFinished: bool

	isFinished := bool! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
isPrimitive
	^ isPrimitive! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
isPrimitive: anObject
	isPrimitive := anObject! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
literals
	^ literals! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
literals: anObject
	literals := anObject! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
locals
	^ locals! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
locals: anObject
	locals := anObject! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
onClassSide
	^ onClassSide! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
onClassSide: anObject
	onClassSide := anObject! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
outer
	^ outer! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
outer: anObject
	outer := anObject! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
signature
	^ signature! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
signature: anObject
	signature := anObject! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
somHolder
	^ holder! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
somHolder: anObject 
	holder := anObject! !

!SOMMethodGenerationContext methodsFor: 'accessing'!
updateLiteralAt: index with: literal
	self literals at: index put: literal! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcDup
	

	^ self bytecode add: (SOMBCDup in: self)! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcHalt
	self bytecode add: SOMBCHalt new.! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcPop

	self bytecode add: (SOMBCPop in: self).! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcPopArgumentIndex: idx ctxIndex: ctxIdx

	self bytecode add: (SOMBCPopArgument in: self index: idx contextIndex: ctxIdx).! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcPopField: fieldName

	| idx fieldIdx bc |
	self assert: (self hasField: fieldName).
	idx := self addLiteralIfAbsent: fieldName.
	fieldIdx := holder fieldIndex: fieldName.
	bc := SOMBCPopField in: self index: idx.
	bc fieldIndex: fieldIdx.
	^ self bytecode add: bc.
! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcPopLocalIndex: idx ctxIndex: ctxIdx

	self bytecode add: (SOMBCPopLocal in: self index: idx contextIndex: ctxIdx).! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcPushArgumentIndex: idx ctxIndex: ctxIdx

	self bytecode add: (SOMBCPushArgument in: self index: idx contextIndex: ctxIdx).! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcPushBlock: method
	
	| idx |
	idx := self addLiteralIfAbsent: method.
	^ self bytecode add: (SOMBCPushBlock in: self index: idx).! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcPushConstant: const
	| literalIndex |
	literalIndex := self addLiteralIfAbsent: const.
	self bytecode add: (SOMBCPushConstant in: self index: literalIndex).
	^ literalIndex! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcPushField: fieldName

	| idx fieldIdx bc |
	self assert: [holder isNil or: [self hasField: fieldName]].
	idx := self addLiteralIfAbsent: fieldName.
	fieldIdx := holder fieldIndex: fieldName.
	bc := SOMBCPushField in: self index: idx.
	bc fieldIndex: fieldIdx.
	^ self bytecode add: bc.! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcPushGlobal: global

	| idx |
	idx := self addLiteralIfAbsent: global.
	^ self bytecode add: (SOMBCPushGlobal in: self index: idx).! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcPushLocalIndex: idx ctxIndex: ctxIdx

	self bytecode add: (SOMBCPushLocal in: self index: idx contextIndex: ctxIdx).! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcReturnLocal

	^ self bytecode add: (SOMBCReturnLocal in: self).! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcReturnNonLocal

	^ self bytecode add: (SOMBCReturnNonLocal in: self).! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcSend: selector

	| idx |
	self assert: selector isSymbol.
	idx := self addLiteralIfAbsent: selector.
	^ self bytecode add: (SOMBCSend in: self index: idx numArgs: selector numArgs).! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
bcSuperSend: selector

	| idx |
	self assert: selector isSymbol.
	idx := self addLiteralIfAbsent: selector.
	^ self bytecode add: (SOMBCSuperSend in: self index: idx numArgs: selector numArgs).! !

!SOMMethodGenerationContext methodsFor: 'bytecode' stamp: 'jpb 2/21/2021 10:28:26'!
bytecodesCount
	"Returns the bytecodes total counted"
	^ self bytecode size! !

!SOMMethodGenerationContext methodsFor: 'bytecode' stamp: 'jpb 2/21/2021 10:27:17'!
bytecodesSize
	"Returns the size of the recorded bytecodes in amount of bytes"
	^ self bytecode 
		inject: 0
		into: [ :sum :ea | sum + ea length ]! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
emitSend: selector isSuper: isSuper

	isSuper
		ifTrue: [self bcSuperSend: selector]
		ifFalse: [self bcSend: selector]! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
removeLastBytecode
	self bytecode removeLast.! !

!SOMMethodGenerationContext methodsFor: 'bytecode'!
returnSelf

	self bcPushArgumentIndex: 1 ctxIndex: 1.
	self bcReturnLocal.! !

!SOMMethodGenerationContext methodsFor: 'assembling'!
assemble: holderClass

	| compileClass |
	compileClass := self onClassSide
		ifTrue: [holderClass class]
		ifFalse: [holderClass].
	compileClass compile: (String streamContents: [:s | s
		nextPutAll: self combineSelectorAndArgs; cr])! !

!SOMMethodGenerationContext methodsFor: 'assembling'!
assembleIn: universe

	^ self isPrimitive
		ifTrue: [SOMPrimitive
			inUniverse: universe
			named: self signature
			numArgs: arguments size]
		ifFalse: [ (SOMMethod
			inUniverse: universe
			named: self signature
			numArgs: self arguments size
			numLocals: self locals size
			maxStackDepth: self computeMaxStackDepth
			bytecodes: bytecode asArray
			holder: universe globalNil
			lexicalContext: universe globalNil)
				assignLexicalContexts ].! !

!SOMMethodGenerationContext methodsFor: 'assembling'!
combineSelectorAndArgs

	| parts args |
	args := self arguments allButFirst. "First is self"
	args ifEmpty: [^ self signature].
	args size = 1 ifTrue: [^ self signature , ' ' , args first].
	parts := (self signature substrings: ':')
		with: args
		collect: [:sig :arg | sig , ': ' , arg].
	"Neeeeed join!!!!!!"
	^ (parts inject: '' into: [:all :ea | all , ' ' , ea]) trimBoth.! !

!SOMMethodGenerationContext methodsFor: 'stack size'!
computeMaxStackDepth

	| depth |
	depth := 0.
	^ self bytecode inject: 0 into: [:maxDepth :ea |
		depth := depth + ea stackDepth.
		depth > maxDepth
			ifTrue: [depth]
			ifFalse: [maxDepth]].! !

!SOMMethodGenerationContext methodsFor: 'lookup'!
findVariable: varName context: ctx ifFound: aBlock
	| idx isArgument |
	isArgument := false.

	idx := locals indexOf: varName.
	idx = 0 ifTrue: [
		idx := arguments indexOf: varName.
		idx = 0
			ifTrue: [
				outer ifNil: [ ^ false ]
				ifNotNil: [
					^ outer findVariable: varName context: ctx + 1 ifFound: aBlock ]]
			ifFalse: [ isArgument := true ]].
	
	^ aBlock value: idx value: ctx value: isArgument! !

!SOMMethodGenerationContext methodsFor: 'lookup'!
hasField: field
	^ holder hasField: field! !

!SOMMethodGenerationContext methodsFor: 'initialize'!
initialize

	super initialize.
	self
		isPrimitive: false;
		onClassSide: false;
		locals: OrderedCollection new;
		literals: OrderedCollection new;
		bytecode: OrderedCollection new;
		arguments: OrderedCollection new;
		isFinished: false;
		isBlockMethod: false.! !

!SOMMethodGenerationContext class methodsFor: 'as yet unclassified'!
blockIn: mgenc 
	^ self new
		somHolder: mgenc somHolder;
		outer: mgenc;
		yourself! !

!SOMMethodGenerationContext class methodsFor: 'as yet unclassified'!
named: n

	^ self new
		signature: n asSymbol;
		yourself! !

!SOMParser methodsFor: 'accept and expect'!
accept: aSymbol
	sym == aSymbol ifTrue: [
		self getSym.
		^ true ].

	^ false! !

!SOMParser methodsFor: 'accept and expect'!
expect: aSymbol
	(self accept: aSymbol) ifTrue: [ ^ true ].
		
	SOMParseError signalWith: 'Expected symbol <1p>, but found <2p>.'
				    expectedSym: aSymbol and: self! !

!SOMParser methodsFor: 'patterns'!
identifier
	| s | 
	s := text asSymbol.
	
	(self accept: #primitive) ifFalse: [
		self expect: #identifier]. 
	
	^ s! !

!SOMParser methodsFor: 'patterns'!
variable
	^ self identifier! !

!SOMParser methodsFor: 'private'!
getSym
	sym  := lexer symbol.
	text := lexer text.! !

!SOMParser methodsFor: 'private'!
peek
	nextSym := lexer peek.! !

!SOMParser methodsFor: 'private'!
peekForNextSymbolFromLexerIfNecessary
	^ lexer peekDone.! !

!SOMParser methodsFor: 'private'!
printableSymbol
	^ sym == #integer         or: [
	  sym == #STString        or: [
	  self symIsIdentifier    or: [
	  sym == #keyword         or: [
	  sym == #keywordSequence or: [
	  sym == #operatorSequence    ]]]]]! !

!SOMParser methodsFor: 'accessing'!
cgenc
	^ cgenc! !

!SOMParser methodsFor: 'accessing'!
cgenc: anObject
	cgenc := anObject! !

!SOMParser methodsFor: 'accessing'!
currentColumn
	^ -1! !

!SOMParser methodsFor: 'accessing'!
currentLineNumber
	^ lexer currentLineNumber! !

!SOMParser methodsFor: 'accessing'!
fileName
	^ fileName! !

!SOMParser methodsFor: 'accessing'!
fileName: aString
	fileName := aString asString! !

!SOMParser methodsFor: 'accessing'!
parseState
	^ {sym. text. lexer. nextSym.}! !

!SOMParser methodsFor: 'accessing'!
parseState: state
	sym    := state first.
	text   := state second.
	lexer  := state third.
	nextSym:= state fourth.! !

!SOMParser methodsFor: 'accessing'!
rawBuffer
	^ lexer rawBuffer! !

!SOMParser methodsFor: 'accessing'!
shouldReadSources
	^ shouldReadSources! !

!SOMParser methodsFor: 'accessing'!
shouldReadSources: aBool
	shouldReadSources := aBool! !

!SOMParser methodsFor: 'accessing'!
stream: aReadStream
	lexer := SOMLexer on: aReadStream.
	self getSym.! !

!SOMParser methodsFor: 'accessing'!
sym
	^ sym! !

!SOMParser methodsFor: 'accessing'!
text
	^ text! !

!SOMParser methodsFor: 'accessing'!
universe
	^ universe! !

!SOMParser methodsFor: 'accessing'!
universe: anObject
	universe := anObject! !

!SOMParser methodsFor: 'initialize-release'!
initialize
	super initialize.
	sym := #none.
	nextSym := #none.
	shouldReadSources := false.! !

!SOMParser methodsFor: 'compatibility'!
apply: aSymbol
	"For compatibilty with OMeta"
	^ self perform: aSymbol! !

!SOMParser methodsFor: 'helper'!
methodParser
	^ SOMMethodParser new
			universe: self universe;
			fileName: fileName;
			shouldReadSources: self shouldReadSources;
			yourself! !

!SOMParser methodsFor: 'helper'!
symIn: symbols
	^ symbols includes: sym ! !

!SOMParser methodsFor: 'helper'!
symIsIdentifier
	^ sym == #identifier or: [sym == #primitive]! !

!SOMParser class methodsFor: 'instance creation'!
inUniverse: universe onSource: string from: aFileName
	| readStream parser |
	readStream := string asString readStream.
	
	parser := self new.
	parser stream: readStream.
	parser universe: universe.
	parser fileName: aFileName.
	
	^ parser! !

!SOMParser class methodsFor: 'class initialization'!
initialize
	"self initialize"
	SingleOpSyms := #(                     not and or star div mod plus equal more less comma at per none).
	BinaryOpSyms := #(or comma minus equal not and or star div mod plus equal more less comma at per none).
	KeywordSelectorSyms := #(keyword keywordSequence).
	! !

!SOMClassParser methodsFor: 'helper'!
methodParser

	^ super methodParser
		cgenc: self cgenc;
		yourself.! !

!SOMClassParser methodsFor: 'parsing'!
start
	self classdef.
	^ cgenc! !

!SOMClassParser methodsFor: 'patterns'!
classBody
	self expect: #newTerm.
	
	self classSide.
	
	self classInstanceSwitch ifTrue: [
		cgenc toggleClassSide.
		self classSide.].
	
	self expect: #endTerm.! !

!SOMClassParser methodsFor: 'patterns'!
classInstanceSwitch
	^ self accept: #seperator.! !

!SOMClassParser methodsFor: 'patterns'!
classSide
	self vars.
	
	[self symIsIdentifier     or: [
	 sym == #keyword          or: [
	 sym == #operatorSequence or: [
	 self symIn: BinaryOpSyms]]]]
		whileTrue: [
			self foreignParseMethod].! !

!SOMClassParser methodsFor: 'patterns'!
classStart
	| superName |
	cgenc theName: self identifier.
	
	self expect: #equal.
	
	superName := sym == #identifier
		ifTrue:  [ self identifier ]
		ifFalse: [ #Object ].
	cgenc superName: superName.
	
	"Load the super class, if it is not nil (to break dependency cycle)"
	superName == #nil ifFalse: [ 
		| superClass |
		superClass := universe loadSOMClass: superName.
		
		superClass ifNil: [
			SOMParseError signalWith: 'Super class "', superName asString, '" could not be loaded'
							 expectedSym: nil and: self ].

		cgenc addInstanceFields: superClass allInstanceFields.
		cgenc addClassFields: superClass somClass allInstanceFields.		
	].
	

		! !

!SOMClassParser methodsFor: 'patterns'!
classdef
	self classStart.
	self classBody.! !

!SOMClassParser methodsFor: 'patterns'!
foreignParseMethod
	| parser result |
	parser := self methodParser.
	parser parseState: self parseState.
	
	result := parser apply: #method.
	
	cgenc addMethod: result.
	self parseState: parser parseState.
	^ result! !

!SOMClassParser methodsFor: 'patterns'!
vars
	(self accept: #or) ifTrue: [
		[self symIsIdentifier] whileTrue: [
			cgenc addField: self variable.
		].
		
		self expect: #or.
	]! !

!SOMClassParser methodsFor: 'initialize-release'!
initialize
	super initialize.
	
	self cgenc: SOMClassGenerationContext new.! !

!SOMMethodParser methodsFor: 'accessing'!
mgenc
	^ mgenc! !

!SOMMethodParser methodsFor: 'accessing'!
mgenc: anMgenc
	mgenc := anMgenc! !

!SOMMethodParser methodsFor: 'patterns'!
argument
	^ self variable! !

!SOMMethodParser methodsFor: 'patterns'!
assignation
	| list |
	list := OrderedCollection new.
	
	self assignments: list.

	self evaluation.
	
	list do: [:v | mgenc bcDup ].
	list do: [:v | self genPopVariable: v ]! !

!SOMMethodParser methodsFor: 'patterns'!
assignment
	| v |
	v := self variable.
	mgenc addLiteralIfAbsent: v.
	
	self expect: #assign.
	
	^ v! !

!SOMMethodParser methodsFor: 'patterns'!
assignments: vars
	self symIsIdentifier ifTrue: [
		| var |
		var := self assignment.
		
		self peek.
		
		nextSym == #assign ifTrue: [
			self assignments: vars.
		].
	
		vars add: var.
	]! !

!SOMMethodParser methodsFor: 'patterns'!
binaryMessage: superSend
	| sel |
	sel := self binarySelector.
	
	mgenc addLiteralIfAbsent: sel.
	
	self binaryOperand: false.
	
	superSend ifTrue: [mgenc bcSuperSend: sel]
				ifFalse:[mgenc bcSend: sel].! !

!SOMMethodParser methodsFor: 'patterns'!
binaryOperand: superSend
	| doSuper |
	doSuper := self primary: superSend.
	
	[self symIsIdentifier] whileTrue:
		[self unaryMessage: doSuper].
	
	^ doSuper! !

!SOMMethodParser methodsFor: 'patterns'!
binaryPattern
	mgenc signature: self binarySelector.
	mgenc addArgumentIfAbsent: self argument.! !

!SOMMethodParser methodsFor: 'patterns'!
blockArgPattern
	| blockSig |
	sym == #colon ifTrue: [self blockPattern ].! !

!SOMMethodParser methodsFor: 'patterns'!
blockArguments
	[ self expect: #colon.
	  mgenc addArgumentIfAbsent: self argument
	] doWhileTrue: [sym == #colon].! !

!SOMMethodParser methodsFor: 'patterns' stamp: 'jpb 2/21/2021 11:27:50'!
blockBody: hasSeenPeriod
	(self accept: #exit) ifTrue: [
		^ self result.
	].

	sym == #endBlock ifTrue: [
		mgenc bytecodesCount = 0
			ifTrue: [ mgenc bcPushGlobal: #nil ].
		
		hasSeenPeriod ifTrue: [ mgenc removeLastBytecode ].
		
		^ mgenc
			bcReturnLocal;
			finished.
	].

	sym == #endTerm ifTrue: [
		^ mgenc returnSelf; finished.
	].

	self expression.
	(self accept: #period) ifTrue: [
		mgenc bcPop.
		self blockBody: true.
	].
! !

!SOMMethodParser methodsFor: 'patterns'!
blockContents
	(self accept: #or) ifTrue: [
		self locals.
		self expect: #or.
	].

	self blockBody: false.! !

!SOMMethodParser methodsFor: 'patterns'!
blockPattern
	self blockArguments.
	self expect: #or.! !

!SOMMethodParser methodsFor: 'patterns'!
evaluation
	| superSend |
	superSend := self primary: false.
	
	(self symIsIdentifier     or: [
	 sym == #keyword          or: [
	 sym == #operatorSequence or: [
	 self symIn: BinaryOpSyms]]]) ifTrue: [
		self messages: superSend.
	]! !

!SOMMethodParser methodsFor: 'patterns'!
expression
	self peek.
	nextSym == #assign
		ifTrue:  [self assignation.]
		ifFalse: [self evaluation. ]! !

!SOMMethodParser methodsFor: 'patterns'!
formula
	| superSend |
	superSend := self binaryOperand: false.
	
	(sym == #operatorSequence or: [self symIn: BinaryOpSyms])
		ifTrue: [self binaryMessage: superSend ].
	
	"only the first message in a sequence can be a super send"
	[sym == #operatorSequence or: [self symIn: BinaryOpSyms]]
		whileTrue: [self binaryMessage: false ].! !

!SOMMethodParser methodsFor: 'patterns'!
genPopVariable: variable
	mgenc findVariable: variable context: 1 ifFound: [:idx :contextLvl :isArg |
		isArg
			ifTrue: [ mgenc bcPopArgumentIndex: idx ctxIndex: contextLvl ]
			ifFalse: [  mgenc bcPopLocalIndex: idx ctxIndex: contextLvl ].
		^ self ].

	(mgenc hasField: variable) ifFalse: [ 
		SOMParseError signalWith:
				'Trying to write to a field with name "', variable asString,
				'", but the field does not exist in class ', mgenc holder theName asString
			expectedSym: nil and: self. ].

	mgenc bcPopField: variable.
! !

!SOMMethodParser methodsFor: 'patterns'!
genPushVariable: variable
	mgenc findVariable: variable context: 1 ifFound: [:idx :contextLvl :isArg |
		isArg
			ifTrue: [ mgenc bcPushArgumentIndex: idx ctxIndex: contextLvl ]
			ifFalse: [  mgenc bcPushLocalIndex: idx ctxIndex: contextLvl ].
		^ self ].
	
	(mgenc hasField: variable) ifTrue: [
		mgenc bcPushField: variable.
		^ self ].

	mgenc bcPushGlobal: variable! !

!SOMMethodParser methodsFor: 'patterns'!
keyword
	| s |
	s := text.
	self expect: #keyword.
	^ s! !

!SOMMethodParser methodsFor: 'patterns'!
keywordMessage: superSend
	| kw sel |
	kw := RWBinaryOrTextStream on: String new.
	
	[ kw nextPutAll: self keyword.
	  self formula.
	] doWhileTrue: [sym == #keyword].

	sel := kw contents asSymbol.
	
	mgenc addLiteralIfAbsent: sel.
	superSend ifTrue:  [mgenc bcSuperSend: sel]
				ifFalse: [mgenc bcSend: sel]! !

!SOMMethodParser methodsFor: 'patterns'!
literal
	sym == #pound ifTrue: [
		self peekForNextSymbolFromLexerIfNecessary.
		nextSym == #newTerm
			ifTrue: [ ^ self literalArray ]
			ifFalse: [ ^ self literalSymbol ] ].
	sym == #STString ifTrue: [ ^ self literalString. ].

	self literalNumber.! !

!SOMMethodParser methodsFor: 'patterns'!
literalArray
	| i arraySizeLiteralIndex |

	self expect: #pound.
	self expect: #newTerm.
		
	"create empty array"
	mgenc bcPushGlobal: #Array.
	arraySizeLiteralIndex := mgenc bcPushConstant: 'ArraySizeLiteralPlaceholder'.
	mgenc bcSend: #new:.
	
	i := 1.
	
	[ sym = #endTerm ] whileFalse: [ 
		| pushIndex |
		mgenc bcDup.
		pushIndex := universe newNumber: i.
		mgenc bcPushConstant: pushIndex.
		self literal.
		mgenc bcSend: #at:put:.
		mgenc bcPop.
		i := i + 1 ].
	
	mgenc updateLiteralAt: arraySizeLiteralIndex with: (universe newNumber: i - 1).
	self expect: #endTerm
! !

!SOMMethodParser methodsFor: 'patterns'!
literalDecimal
	sym == #integer ifTrue: [
		^ self literalInteger ].
	
	self assert: sym == #double.
	^ self literalDouble.
	! !

!SOMMethodParser methodsFor: 'patterns'!
literalDouble
	| val |
	val := Float readFrom: text contents.
	self expect: #double.
	^ val! !

!SOMMethodParser methodsFor: 'patterns' stamp: 'jpb 2/11/2021 22:12:09'!
literalInteger
	| val |
	val := text contents asNumber asInteger.
	self expect: #integer.
	^ val! !

!SOMMethodParser methodsFor: 'patterns'!
literalNumber
	| val lit |
	val := sym == #minus	ifTrue: [self negativeDecimal]
								ifFalse:[self literalDecimal ].
	lit := universe newNumber: val.
	mgenc addLiteralIfAbsent: lit.
	mgenc bcPushConstant: lit.! !

!SOMMethodParser methodsFor: 'patterns'!
literalString
	| s |
	s := universe newString: self string.
	mgenc bcPushConstant: s.! !

!SOMMethodParser methodsFor: 'patterns'!
literalSymbol
	| symbol |
	self expect: #pound.
	symbol := sym == #STString
		ifTrue:  [universe newSymbol: self string]
		ifFalse: [universe newSymbol: self selector].
	
	mgenc bcPushConstant: symbol.! !

!SOMMethodParser methodsFor: 'patterns'!
locals
	[self symIsIdentifier] whileTrue: [
		mgenc addLocalIfAbsent: self variable.
	]! !

!SOMMethodParser methodsFor: 'patterns'!
messages: superSend
	| doSuper |
	doSuper := superSend.
		
	self symIsIdentifier ifTrue: [
		[ self unaryMessage: doSuper.
		  doSuper := false.
		] doWhileTrue: [self symIsIdentifier].
		
		[sym == #operatorSequence or: [self symIn: BinaryOpSyms]] whileTrue: [
			self binaryMessage: false.
		].
	
		sym == #keyword ifTrue: [
			self keywordMessage: false.
		].
		^ doSuper.
	].

	(sym == #operatorSequence or: [self symIn: BinaryOpSyms]) ifTrue: [
		[ self binaryMessage: doSuper.
		  doSuper := false.
		] doWhileTrue: [sym == #operatorSequence or: [self symIn: BinaryOpSyms]].
		
		sym == #keyword ifTrue: [
			self keywordMessage: false.
		].
		^ doSuper.
	].

	self keywordMessage: doSuper.
! !

!SOMMethodParser methodsFor: 'patterns'!
method
	self methodName.
	self expect: #equal.
	
	self methodBody.
		
	^ mgenc! !

!SOMMethodParser methodsFor: 'patterns'!
methodBlock
	self expect: #newTerm.
	self blockContents.
	
	mgenc isFinished ifFalse: [
		mgenc
			bcPop;
			returnSelf;
			finished.
	].

	self expect: #endTerm.! !

!SOMMethodParser methodsFor: 'patterns'!
methodBody
	sym == #primitive
		ifTrue:  [ mgenc isPrimitive: true.
					 self primitiveBlock.]
		ifFalse: [ self methodBlock ].
! !

!SOMMethodParser methodsFor: 'patterns'!
methodName
	mgenc := SOMMethodGenerationContext new.
	mgenc addArgumentIfAbsent: #self.
	mgenc holder: cgenc.
	
	self symIsIdentifier ifTrue: [ ^ self unaryPattern   ].
	sym == #keyword      ifTrue: [ ^ self keywordPattern ].
	
	"else"
	^ self binaryPattern.! !

!SOMMethodParser methodsFor: 'patterns'!
negativeDecimal
	self expect: #minus.
	^ self literalDecimal negated ! !

!SOMMethodParser methodsFor: 'patterns'!
nestedBlock
	self expect: #newBlock.
	
	mgenc isBlockMethod: true.
	
	self blockArgPattern.
	self blockContents.
	
	mgenc isFinished ifFalse: [
		mgenc bcReturnLocal; finished.
	].

	self expect: #endBlock.
	
	^ mgenc! !

!SOMMethodParser methodsFor: 'patterns'!
nestedTerm
	self expect: #newTerm.
	
	self expression.
	
	self expect: #endTerm.! !

!SOMMethodParser methodsFor: 'patterns'!
parseNestedBlock
	| parser result blockMethod |
	
	parser := self methodParser.
	parser parseState: self parseState.
	
	result := parser apply: #nestedBlock.
	
	blockMethod := result assembleIn: universe.
	mgenc bcPushBlock: blockMethod.
	
	self parseState: parser parseState.
	
	^ result! !

!SOMMethodParser methodsFor: 'patterns'!
primary: doSuper
	| superSend |
	superSend := doSuper.
	
	self symIsIdentifier ifTrue: [
		| v |
		v := self variable.
		v = #super ifTrue: [
			v := #self. "sends to #super push #self as receiver"
			superSend := true.
		].
	
		self genPushVariable: v.
		^ superSend.
	].

	sym == #newTerm ifTrue: [
		self nestedTerm.
		^ superSend.
	].

	sym == #newBlock ifTrue: [
		self parseNestedBlock.
		^ superSend
	].

	self literal.
	^ superSend! !

!SOMMethodParser methodsFor: 'patterns'!
primitiveBlock
	self expect: #primitive.! !

!SOMMethodParser methodsFor: 'patterns'!
result
	self expression.
	
	mgenc isBlockMethod
		ifTrue:  [ mgenc bcReturnNonLocal ]
		ifFalse: [ mgenc bcReturnLocal    ].
	
	mgenc finished.
	
	self accept: #period.! !

!SOMMethodParser methodsFor: 'patterns'!
selector
	(sym == #operatorSequence or: [self symIn: SingleOpSyms])
		ifTrue: [^ self binarySelector ].
	
	(sym == #keyword or: [sym == #keywordSequence])
		ifTrue: [^ self keywordSelector].
	
	^ self unarySelector! !

!SOMMethodParser methodsFor: 'patterns'!
string
	| s |
	s := text contents.
	self expect: #STString.
	^ s! !

!SOMMethodParser methodsFor: 'patterns'!
unaryMessage: superSend
	| sel |
	sel := self unarySelector.
	
	mgenc emitSend: sel isSuper: superSend ! !

!SOMMethodParser methodsFor: 'patterns'!
unaryPattern
	mgenc signature: self unarySelector! !

!SOMMethodParser methodsFor: 'helper'!
fakeCgenc

	cgenc := SOMClassGenerationContext new
			theName: #Dummy;
			yourself.! !

!SOMMethodParser methodsFor: 'helper'!
fakeMgenc

	mgenc := (SOMMethodGenerationContext named: #dummy)
		somHolder: cgenc;
		yourself! !

!SOMMethodParser methodsFor: 'helper'!
methodParser
	^ super methodParser
		mgenc: (SOMMethodGenerationContext blockIn: mgenc);
		yourself! !

!SOMMethodParser methodsFor: 'accept and expect'!
acceptOneOf: symbols
	(self symIn: symbols) ifTrue: [
		self getSym.
		^ true ].

	^ false! !

!SOMMethodParser methodsFor: 'accept and expect'!
expectOneOf: syms
	| msg |
	(self acceptOneOf: syms)
		ifTrue: [	^ true. ].
	
	msg := RWBinaryOrTextStream on: String new.
	msg nextPutAll: 'unexpected symbol in line '.
	msg nextPutAll: lexer currentLineNumber asString.
	msg nextPutAll: '. Expected one of '.
	
	syms do: [:s | 
		msg nextPutAll: s.
		msg nextPutAll: ', '].
	
	msg nextPutAll: 'but found '.
	msg nextPutAll: sym asString.
	
	self printableSymbol ifTrue: [
		msg nextPutAll: ' (', text contents, ')'].
	
	msg nextPutAll: ': '.
	msg nextPutAll: lexer rawBuffer.
	
	Error signal: msg.! !

!SOMMethodParser methodsFor: 'selector patterns'!
binarySelector
	| s |
	s := text asSymbol.
	
	(self accept: #or)		ifFalse: [
	(self accept: #comma)	ifFalse: [
	(self accept: #minus)	ifFalse: [
	(self accept: #equal)	ifFalse: [
	(self acceptOneOf: SingleOpSyms) ifFalse: [
	(self accept: #operatorSequence) ifFalse: [
	 self expect: #none    ]]]]]].

	^ s! !

!SOMMethodParser methodsFor: 'selector patterns'!
keywordPattern
	| kw |
	kw := RWBinaryOrTextStream on: String new.
	[ kw nextPutAll: self keyword.
	  mgenc addArgumentIfAbsent: self argument
	] doWhileTrue: [sym == #keyword].

	mgenc signature: kw contents asSymbol. "(universe newSymbol:)"! !

!SOMMethodParser methodsFor: 'selector patterns'!
keywordSelector
	| s |
	s := text asSymbol.
	
	self expectOneOf: KeywordSelectorSyms.
	
	^ s! !

!SOMMethodParser methodsFor: 'selector patterns'!
unarySelector
	^ self identifier asSymbol! !
SOMParser initialize!
