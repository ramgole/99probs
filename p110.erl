-module(p110).
-export([encode/1]).
-include_lib("eunit/include/eunit.hrl").

encode([]) -> [];
encode([[K,H],H|T]) -> encode([[K+1,H]|T]);
encode([[K,H]|T]) -> [[K,H]|encode(T)];
encode([H|T]) -> encode([[1,H]|T]).

encode_test() ->
  ?assertEqual([], encode([])),
  ?assertEqual([[1,1]], encode([1])),
  ?assertEqual([[2,1]],encode([1,1])),
  ?assertEqual([[1,2],[2,1]], encode([2,1,1])),
  ?assertEqual([[2,3],[1,1]], encode([3,3,1])),
  ?assertEqual([[4,a],[1,b],[2,c],[2,a],[1,d],[3,e]], encode([a,a,a,a,b,c,c,a,a,d,e,e,e])).
