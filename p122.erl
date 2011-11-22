-module(p122).
-export([range/2]).
-include_lib("eunit/include/eunit.hrl").

range(I,J) -> range(I,J,[]).

range(I,I, Acc) -> [I|Acc];
range(I,J, Acc) -> range(I, J-1, [J|Acc]).


range_test() ->
	?assertEqual([2,3,4], range(2,4)),
	?assertEqual([4,5,6,7,8,9], range(4,9)).

