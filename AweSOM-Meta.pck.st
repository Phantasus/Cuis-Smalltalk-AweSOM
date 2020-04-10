'From Cuis 5.0 [latest update: #4103] on 10 April 2020 at 10:05:54 pm'!
'Description '!
!provides: 'AweSOM-Meta' 1 0!
SystemOrganization addCategory: #'AweSOM-Meta'!


!classDefinition: #SOMTools category: #'AweSOM-Meta'!
Object subclass: #SOMTools
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Meta'!
!classDefinition: 'SOMTools class' category: #'AweSOM-Meta'!
SOMTools class
	instanceVariableNames: 'basePath'!


!SOMTools class methodsFor: 'class path'!
basePath
	basePath ifNil: [ 
		basePath := Smalltalk platform currentWorkingDirectoryPath, '/core-lib' ].
	
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

!SOMTools class methodsFor: 'recompiling'!
recompile

	"SOMTools recompile"
	(PackageInfo named: 'AweSOM') classes
		do: [:class | class compileAll]
		displayingProgress: 'Recompiling AweSOM'.! !

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
