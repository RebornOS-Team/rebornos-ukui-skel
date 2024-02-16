# Contributing

## Release Checklist

- [ ] Build and test the package locally: `sh packaging/setup.sh local`

- [ ] Update the version and changelog in [CHANGELOG.md](CHANGELOG.md)

- [ ] Update the version in 
  - [ ] [The PKGBUILD for the stable variant of the package](packaging/rebornos-ukui-skel/PKGBUILD)
  - [ ] [The PKGBUILD for the git variant of the package](packaging/rebornos-ukui-skel-git/PKGBUILD)
  - [ ] [The PKGBUILD for the local variant of the package](packaging/rebornos-ukui-skel-local/PKGBUILD)

- [ ] Commit and push all changes through git, for example `git commit -m "Some Message" && git push`

- [ ] Create and push a tag, for example `git tag -s -a v1.1.1 -m "This is version 1.1.1" && git push origin v1.1.1`
- [ ] If there was a mistake and if you want to yank the release, run something like `git tag -d v1.1.1 && git push --delete origin v1.1.1`. Then the errors can be fixed and the previous step can be repeated to create a new tag.