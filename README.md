# USAGE
``` docker build -t veracrypt-builder . ```

``` docker run --rm -v /PATHTOBUILDED:/builded veracrypt-builder ```



# Example usage
``` docker run --rm -v /builded:/builded razikus/veracrypt-builder ```

It will run container that have cloned veracrypt and wxwidgets inside, then compile it and put compiled installers inside /builder (that is mapped to /builded on host)

# Building
In order to build with specific branch of veracrypt
``` docker build --build-arg cloneBRANCH="master" -t myBuild . ```


In order to build with specific branch of wxwidgets
``` docker build --build-arg wxWidgetsBranch="WX_3_0_BRANCH" -t myBuild . ```
