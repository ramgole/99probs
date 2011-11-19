-module(p115).
-export([dupli/2]).
-include_lib("eunit/include/eunit.hrl").

dupli(L,K) -> dupli(L,K,K).

dupli([],_,_) -> [];
dupli([H|T], 1, K) -> [H|dupli(T,K,K)];
dupli([H|T], K, M) -> [H|dupli([H|T],K-1, M)].

dupli_test() ->
  ?assertEqual([], dupli([],4)),
  ?assertEqual([1,1], dupli([1],2)),
  ?assertEqual([2,2,1,1], dupli([2,1],2)),
  ?assertEqual([2,2,2,2,2,2,1,1,1], dupli([2,2,1],3)),
  ?assertEqual([a,a,b,b,c,c,c,c,d,d],dupli([a,b,c,c,d],2)),
  ?assertEqual([a,a,a,b,b,b,c,c,c,c,c,c,d,d,d],dupli([a,b,c,c,d],3)).
