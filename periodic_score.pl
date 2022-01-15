#!/usr/bin/perl
use warnings;
use strict;

my %Joker=(
        A => 56.90,
        R => -100,
        N => -34.2,
        D => -43.30,
        C => 54.74,
        Q => -31.82,
        E => -34.25,
        G => 35.28,
        H => -19.00,
        I => 100,
        L => 89.54,
        K => -45.62,
        M => 59.72,
        F => 77.69,
        P => 17.20,
        S =>  6.70,
        T => 11.73,
        W => 41.78,
        Y => 21.32,
        V => 89.81
);

sub score{
	my ($seq)=@_;
	my $jscore;
	for(my $j=0;$j<length($seq)-2;$j++){
		my $AA1=substr($seq,$j,1);
		my $AA2=substr($seq,$j+2,1);
		$jscore+=abs($Joker{$AA1}-$Joker{$AA2});
	} 
	return sprintf("%.3f",$jscore/(length($seq)-2));
}


my $record={
        header=>"",sequence=>""
};
while(my $line=<>){
        chomp $line;
        if($line=~/>/){
                if($record->{sequence} ne ""){
                        printResults($record);
                        $record->{sequence}="";
                }
                $record->{header}=$line;
        }else{
                $record->{sequence}.=$line;
        }
}

sub printResults{
        my ($record)=@_;
        print $record->{header},": ";
        print score($record->{sequence}),"\n";
}