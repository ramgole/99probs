-module(p116).
-export([drop/2]).
-include_lib("eunit/include/eunit.hrl").

drop(L,K) -> drop(L,K,K).

drop([],_,_) -> [];
drop([_|T], 1, K) -> drop(T,K,K);
drop([H|T], K, M) -> [H|drop(T,K-1, M)].

drop_test() ->
  ?assertEqual([], drop([],4)),
  ?assertEqual([1], drop([1],2)),
  ?assertEqual([2], drop([2,1],2)),
  ?assertEqual([2,2], drop([2,2,1],3)),
  ?assertEqual([a,c,d],drop([a,b,c,c,d],2)),
  ?assertEqual([a,b,c,d],drop([a,b,c,c,d],3)),
  ?assertEqual([a,b,d,e,g,h,k],drop([a,b,c,d,e,f,g,h,i,k],3)).
