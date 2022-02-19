#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $q = new CGI;

my %host=('Jan','21','Sue','35','Paul','43','Sam','39','George','54');
my @names = ( 'Adam', 'Zuzka', 'Jan', 'Hana', 'Eva');
my @numbers = ( '1', '12', '5', '54', '105' );

sub tabulka1 {
  my $tablecontent=[$q->th(['value'])];
  for my $el (sort @names ) {
     push @$tablecontent, $q->td( [ $el ] );
}
print $q->table( { border => 2, -width => '100%'},
                   $q->Tr( $tablecontent),
                 );
}

sub tabulka2 {
  my $tablecontent=[$q->th(['value'])];
  for my $sorted (sort {$a <=> $b} @numbers ) {
     push @$tablecontent, $q->td( [ $sorted ] );
}
print $q->table( { border => 2, -width => '100%'},
                   $q->Tr( $tablecontent),
                 );
}

sub tabulka3 {
  my $tablecontent=[$q->th(['key', 'value'])];
  for (sort keys %host) {
    push @$tablecontent,  $q->td([ $_, $host{$_}  ]) ;
  }
print $q->table( { border => 1, -width => '100%'},
                   $q->Tr( $tablecontent),
                 );
}

sub tabulka4 {
  my $tablecontent1=[$q->th(['key', 'value'])];
  for my $name ( sort { $host{ $a} <=> $host{ $b } } keys %host ) {
     push @$tablecontent1, $q->td( [ $name, $host{ $name } ] );
}
print $q->table( { border => 1, -width => '100%'},
                   $q->Tr( $tablecontent1),
                 );
}


print $q->header;
print $q->start_html(-bgcolor=>'green');
print $q->h1( 'Task 1' );
print "\t\t<a href=\"index.pl\">Go back</a><br>\r\n";
print'name array sorted alphabeticaly';
tabulka1();
print'numbers array sorted from lowest to the highest';
tabulka2();
print'hash sorted by names alphabeticaly';
tabulka3();
print'hash sorted by values from lowest to the highest';
tabulka4();
print $q->end_html;

1;
