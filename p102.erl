-module(p102).
-export([second_last/1]).
-include_lib("eunit/include/eunit.hrl").

second_last([]) -> nil;
second_last([_|[]]) -> nil;
second_last([X,_|[]]) -> X;
second_last([_|T]) -> second_last(T).


second_last_test() ->
  ?assertEqual(nil, second_last([])),
  ?assertEqual(nil, second_last([1])),
  ?assertEqual(2, second_last([2,1])),
  ?assertEqual(2, second_last([3,2,1])),
  ?assertEqual(2, second_last([4,3,2,1])).
