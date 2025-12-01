echo "Change myarchy-screenrecord to use gpu-screen-recorder"
myarchy-pkg-drop wf-recorder wl-screenrec

# Add slurp in case it hadn't been picked up from an old migration
myarchy-pkg-add slurp gpu-screen-recorder
