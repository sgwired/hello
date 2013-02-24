#/usr/bin/perl -w
%words = qw(
    fred camel
    barney llama
    betty alpaca
    wilma alpaca
 );



print "What is your name? ";
$name = <STDIN>;
chomp ($name);
if ($name =~ /^randal\b/i) {
   print "Hello, Randal! How good of you to be here!\n";
} else {
   print "Hello, $name!\n";
   $secretword = $words{$name};
   print "What is your seceret word? ";
   $guess = <STDIN>;
   chomp ($guess);
   while ($guess ne $secretword) {
      print "Wrong, try again. What is the secretword? ";
      $guess = <STDIN>;
      chomp ($guess);
    }
} 