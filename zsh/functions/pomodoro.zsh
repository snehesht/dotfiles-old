func pomodoro(){
while true
	do
		sleep $1
		play --no-show-progress --null --channels 1 synth .3 sine 250
done
}
