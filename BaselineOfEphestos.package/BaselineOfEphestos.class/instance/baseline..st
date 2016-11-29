baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				preLoadDoIt: #preload:package:;
				postLoadDoIt: #postload:package:.
			spec
				baseline: 'SmaCC' with: [ spec repository: 'github://ThierryGoubier/SmaCC'];
				import: 'SmaCC' .
				
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
				baseline: 'BPY' with: [ spec repository: 'github://kilon/BPY' ];
				import: 'BPY' provides: #('default').
			spec
				package: 'Ephestos'
				with: [ spec requires: 'default' ; requires: 'SmaCC-Python'] ]
