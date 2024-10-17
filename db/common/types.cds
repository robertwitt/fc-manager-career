namespace common;

type Rating : Integer @assert.range: [
  1,
  99
];

type Url    : String(2048);
