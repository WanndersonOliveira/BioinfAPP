use strict;
use warnings;

main();

sub main(){
	my $seq;
	my @seqdna;
	
	print("Transcrição de DNA");
	print("\n\nDigite a sequência de DNA:");
	$seq = <STDIN>;
	$seq = uc($seq);
	@seqdna = split(//, $seq);
	
	for(my $i = 0; $i < 30; $i++){
		print("");
	}
	
	print("DNA: ", $seq);
	print("");
	print("RNA: ", transcricao(@seqdna));
	print("");
}

sub transcricao(){
	my @seqrna;
	
	my $i = 0;
	foreach my $nuc (@_){
		if($nuc eq "A"){
			$seqrna[$i] = "U";
		} elsif($nuc eq "T"){
			$seqrna[$i] = "A";
		} elsif($nuc eq "C"){
			$seqrna[$i] = "G";
		} elsif($nuc eq "G"){
			$seqrna[$i] = "C";
		}
		
		$i++;
	}
	
	return @seqrna;
}