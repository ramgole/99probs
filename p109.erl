-module(p109).
-export([pack/1]).
-include_lib("eunit/include/eunit.hrl").

pack([]) -> [];
pack([[H|T1],H|T]) -> pack([[H,H|T1]|T]);
pack([H,H|T]) -> pack([[H,H]|T]);
pack([H|T]) -> [H|pack(T)].

pack_test() ->
  ?assertEqual([], pack([])),
  ?assertEqual([1], pack([1])),
  ?assertEqual([[1,1]], pack([1,1])),
  ?assertEqual([2,[1,1]], pack([2,1,1])),
  ?assertEqual([[3,3],1], pack([3,3,1])),
  ?assertEqual([[a,a,a,a],b,[c,c],[a,a],d,[e,e,e]], pack([a,a,a,a,b,c,c,a,a,d,e,e,e])).
