# Baseline Sinatra applications

Herein lies a few Sinatra web applications that are useful for building one off sites.  In addition, this repository includes a few different server configurations: unicorn, thin, and thin w/ synchrony.

## Usage

The same for each application.

    cd baseline-sinatra-on-thin
    bundle
    foreman start

## Test

  ab -n 100 -c 5 -r http://127.0.0.1:5000/