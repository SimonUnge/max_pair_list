REBAR=./rebar

all: compile

compile:
	@$(REBAR) compile

tests: eunit

eunit:
	@$(REBAR) skip_deps=true eunit

dialyze:
	@dialyzer --src src/*.erl test/*.erl

clean:
	@$(REBAR) clean
	@rm -r ebin/ || true
