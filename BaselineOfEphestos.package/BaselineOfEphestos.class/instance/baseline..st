baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCC' with: [ spec repository: 'github://ThierryGoubier/SmaCC' ];
<<<<<<< HEAD
				import: 'SmaCC' provides: #('default').
=======
				import: 'SmaCC'.
>>>>>>> a3a4e43b007521eda6d6df560b9d608b46ce8290
			spec
				baseline: 'ChronosManager'
					with: [ spec repository: 'github://kilon/ChronosManager' ];
				import: 'ChronosManager' provides: #('default').
			spec
				baseline: 'Octopus' with: [ spec repository: 'github://kilon/Octopus' ];
				import: 'Octopus'provides: #('default').
			spec
				baseline: 'CPP' with: [ spec repository: 'github://kilon/CPP' ];
				import: 'CPP' provides: #('default').
			spec
				baseline: 'Nireas' with: [ spec repository: 'github://kilon/Nireas' ];
				import: 'Nireas' provides: #('default').
			spec
<<<<<<< HEAD
				baseline: 'Atlas' with: [ spec repository: 'github://kilon/Atlas' ];
				import: 'Atlas' provides: #('default').
			spec
=======
>>>>>>> a3a4e43b007521eda6d6df560b9d608b46ce8290
				package: 'Ephestos'
				with: [ spec requires: 'default' ] ]
