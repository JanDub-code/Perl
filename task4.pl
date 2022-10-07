#! /usr/bin/perl

use strict;
use warnings;
use CGI;

my $q = new CGI;

my $file = '/home/dub/html/tabulka.csv';

my @seznam =();

open(FH, '<', $file) or die $!;
while(<FH>){
   push @seznam, "$_\n";
}
close(FH);

my $l = join(",",@seznam);
my @l1 = split(/,(?=(?:(?:[^"]*"){2})*[^"]*$)/,$l);



sub table{
    my $tablecontent1=[$q->th([])];
        push @$tablecontent1, $q->td( [@l1[0..4]] );
        push @$tablecontent1, $q->td( [@l1[5..9]] );
        push @$tablecontent1, $q->td( [@l1[10..14]] );
        push @$tablecontent1, $q->td( [@l1[15..19]] );
        push @$tablecontent1, $q->td( [@l1[20..24]] );
            print $q->table( { border => 2, -width => '100%'},
                   $q->Tr( $tablecontent1),
                 );
}

print $q->header;
print $q->start_html(-bgcolor=>'green');
print $q->h1( 'Task 3 ' );
print "\t\t<a href=\"index.pl\">Go back</a>\n";
print"I cant figure it out";
table();
print $q->end_html;
