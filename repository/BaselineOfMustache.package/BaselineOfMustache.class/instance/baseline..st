baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec package: 'JSON' with: [
				spec
					file: 'JSON-PaulDeBruicker.39';
					repository: 'https://squeaksource.blueplane.jp/AsLegacyLibs' ].
		spec 
			package: 'Mustache-Core';
			package: 'Mustache-Tests' with: [
				spec requires: #('Mustache-Core' ). ];
			package: #'Mustache-Cli' with: [
				spec requires: #('JSON' ). ].
		spec 
			group: 'Core' with: #('Mustache-Core' );
			group: 'Tests' with: #('Mustache-Tests' );
			group: 'default' with: #('Core' 'Tests' #'Mustache-Cli' ). ].
