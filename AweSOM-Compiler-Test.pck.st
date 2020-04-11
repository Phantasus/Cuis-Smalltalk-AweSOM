'From Cuis 5.0 [latest update: #4103] on 11 April 2020 at 4:19:02 pm'!
'Description The compiler test package of the AweSOM (Simple object machine) implementation.

Original authors: Arvid Heise, Matthias Kleine, Robert Krahn, Michael Haupt.
License: MIT'!
!provides: 'AweSOM-Compiler-Test' 1 2!
!requires: 'Cuis-Base' 50 4103 nil!
!requires: 'AweSOM-Test' 1 0 nil!
!requires: 'AweSOM-Compiler' 1 4 nil!
!requires: 'AweSOM-Meta' 1 2 nil!
SystemOrganization addCategory: #'AweSOM-Compiler-Test'!


!classDefinition: #CompileSOMClassTest category: #'AweSOM-Compiler-Test'!
TestCaseWithUniverse subclass: #CompileSOMClassTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'CompileSOMClassTest class' category: #'AweSOM-Compiler-Test'!
CompileSOMClassTest class
	instanceVariableNames: ''!

!classDefinition: #CompileSOMMethodTest category: #'AweSOM-Compiler-Test'!
TestCaseWithUniverse subclass: #CompileSOMMethodTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'CompileSOMMethodTest class' category: #'AweSOM-Compiler-Test'!
CompileSOMMethodTest class
	instanceVariableNames: ''!

!classDefinition: #ParseClassTest category: #'AweSOM-Compiler-Test'!
TestCaseWithUniverse subclass: #ParseClassTest
	instanceVariableNames: 'parser result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'ParseClassTest class' category: #'AweSOM-Compiler-Test'!
ParseClassTest class
	instanceVariableNames: ''!

!classDefinition: #ParseBytecodeTest category: #'AweSOM-Compiler-Test'!
ParseClassTest subclass: #ParseBytecodeTest
	instanceVariableNames: 'bytecode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'ParseBytecodeTest class' category: #'AweSOM-Compiler-Test'!
ParseBytecodeTest class
	instanceVariableNames: ''!

!classDefinition: #ParseCompleteClassTest category: #'AweSOM-Compiler-Test'!
ParseClassTest subclass: #ParseCompleteClassTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'ParseCompleteClassTest class' category: #'AweSOM-Compiler-Test'!
ParseCompleteClassTest class
	instanceVariableNames: ''!

!classDefinition: #ParseMethodTest category: #'AweSOM-Compiler-Test'!
ParseClassTest subclass: #ParseMethodTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'ParseMethodTest class' category: #'AweSOM-Compiler-Test'!
ParseMethodTest class
	instanceVariableNames: ''!

!classDefinition: #SOMLexerTest category: #'AweSOM-Compiler-Test'!
TestCaseWithUniverse subclass: #SOMLexerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Compiler-Test'!
!classDefinition: 'SOMLexerTest class' category: #'AweSOM-Compiler-Test'!
SOMLexerTest class
	instanceVariableNames: ''!


!ParseClassTest methodsFor: 'running'!
parserClass

	^ SOMClassParser! !

!ParseBytecodeTest methodsFor: 'running'!
parserClass

	^ SOMMethodParser! !

!ParseMethodTest methodsFor: 'running'!
parserClass

	^ SOMMethodParser! !

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

!CompileSOMClassTest methodsFor: 'tests'!
test07InternalClassHierarchyEqualsSomClassHierarchy

	"This test is currently deactivated. It tests if the class
	hierarchy of system classes is the same as in SOM. Currently
	it isn't but there could be problems in the future because of this'"
	universe := SOMUniverse new.
	universe setupClasspath: 'Smalltalk:TestSuite:.'.
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

!ParseBytecodeTest methodsFor: 'tests'!
test01EmptyMethod

	self setUpParser: 'x = ()' andApply: #method.
	self assert: result locals isEmpty.
	self assert: result arguments size equals: 1. "self"
	self assert: result literals isEmpty.
	self assert: result bytecodeCount equals: 4.
	self assertBcAt: 2 is: SOMBCReturnLocal.! !

!ParseBytecodeTest methodsFor: 'tests'!
test02Constant

	self setUpParser: 'x = (1)' andApply: #method.
	self assert: result literals size equals: 1.
	self assert: result bytecodeCount equals: 7.
	self assert: result literals first number equals: 1.! !

!ParseBytecodeTest methodsFor: 'tests'!
test03aReturnObject

	self setUpParser: 'x = (^1.)' andApply: #method.
	self assert: result bytecodeCount equals: 3.
	self assert: result bytecode size equals: 2! !

!ParseBytecodeTest methodsFor: 'tests'!
test03bReturnObject

	self setUpParser: 'x = (^1)' andApply: #method.
	self assert: result bytecodeCount equals: 3.
	self assert: result bytecode size equals: 2! !

!ParseBytecodeTest methodsFor: 'tests'!
test04MultipleExpressions

	self setUpParser: 'x = (1. 2. 3. ^self)' andApply: #method.
	self assert: result isFinished.
	self assert: result bytecodeCount equals: 13.
	self assert: result bytecode size equals: 8.
	self assertBcAt: 8 is: SOMBCReturnLocal.! !

!ParseBytecodeTest methodsFor: 'tests'!
test05UnaryMessage

	self setUpParser: 'x = (1 test)' andApply: #method.
	self assert: result bytecode size equals: 5.
	self assertLiteralAt: 2 equals: #test.
	self assert: result bytecodeCount equals: 9.
! !

!ParseBytecodeTest methodsFor: 'tests'!
test06MultipleUnaryMessages

	self setUpParser: 'x = (1 test test2 test3)' andApply: #method.
	self assert: result bytecode size equals: 7.
	self assertLiteralAt: 3 equals: #test2.
	self assertLiteralAt: 4 equals: #test3.
	self assert: result bytecodeCount equals: 13.
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

!ParseBytecodeTest methodsFor: 'tests'!
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
	self assert: (bytecode at: 3) literalValue class equals: ByteSymbol.
	
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
