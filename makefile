# Règle générique pour assembler et lier
asm32/% asm64/%:
	$(eval TYPE=$(firstword $(subst /, ,$@)))
	$(eval NAME=$(notdir $@))
	$(eval ASFLAGS=$(if $(findstring asm32,$@),--32,--64))
	$(eval LDFLAGS=$(if $(findstring asm32,$@),-m elf_i386,))

	as $(ASFLAGS) -o $(TYPE)/$(NAME).o $(TYPE)/$(NAME).s
	ld $(LDFLAGS) -o $(TYPE)/$(NAME) $(TYPE)/$(NAME).o
	./$(TYPE)/$(NAME)

clean:
	find asm32/ asm64/ -type f ! -name "*.s" -exec rm -f {} +
