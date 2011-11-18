-module(p112).
-export([decode/1]).
-include_lib("eunit/include/eunit.hrl").

decode([]) -> [];
decode([[2,H]|T]) -> [H,H|decode(T)];
decode([[K,H]|T]) -> decode([[K-1, H],H|T]);
decode([H|T]) -> [H|decode(T)].


decode_test() ->
  ?assertEqual([], decode([])),
  ?assertEqual([1], decode([1])),
  ?assertEqual([1,1], decode([[2,1]])),
  ?assertEqual([2,1,1], decode([2,[2,1]])),
  ?assertEqual([3,3,1],decode([[2,3],1])),
  ?assertEqual([a,a,a,a,b,c,c,a,a,d,e,e,e], decode([[4,a],b,[2,c],[2,a],d,[3,e]])).
