-module(p111).
-export([modified_encode/1]).
-include_lib("eunit/include/eunit.hrl").

modified_encode([]) -> [];
modified_encode([[K,H],H|T]) -> modified_encode([[K+1,H]|T]);
modified_encode([H,H|T]) -> modified_encode([[2,H]|T]);
modified_encode([[K,H]|T]) -> [[K,H]|modified_encode(T)];
modified_encode([H|T]) -> [H|modified_encode(T)].

modified_encode_test() ->
  ?assertEqual([], modified_encode([])),
  ?assertEqual([1], modified_encode([1])),
  ?assertEqual([[2,1]],modified_encode([1,1])),
  ?assertEqual([2,[2,1]], modified_encode([2,1,1])),
  ?assertEqual([[2,3],1], modified_encode([3,3,1])),
  ?assertEqual([[4,a],b,[2,c],[2,a],d,[3,e]], modified_encode([a,a,a,a,b,c,c,a,a,d,e,e,e])).
