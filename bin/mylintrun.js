/* This is enhanced and modified code taken from Ian Bicking's blog post of
   2005-08-19 here:
   http://blog.ianbicking.org/jslint-command-line.html
*/

/* SpiderMonkey globals */
/*global environment, load, JSLINT, print, readline */
var home = arguments[1].replace(/^\s+|\s+$/g,"");
load(home+"/.vim/lib/jslint.js");

var filename = arguments[0];
var body = "";
var line;
var blcount = 0;
while (true) {
	line = readline();
	body = body + line + "\n";
	// HACK
	// cant figure out how to tell EOF
	// from a normal blank line so arbitrarily
	// count 100 sequential blank lines and
	// assume we have finished
	if (typeof(line) != 'string') {
		break;
	}

	if (line.length === 0) {
		// blank line, so increment
		blcount = blcount + 1;
		if (blcount >= 100) {
			break;
		}
	}
	else {
		// not blank, so reset
		blcount = 0;
	}
}

// Good parts minus white space
boolOptions = {
	bitwise: true,
	// if bitwise operators should not be allowed
	eqeqeq: false,
	// if === should be required
	glovar: true,
	// if HTML fragments should be allowed
	regexp: true,
	// if the . should not be allowed in regexp literals
	undef: false,
	// if variables should be declared before used
	//	white      : true, // if strict whitespace rules apply
	browser: false,
	// if the standard browser globals should be predefined
	plusplus: false,
	// if increment/decrement should not be allowed
	nomen: true,
	// if names should be checked
};

var result = JSLINT(body, boolOptions);
if (!result) {
	for (var i = 0; i < JSLINT.errors.length; i++) {
		obj = JSLINT.errors[i];
		// print ( obj.toSource() ); // DEBUG
		//print ( (obj["line"] + 1) + ":" + (obj["character"] + 1) + ":" + obj["reason"] );
		print(filename + ":" + (obj["line"]) + ":" + (obj["character"] + 1) + ":" + obj["reason"]);
	}
}

