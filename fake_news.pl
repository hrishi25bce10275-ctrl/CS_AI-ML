% -----------------------------
% Fake News Detection in Prolog
% -----------------------------

% Known fake keywords
fake_keyword("shocking").
fake_keyword("click here").
fake_keyword("breaking!!!").
fake_keyword("100% cure").
fake_keyword("guaranteed").
fake_keyword("viral").

% Trusted sources
trusted_source("bbc").
trusted_source("ndtv").
trusted_source("the hindu").
trusted_source("reuters").

% Rule: Check if text contains a fake keyword
contains_fake_keyword(Text) :-
    fake_keyword(Word),
    sub_string(Text, _, _, _, Word).

% Rule: Check if source is trusted
is_trusted(Source) :-
    trusted_source(Source).

% Rule: Detect fake news
fake_news(Text, Source) :-
    contains_fake_keyword(Text),
    \+ is_trusted(Source).

% Rule: Detect real news
real_news(Text, Source) :-
    is_trusted(Source),
    \+ contains_fake_keyword(Text).

% Default case (uncertain)
uncertain(Text, Source) :-
    \+ fake_news(Text, Source),
    \+ real_news(Text, Source).

% Main predicate
detect_news(Text, Source, Result) :-
    fake_news(Text, Source) -> Result = 'Fake News';
    real_news(Text, Source) -> Result = 'Real News';
    Result = 'Uncertain'.
