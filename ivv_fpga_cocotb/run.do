# keep file from closing
onfinish stop

# If a wave.do file exists, we add it
if { [file exists "./wave.do"] } {
    echo "Loading waveform file wave.do"
    do "./wave.do"
} else {
    echo "No wave.do found, adding default wave signals"
    add wave -r sim:/*
}

# Immediatly run simulation
run -all
