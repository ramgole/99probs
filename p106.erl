-module(p106).
-export([palindrome/1]).
-include_lib("eunit/include/eunit.hrl").

palindrome(L) -> palindrome(L,[]).

palindrome([],_) -> false;
palindrome([_|[]],[]) -> true;
palindrome([_|L],L) -> true;
palindrome(L,L) -> true;
palindrome([H|T], Acc) -> palindrome(T, [H|Acc]).


palindrome_test() ->
  ?assertEqual(false, palindrome([])),
  ?assertEqual(true, palindrome([1])),
  ?assertEqual(false, palindrome([2,1])),
  ?assertEqual(true, palindrome([1,2,1])),
  ?assertEqual(true, palindrome([1,2,2,1])),
  ?assertEqual(true, palindrome([3,1,2,1,3])),
  ?assertEqual(false, palindrome([4,3,2,1])).
