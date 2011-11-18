-module(p104).
-export([list_length/1]).
-include_lib("eunit/include/eunit.hrl").

list_length(L) -> list_length(L, 0).

list_length([], Acc) -> Acc;
list_length([_|T], Acc) -> list_length(T, Acc+1). 

list_length_test() ->
  ?assertEqual(0, list_length([])),
  ?assertEqual(1, list_length([1])),
  ?assertEqual(2, list_length([2,1])),
  ?assertEqual(3, list_length([3,2,1])),
  ?assertEqual(4, list_length([4,3,2,1])).
