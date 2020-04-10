'From Cuis 5.0 [latest update: #4103] on 10 April 2020 at 10:05:55 pm'!
'Description '!
!provides: 'AweSOM-Test' 1 0!
SystemOrganization addCategory: #'AweSOM-Test'!


!classDefinition: #TestCaseWithUniverse category: #'AweSOM-Test'!
TestCase subclass: #TestCaseWithUniverse
	instanceVariableNames: 'universe'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AweSOM-Test'!
!classDefinition: 'TestCaseWithUniverse class' category: #'AweSOM-Test'!
TestCaseWithUniverse class
	instanceVariableNames: ''!


!TestCaseWithUniverse methodsFor: 'as yet unclassified'!
loadClazzes: classes 

	classes do: [:class | universe loadSystemClass: (universe globalAt: class)]! !

!TestCaseWithUniverse methodsFor: 'running'!
setUp
	super setUp.
	universe := SOMUniverse default new.
	universe initializeTestObjectSystem! !
