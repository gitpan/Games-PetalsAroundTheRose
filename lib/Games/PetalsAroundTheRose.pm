package Games::PetalsAroundTheRose;

use warnings;
use strict;

=head1 NAME

Games::PetalsAroundTheRose - Petals Around the Rose Game

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

Use the C<petalsaroundtherose> command instead.

=head1 WARNING

Don't look at the code for the solution. It will spoil half the fun
and it will only mean you gave up O:-)

=head1 HISTORY

I found this game at L<http://crux.baker.edu/cdavis09/roses.html>.
Since I had nothing better to do and my brain was melting already (too
much work), I decided to give myself a break and code it in Perl.

=head1 Instructions

1. Let the dice be rolled.

2. Enter how many petals you think are around the rose.

3. Hit "Enter" and see if you got it right.

4. Repeat steps 1-3 until you can get it right every time!

5. Once you have figured it out, don't spoil the fun for others...let
them figure it out for themselves!

=head1 Background

This bit written by Chris David:

I was introduced to "Petals Around the Rose" by Dr. Richard Duke at
the University of Michigan . Dr. Duke used to begin each of his
gaming/simulation courses with this exercise. While some students
would solve the problem right away, others would struggle all
semester. It had taken Dr. Duke well over a year himself, and he would
always explain that the smarter you were, the longer it took to figure
it out.

The game is quite simple. Only a basic understanding of math is
required and an open and creative mind. The game can be used as an
example of how different people look at the world differently, and how
these different ways of looking can yield different answers. In
"Petals Around the Rose" there is always one correct answer. The
problem is how we define the problem.

"Petals Around the Rose" is traditionally played with 5 six-sided
dice. I developed this version using Macromedia Flash as both an
exercise for me to learn Flash and as a way to share the game with the
world. Let me know what you think!

Chris can be reached at C<chris.davis@baker.edu>

=cut

our (@first_line, @second_line, @third_line);
BEGIN {
  our @first_line =  ('   ', '  .', '  .', '. .', '. .', '. .');
  our @second_line = (' . ', '   ', ' . ', '   ', ' . ', '. .');
  our @third_line =  ('   ', '.  ', '.  ', '. .', '. .', '. .');
}

sub _five_dice {
  map { int rand(5) } (1..5);
}

sub _total {
  my $total = 0;
  for (@_) {
    $total += (0,0,2,0,4,0)[$_]; #print "Total is now $total (die was $_)\n";
  }
  $total;
}

sub _display {
  "+---+---+---+---+---+\n|" .
  (join "|", map {$first_line[$_] } @_) .  "|\n|" .
  (join "|", map {$second_line[$_]} @_) .  "|\n|" .
  (join "|", map {$third_line[$_] } @_) .
  "|\n+---+---+---+---+---+\n";
}

=head1 AUTHOR

Jose Castro, C<< <cog@cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-games-petalsaroundtherose@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.  I will be notified, and then you'll automatically
be notified of progress on your bug as I make changes.

=head1 ACKNOWLEDGEMENTS

Chris Davis, for putting up this game in a website.

=head1 COPYRIGHT & LICENSE

Copyright 2005 Jose Castro, All Rights Reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of Games::PetalsAroundTheRose
