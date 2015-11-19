as yet unclassified
baseline: spec
    <baseline>
    spec 
      for: #pharo
      do: [spec baseline: 'SmaCC' with: [ spec repository: 'github://ThierryGoubier/SmaCC' ];import:'SmaCC'.
spec package: 'Ephestos' with: [ spec requires: #('SmaCC') ] ].