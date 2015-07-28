# ragefinder
Analyze a source tree by words that indicate programmer rage.  An impractical bash script.

FAQ:
====

Why did you write this?
-----------------------
I needed a project that fit the following constraints:
 1.) It could be reasonably completed in an hour and a half.
 2.) It could serve as a vehicle for me to learn more about bash and shell scripting generally.
 3.) It would be amusing.
 4.) I could come up with the project in 10m or less.
This project is the result of my demented heuristics run against that constraint satisfaction problem.

In Bash?
--------
Yeah.  Because the whole point was to work on something that would broaden my bash skills.  And this seems like it's actually a pretty good project for that.

Why didn't you include *my favorite profane word*?
--------------------------------------------------
I'm afraid I'm just not that good at swearing.  I probably didn't think of your great word.  From what I can tell, quality profanity takes practice.

This offends me
---------------
Hmmm...  Ok.  Welcome to the internet!  You're going to hate it here.


TODO:
=====
	* Actually load profanity from a profanity file
	* Ability to exclude files (exclude)
	* Ability to specificly include files
	* Group and count swear words
	* Attribute swear words to commiter
		* Support svn and git
		* Group and count swear words by author
	* Nicer output
		* Various statistical information
		* Progress bar
		* Support for various groupings/etc.
		* Color.  What's a CLI tool without a few ANSI escapes?

