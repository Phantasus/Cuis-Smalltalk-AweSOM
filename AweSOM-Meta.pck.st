'From Cuis 5.0 [latest update: #4526] on 17 February 2021 at 8:01:31 pm'!
'Description The base package of the AweSOM (Simple object machine) implementation,
which contains shared base functionality.

Original authors: Arvid Heise, Matthias Kleine, Robert Krahn, Michael Haupt.
License: MIT'!
!provides: 'AweSOM-Meta' 1 5!
!requires: 'Cuis-Base' 50 4103 nil!
SystemOrganization addCategory: 'AweSOM-Meta'!


!classDefinition: #SOMTools category: 'AweSOM-Meta'!
Object subclass: #SOMTools
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Meta'!
!classDefinition: 'SOMTools class' category: 'AweSOM-Meta'!
SOMTools class
	instanceVariableNames: 'basePath'!


!SOMTools class methodsFor: 'class path' stamp: 'jpb 4/10/2020 23:01:17'!
basePath
	basePath ifNil: [ 
		basePath := Smalltalk imagePath, '/core-lib' ].
	
	^ basePath! !

!SOMTools class methodsFor: 'class path'!
basePath: aString
	"Sets the base path for SOMUniverse.
	 Example:
		SOMTools basePath: '/home/.../AweSOM/core-lib'
	"
	basePath := aString! !

!SOMTools class methodsFor: 'class path'!
basicInterpreterTestClassPath
	| bp |
	bp := self basePath.

	^ { bp, '/Smalltalk'.
		 bp, '/TestSuite'.
		 bp, '/TestSuite/BasicInterpreterTests' }
! !

!SOMTools class methodsFor: 'class path'!
basicSmalltalkClassPath
	| bp |
	bp := self basePath.

	^ { bp, '/Smalltalk' }! !

!SOMTools class methodsFor: 'class path' stamp: 'jpb 2/17/2021 19:59:16'!
findTestArgumentsByTest: aTest
	^{'-cp'. 
		self basePath , '/Smalltalk' , ':' , self basePath ,'/TestSuite'.
		'TestHarness.som'.
		aTest}.! !

!SOMTools class methodsFor: 'class path'!
setClassPathBase: aBasePath

	"SOMTools setClassPathBase: SmalltalkImage current imagePath , '/SOM'"
	| standard examples dir |
	basePath := aBasePath.
	
	standard := {basePath , '/Smalltalk'.
				   basePath , '/TestSuite'.
				   basePath , '/SUnit'}.
	
	dir := (basePath , '/Examples') asFileReference.
	examples := dir allDirectories
		collect: [:ea | ea asAbsolute fullName ].
	^ SOMUniverse classPaths: standard , examples.! !

!SOMTools class methodsFor: 'tools'!
loc

	| pi |
	pi := PackageInfo named: 'AweSOM'.
	^ pi classes inject: 0 into: [:sum :class | sum + class linesOfCode].
! !

!SOMTools class methodsFor: 'tools'!
locWithoutTests

	| pi |
	pi := PackageInfo named: 'AweSOM'.
	^ (pi classes
		reject: [:class | class inheritsFrom: TestCase])
		inject: 0 into: [:sum :class | sum + class linesOfCode].
! !

!SOMTools class methodsFor: 'recompiling'!
recompile

	"SOMTools recompile"
	(PackageInfo named: 'AweSOM') classes
		do: [:class | class compileAll]
		displayingProgress: 'Recompiling AweSOM'.! !

!SOMTools class methodsFor: 'as yet unclassified'!
parseBenchmarkString: string

	"Extracts the numbers from the output"
	^ (string
		regex: 'RESULT\: [0-9]+ ms|All tests completed \([0-9]+ ms\)'
		matchesCollect: [:m | (m allRegexMatches: '[0-9]+') first])
		inject: ''
		into: [:all :ea | all , String cr , ea].
	! !

!SOMTools class methodsFor: 'as yet unclassified'!
usefulStuff

"
SOMUniverse new start: {'TestHarness'}.
SOMUniverse new start: {'MoreBenchmarks'}.
SOMUniverse new start: {'Hello'}.
SOMUniverse new start: {'Echo'. '123'}.
SOMUniverse new start: {'StringTest'}.
SOMUniverse new start: {'All'}.
u := SOMUniverse new.
u eval: '(1 + 2) asString println'.
[u loadAndStoreFromSource: SOMBenchmarkRunner tinyBenchmarkClass] timeToRun.

"! !

!SOMTools class methodsFor: 'linting'!
lintOnClasses: classes

	| env |
	env := ClassEnvironment
		onEnvironment: BrowserEnvironment new
		classes: classes.
	ORLintBrowser
		openRule: RBCompositeLintRule allRules
		environment: env.! !

!SOMTools class methodsFor: 'fileout'!
fileout

	| cs pi |
	cs := ChangeSet newChangeSet.
	pi := PackageInfo named: 'AweSOM'.
	pi classes do: [:ea | cs addClass: ea].
	pi methods do: [:ea |
		cs
			noteNewMethod: ea compiledMethod
			forClass: ea actualClass
			selector: ea methodSymbol
			priorMethod: nil].
	cs fileOut.! !

!Object methodsFor: '*AweSOM-Meta' stamp: 'jpb 4/11/2020 11:06:49'!
isSOMObject
	^ false! !

!BlockClosure methodsFor: '*AweSOM-Meta' stamp: 'jpb 4/10/2020 23:20:48'!
doWhileTrue: conditionBlock
	"Evaluate the receiver once, then again as long the value of conditionBlock is true."
 
	| result |
	[result := self value.
	conditionBlock value] whileTrue.

	^ result! !

!SequenceableCollection methodsFor: '*AweSOM-Meta' stamp: 'jpb 4/11/2020 11:04:50'!
doWithIndex: aBlock2
	"Support Set enumeration with a counter, even though not ordered"
	| index |
	index := 0.
	self do: [:item | aBlock2 value: item value: (index := index+1)]! !

!String methodsFor: '*AweSOM-Meta' stamp: 'jpb 4/11/2020 11:03:45'!
split: aString 
	^aString findTokens: self ! !
