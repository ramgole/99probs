-module(p107).
-export([flatten/1, flatten2/1]).
-include_lib("eunit/include/eunit.hrl").

flatten2([]) -> [];
flatten2([[]|T]) -> flatten2(T);
flatten2([[H|T1]|T]) -> flatten2([H|[T1|T]]);
flatten2([H|T]) -> [H|flatten2(T)].

flatten(L) -> lists:reverse(flatten(L,[])).

flatten([], L) -> L;
flatten([H|T], Acc) when is_list(H) -> flatten(T,flatten(H,Acc));
flatten([H|T],Acc) -> flatten(T,[H|Acc]). 


flatten_test() ->
  ?assertEqual([], flatten([])),
  ?assertEqual([1], flatten([1])),
  ?assertEqual([2,1], flatten([2,[1]])),
  ?assertEqual([3,2,1], flatten([[3,2],1])),
  ?assertEqual([4,3,2,1], flatten([4,[3,2],1])),
  ?assertEqual([a,b,c,d,e], flatten([a,[b,[c,d],e]])).

flatten2_test() ->
  ?assertEqual([], flatten2([])),
  ?assertEqual([1], flatten2([1])),
  ?assertEqual([2,1], flatten2([2,[1]])),
  ?assertEqual([3,2,1], flatten2([[3,2],1])),
  ?assertEqual([4,3,2,1], flatten2([4,[3,2],1])),
  ?assertEqual([a,b,c,d,e], flatten2([a,[b,[c,d],e]])).
