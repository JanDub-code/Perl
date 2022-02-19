#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $q = new CGI;

my %host=('Jan','21','Sue','35','Paul','43','Sam','39','George','54');

my $filename = '/home/dub/html/list.txt';

my @seznam =();

open(FH, '<', $filename) or die $!;
while(<FH>){
   push @seznam, "$_\n";
}
close(FH);

my $l = join(",",@seznam);
my @l1 = split(',',$l);

sub txt {
  my $tablecontent=[$q->th(['value'])];
  for my $el ( @l1 ) {
     push @$tablecontent, $q->td( [ $el ] );
}
print $q->table( { border => 2, -width => '100%'},
                   $q->Tr( $tablecontent),
                 );
}
print $q->header;
print $q->start_html(-bgcolor=>'green');
print $q->h1( 'Task 2' );
print "\t\t<a href=\"index.pl\">Go back</a><br>\r\n";
print'printing out data from list.txt';
txt();
print $q->end_html;
1;
