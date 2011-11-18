-module(p105).
-export([reverse/1]).
-include_lib("eunit/include/eunit.hrl").

reverse(L) -> reverse(L, []).

reverse([], Acc) -> Acc;
reverse([H|T], Acc) -> reverse(T, [H|Acc]).


reverse_test() ->
  ?assertEqual([], reverse([])),
  ?assertEqual([1], reverse([1])),
  ?assertEqual([1,2], reverse([2,1])),
  ?assertEqual([1,2,3], reverse([3,2,1])),
  ?assertEqual([1,2,3,4], reverse([4,3,2,1])).
