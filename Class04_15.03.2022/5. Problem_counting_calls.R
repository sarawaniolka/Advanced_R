### definition
defCalls <- function() {
  ## counter
  count <- 0
  ## counter function definition
  function() {
    e <- parent.env(environment())
    e$count <- count + 1
    count
  }
}

calls <- defCalls()

### examples
calls()
parent.env(environment(calls))
ls(envir = environment(calls))
environment(calls)$count <- 0
calls()


