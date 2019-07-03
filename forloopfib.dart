 // fibonacci series

main() {

// length required 
var n = 20,i,sl,l = 1; 

for(i = 0 ; i < n ; i++ ) {
	if(i==0 || i==1) {		
		sl = l	;
	}
	else {
		var newval = sl+l;
		sl = l;
		l = newval;		
	}		
	print(l);
}

}