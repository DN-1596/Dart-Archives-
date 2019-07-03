// Custom Exception Handling - Bank Example 

class chequebounceexception implements Exception {
	return_error() => "Your Cheque has bounced due to unavailability of funds"; 
}

process_cheque_amt(cheque_amt,cur_bal) => (cheque_amt > cur_bal) ? throw new chequebounceexception() : cur_bal-cheque_amt; 
main() {
	var cur_bal = 100 ; 
	var cheque_amt = 160; 
	
	try {
		print("Cheque processed! \nAvailable Balance = ${process_cheque_amt(cheque_amt,cur_bal)}");	
	} catch(e) {
		print(e.return_error());
	} finally {
		print("\n**Thank you for using our services**");
	}
	
}

 