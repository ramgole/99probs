-module(p121).
-export([insert_at/3]).
-include_lib("eunit/include/eunit.hrl").

insert_at([H|T], Input, 1) -> [Input, H|T];
insert_at([H|T], Input, K) -> [H|insert_at(T, Input, K-1)].

insert_at_test() ->
  ?assertEqual([a,b,b,c,d,e,f,g,h,i,j,k], insert_at([a,b,c,d,e,f,g,h,i,j,k], b, 2)),
  ?assertEqual([a,alpha, b, c,d], insert_at([a,b,c,d], alpha, 2)).

