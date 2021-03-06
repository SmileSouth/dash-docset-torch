
# dash-docset-torch
Some scripts to generate [dash](https://kapeli.com/dash)/[zeal](https://zealdocs.org/)
docset for [torch](http://torch.ch), including nn, image, optim, paths package.

You can download the latest release [here](https://github.com/ppwwyyxx/dash-docset-torch/releases).

# Steps to generate the docset
+ Install [dashing](https://github.com/technosophos/dashing#readme), [grip](https://github.com/joeyespo/grip)
+ `cd THIS_REPO`
+ `./mds/gen-html.sh`
+ `cd html && dashing build` will give you a `torch.docset` folder.

For now it only roughly parses the markdown documentation in torch repo, naively by its header level.
Functions might be missing. Please report if you find any issue.

![screenshot](/screenshot.png)


NOTE: sometimes `grip` could fail to render htmls due to github API limit. In this case you can pass your github
username/password to the `grip` command in `mds/gen-html.sh` to avoid this.
See [grip issue](https://github.com/joeyespo/grip/issues/15).
