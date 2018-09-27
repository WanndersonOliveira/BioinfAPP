#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

main();
#Algoritmo Bioinformática - Análise de constituição química do DNA/RNA.
sub main(){
     my $opcao;
     my $seq;
     my @seqn;
     
     print("Análise de constituição química de material genético\n\n");
     print("Qual é o material genético que você quer analisar?");
     print("\n1 - DNA;\n2 - RNA;\n");
     $opcao = <STDIN>;
     
     print("\n\nDigite a sequência: ");
     $seq = <STDIN>;
     $seq = uc($seq);
     @seqn = split(//, $seq);
     #print("\n$seqn[1]\n");
     
     if($opcao == 1){
          analiseDNA(@seqn);
     } elsif($opcao == 2){
          analiseRNA(@seqn);
     } else {
	print("Escolha errada!");
     }
     
     for(my $i = 0; $i < 30; $i++){
	print("");
     }
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
	print("Porcentagem guanina: $qtde[3]%\n");}

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
	print("Porcentagem guanina: $qtde[3]%\n");}
