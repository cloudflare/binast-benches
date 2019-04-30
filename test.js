'use strict';

const jsfile = scriptArgs[0];
const binfile = jsfile.replace('.js', '.binjs');

const N = 100;

{
  const s = read(jsfile);

  // preheat
  for (var i = 0; i < 10; i++) {
    parse(s, { allowSyntaxParser: false });
  }

  const start = dateNow();

  for (var i = 0; i < N; i++) {
    parse(s, { allowSyntaxParser: false });
  }

  const end = dateNow();
  const avg = (end - start) / N;

  console.log(jsfile, avg.toFixed(3), 'ms');
}

{
  const b = read(binfile, 'binary').buffer;

  // preheat
  for (var i = 0; i < 10; i++) {
    parseBin(b);
  }

  const start = dateNow();

  for (var i = 0; i < N; i++) {
    parseBin(b);
  }

  const end = dateNow();
  const avg = (end - start) / N;

  console.log(binfile, avg.toFixed(3), 'ms');
}
