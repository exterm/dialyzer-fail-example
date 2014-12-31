.PHONY: dialyze compile clean

compile:
	erlc +debug_info *.erl

PLT:
	dialyzer --build_plt --output_plt PLT --apps erts kernel stdlib

dialyze: compile PLT
	dialyzer --no_native --plt PLT -Wunmatched_returns -Werror_handling ./

clean:
	rm -f *.beam
