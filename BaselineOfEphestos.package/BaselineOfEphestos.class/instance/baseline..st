baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCC-Python' with: [ spec repository: 'github://ThierryGoubier/SmaCC' ];
				import: 'SmaCC-Python'.
			spec
				baseline: 'ChronosManager'
					with: [ spec repository: 'github://kilon/ChronosManager' ];
				import: 'ChronosManager'.
			spec
				baseline: 'Octopus' with: [ spec repository: 'github://kilon/Octopus' ];
				import: 'Octopus'.
			spec
				baseline: 'CPP' with: [ spec repository: 'github://kilon/CPP' ];
				import: 'CPP'.
			spec
				baseline: 'Nireas' with: [ spec repository: 'github://kilon/Nireas' ];
				import: 'Nireas'.
			spec
				package: 'Ephestos'
				with: [ spec requires: #('SmaCC-Python' 'ChronosManager' 'Octopus' 'CPP' 'Nireas') ] ]
