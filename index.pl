#! /usr/bin/perl

use strict;
use warnings;
use CGI;

my $q = new CGI;

print $q->header;
print $q->start_html(-bgcolor=>'green');
print $q->h1( 'Task field' );

print "\t\t<a href=\"ukol1.pl\">Ukol1.pl</a><br>\r\n";

print "\t\t<a href=\"ukol2.pl\">Ukol2.pl</a><br>\r\n";

print "\t\t<a href=\"ukol3.pl\">Ukol3.pl</a><br>\r\n";

print "\t\t<a href=\"ukol4.pl\">Ukol4.pl</a><br>\r\n";

print "\t\t<a href=\"ukol5.pl\">Ukol5.pl</a><br>\r\n";

print "\t\t<a href=\"ukol6.pl\">Ukol6.pl</a><br>\r\n";

print "\t\t<a href=\"ukol7.pl\">Ukol7.pl</a><br>\r\n";

print "\t\t<a href=\"ukol8.pl\">Ukol8.pl</a><br>\r\n";

print "\t\t<a href=\"ukol9.pl\">Ukol9.pl</a><br>\r\n";

print "\t\t<a href=\"ukol10.pl\">Ukol10.pl</a><br>\r\n";

print $q->end_html;