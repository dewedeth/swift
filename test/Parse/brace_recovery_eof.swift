// RUN: %swift %s -parse -verify

// Make sure source ranges satisfy the verifier.
for foo in [1, 2] { // expected-note {{to match this opening '{'}}
  var x = foo
// expected-error@+1{{expected '}' at end of brace statement}}
