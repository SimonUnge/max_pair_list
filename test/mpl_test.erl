-module(mpl_test).

-include_lib("eunit/include/eunit.hrl").

first_test() ->
    Input = [2,3,4,5],
    ExpectedMax = 26,
    ?assertEqual(ExpectedMax, mpl:mpl(Input)).

second_test() ->
    Input = [-1, -3, 0, -5, 1, 5, 8],
    ExpectedMax = 56,
    ?assertEqual(ExpectedMax, mpl:mpl(Input)).

third_test() ->
    Input = [-1, 0, 1],
    ExpectedMax = 1,
    ?assertEqual(ExpectedMax, mpl:mpl(Input)).

forth_test() ->
    Input = [1, 1],
    ExpectedMax = 2,
    ?assertEqual(ExpectedMax, mpl:mpl(Input)).

fifth_test() ->
    Input = [0,1,2,3,4,5],
    ExpectedMax = 27,
    ?assertEqual(ExpectedMax, mpl:mpl(Input)).

sixth_test() ->
    Input = [],
    ExpectedMax = 0,
    ?assertEqual(ExpectedMax, mpl:mpl(Input)).
