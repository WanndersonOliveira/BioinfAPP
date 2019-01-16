package Bioinf;

sub complementacao{
	#Se o valor de $dna for 1 - a sequência é de DNA,
	#caso seja 2 - a sequência é de RNA mensageiro
	my $dna = shift;
	my @seq = @_;
	my $tipo_seq;
	my @seq_comp;

	if($dna == 1){
		foreach my $nuc (@seq){
			if($nuc eq "A"){
				push(@seq_comp, "T");
			} elsif($nuc eq "T"){
				push(@seq_comp, "A");
			}  elsif($nuc eq "C"){
				push(@seq_comp, "G");
			} elsif($nuc eq "G"){
				push(@seq_comp, "C");
			}
		}

		$tipo_seq = "DNA";
	} elsif($dna == 2){
		foreach my $nuc (@seq){
			if($nuc eq "A"){
				push(@seq_comp, "U");
			} elsif($nuc eq "U"){
				push(@seq_comp, "A");
			}  elsif($nuc eq "C"){
				push(@seq_comp, "G");
			} elsif($nuc eq "G"){
				push(@seq_comp, "C");
			}
		}

		$tipo_seq = "RNA";
	} else {
		print("Um erro ocorreu...");
	}

	print("Sequência: ". $tipo_seq);
	print("\n\nSequência base:\n");
	print(@seq);
	print("\nSequência complementar:\n");
	print(@seq_comp);
}

sub analiseRNA(){
	my $porc = 0;
	my $qtdeA = 0;
	my $qtdeC = 0;
	my $qtdeU = 0;
	my $qtdeG = 0;
	my $qtdeTot = 0;
        my @qtde = @_;
	

	foreach my $nuc (@_){
	    if($nuc eq "A"){
	    	$qtdeA++;
	    } elsif($nuc eq "U"){
	    	$qtdeU++;
	    } elsif($nuc eq "G"){
	    	$qtdeG++;
	    } elsif($nuc eq "C"){
	    	$qtdeC++;
	    }
	    $qtdeTot++;
	}
	
	#Porcentagem de A;
	$porc = ($qtdeA/$qtdeTot)*100;
	$qtde[0] = $porc;
	
	#Porcentagem de C;
	$porc = ($qtdeC/$qtdeTot)*100;
	$qtde[1] = $porc;
	
	#Porcentagem de T;
	$porc = ($qtdeU/$qtdeTot)*100;
	$qtde[2] = $porc;
	
	#Porcentagem de G;
	$porc = ($qtdeG/$qtdeTot)*100;
	$qtde[3] = $porc;
	
	for(my $i = 0; $i < 30; $i++){
		print("\n");
	}
	
		print("Resultado:\n\n");
	print("Porcentagem adenina: $qtde[0]%\n");
	print("Porcentagem citosina: $qtde[1]%\n");
	print("Porcentagem uracila: $qtde[2]%\n");
	print("Porcentagem guanina: $qtde[3]%\n");
}

sub analiseDNA(){
	my $porc = 0;
	my $qtdeA = 0;
	my $qtdeC = 0;
	my $qtdeT = 0;
	my $qtdeG = 0;
	my $qtdeTot = 0;
        my @qtde = @_;
	
	foreach my $nuc (@_){
	    if($nuc eq "A"){
	    	$qtdeA++;
	    } elsif($nuc eq "T"){
	    	$qtdeT++;
	    } elsif($nuc eq "G"){
	    	$qtdeG++;
	    } elsif($nuc eq "C"){
	    	$qtdeC++;
	    }
	    $qtdeTot++;
	}
	
	#Porcentagem de A;
	$porc = ($qtdeA/$qtdeTot)*100;;
	$qtde[0] = $porc;
	
	#Porcentagem de C;
	$porc = ($qtdeC/$qtdeTot)*100;;
	$qtde[1] = $porc;
	
	#Porcentagem de T;
	$porc = ($qtdeT/$qtdeTot)*100;
	$qtde[2] = $porc;
	
	#Porcentagem de G;
	$porc = ($qtdeG/$qtdeTot)*100;
	$qtde[3] = $porc;
	
	for(my $i = 0; $i < 30; $i++){
		print("\n");
	}
	
	        print("Resultado:\n\n");
	print("Porcentagem adenina: $qtde[0]%\n");
	print("Porcentagem citosina: $qtde[1]%\n");
	print("Porcentagem timina: $qtde[2]%\n");
	print("Porcentagem guanina: $qtde[3]%\n");
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

1;