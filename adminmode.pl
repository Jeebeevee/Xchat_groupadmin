#!/usr/bin/perl
#
# Name:		adminmode.pl
# Version:	0.1
# Author:	Jeebeevee
# Date:		2015-12-29
# Description:	opens a query tab and place notice send to the user in this tab.
#

# Basic load 
use strict;
use warnings;
use Xchat qw( :all );

# version
my $NAME    = 'UserIRC-admin (he)xChat';
my $VERSION = '0.1';

register($NAME, $VERSION, 'UserIRC-admin (he)xChat ontwikkeld door Jeebeevee voor Scoutlink');
prnt("Geladen $NAME $VERSION");

# Start script 
admin_startup();

#use hook
foreach ('Channel Notice', 'Notice') {
        hook_print($_, \&getNotice);
}

# get the notice to the tab
sub getNotice {
	
}

#open tab for notice
sub admin_startup {
	Xchat::command("query Usermonitor");
}
