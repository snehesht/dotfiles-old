
# Only support single files for now
func secdel(){
    local tmp=$(randstr)
	mv $1 $tmp
	shred $tmp
	rm $tmp
}
