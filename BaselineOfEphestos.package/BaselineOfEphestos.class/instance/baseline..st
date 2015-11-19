as yet unclassified
baseline: spec
    <baseline>
    spec 
      for: #common
      do: [spec baseline: 'SmaCC-Python' with: [ spec repository: 'github://ThierryGoubier/SmaCC' ];import:'SmaCC-Python'.
spec package: 'Ephestos' with: [ spec requires: 'SmaCC-Python' ] ].