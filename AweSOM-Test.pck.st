'From Cuis 5.0 [latest update: #4103] on 11 April 2020 at 4:20:32 pm'!
'Description The test package of the AweSOM (Simple object machine) implementation,
contains shared testing functionality.

Original authors: Arvid Heise, Matthias Kleine, Robert Krahn, Michael Haupt.
License: MIT'!
!provides: 'AweSOM-Test' 1 1!
!requires: 'Cuis-Base' 50 4103 nil!
!requires: 'AweSOM-Meta' 1 3 nil!
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
