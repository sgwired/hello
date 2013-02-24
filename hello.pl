#/usr/bin/perl -w
@words = qw(camel llama alpaca);
print "What is your name? ";
$name = <STDIN>;
chomp ($name);
if ($name eq "Randal") {
   print "Hello, Randal! How good of you to be here!\n";
} else {
   print "Hello, $name!\n";
   print "What is your seceret word? ";
   $guess = <STDIN>;
   chomp ($guess);
   $i =0; 
   $correct ="maybe";
   while ($correct eq "maybe") {
      if ($words[$i] eq $guess) {
         $correct ="yes";
      }elsif ($i < 2) {
        $i = $i +1;
      } else {
        print "Worng, try again. What is the secret word? ";
        $guess = <STDIN>;
        chomp ($guess);
        $i = 0;
      }
   }
}