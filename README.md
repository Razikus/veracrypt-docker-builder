# USAGE
``` docker build -t veracrypt-builder . ```

``` docker run --rm -v /PATHTOBUILDED:/builder veracrypt-builder ```



# Example usage
``` docker run --rm -v /builded:/builder razikus/veracrypt-builder ```

It will run container that have cloned veracrypt and wxwidgets inside, then compile it and put compiled installers inside /builder (that is mapped to /builded on host)
