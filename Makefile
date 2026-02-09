##
## @khalidbelk, 2026
## File description:
## Makefile
##

GREEN=\033[0;32m
RESET=\033[0m

NAME = licenzio

all: $(NAME)

opam:
	dune build licenzio.opam

install: opam-deps

opam-deps:
	@echo "${GREEN}Installing dependencies...${RESET}"
	opam install . --deps-only --with-test || true

$(NAME):
	@echo "${GREEN}Building${RESET} $(NAME)..."
	@dune build --profile=release src/main.exe
	@install -m 755 _build/default/src/main.exe $(NAME)
	@strip $(NAME)
	@echo "${GREEN}✔ Done.${RESET}"

watch:
	@echo "${GREEN}Starting watcher...${RESET}"
	@dune build -w src/main.exe

clean:
	@echo "Cleaning..."
	@dune clean

fclean: clean
	@echo "${GREEN}Removing${RESET} $(NAME)..."
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean