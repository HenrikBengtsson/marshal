library(marshal)

if (requireNamespace("data.table", quietly = TRUE)) {
  library(data.table)

  dt <- data.table(a = 1:3, b = letters[1:3])

  ## Assert marshallability
  stopifnot(marshallable(dt))

  ## Marshal
  dt_ <- marshal(dt)
  
  ## Unmarshal
  dt2 <- unmarshal(dt_)
  
  stopifnot(identical(dt2, dt))

  ## Marshal and unmarshal again
  dt2_ <- marshal(dt2)
  dt3 <- unmarshal(dt2_)
  
  stopifnot(
    identical(dt2_, dt_),
    identical(dt3, dt2)
  )
}

