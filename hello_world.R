# hello_world.R
# A small "Hello World" program written in R.
# It prints the classic message, then says hello in the languages
# that are part of my everyday life.
#
# Run it from the terminal with:  Rscript hello_world.R

# A named character vector. Each name is a language and each value
# is the greeting in that language. This is one of R's basic data structures.
greetings <- c(
  English    = "Hello World",
  Portuguese = "Olá Mundo",
  Yoruba     = "Ẹ n lẹ o, Ayé"
)

# Print the classic message first. cat() writes text to the console,
# and "\n" adds a new line.
cat("Hello World\n\n")

# Loop through the language names and print each greeting.
# sprintf() lines the output up neatly: %-12s pads the language label
# to 12 characters so the greetings start in the same column.
for (language in names(greetings)) {
  label <- paste0(language, ":")
  cat(sprintf("%-12s %s\n", label, greetings[[language]]))
}
