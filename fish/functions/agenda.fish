# Defined in /tmp/fish.vPOtra/agenda.fish @ line 2
function agenda --description 'alias agenda=gcalcli agenda'
	gcalcli --calendar "Peter Thorin"#green --calendar "Gemensam"#green --calendar "SpeedLedger"#default agenda $argv;
end
