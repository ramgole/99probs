-module(p103).
-export([kth_element/2]).
-include_lib("eunit/include/eunit.hrl").

kth_element(_,K) when K =< 0 -> nil;
kth_element([], _) -> nil;
kth_element([H|_], 1) -> H;
kth_element([_|T], K) -> kth_element(T, K-1).

last_test() ->
  ?assertEqual(nil, kth_element([], 3)),
  ?assertEqual(nil, kth_element([1,2], 3)),
  ?assertEqual(a, kth_element([1,2,a], 3)),
  ?assertEqual(a, kth_element([1,2,a,4,5,6,7], 3)),
  ?assertEqual(nil, kth_element([1,2,a], -3)).
