-module(test_string).

-export([f/0, g/0]).

%% test case for string literal (ASCII)
f() -> "abc%/_hoge".

%% test case for string literal (japanese)
g() -> "いろはにほへとちるぬるを".
