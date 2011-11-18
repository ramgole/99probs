-module(p1).
-export([last/1]).
-include_lib("eunit/include/eunit.hrl").

last([]) -> nil;
last([X|[]]) -> X;
last([_|T]) -> last(T).


last_test() ->
  ?assertEqual(nil, last([])),
  ?assertEqual(1, last([1])),
  ?assertEqual(1, last([2,1])),
  ?assertEqual(1, last([3,2,1])),
  ?assertEqual(1, last([4,3,2,1])).
