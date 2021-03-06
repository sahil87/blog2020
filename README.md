# Blog

## Working with Hexo

> https://hexo.io/docs/setup.html

### Shortcuts

* `hexo new "My New Post"`: create a new post . More info: [Writing](https://hexo.io/docs/writing.html)
* `hexo server`: hexo watch mode. Open http://localhost:4000/admin/
* `hexo generate`: Generate static files. More info: [Generating](https://hexo.io/docs/generating.html)
* `./hexo-deploy.sh`: One Shot Commit/Deploy

### After git pull - initial setup

```bash
#First time repo setup
yarn global add hexo-cli
git submodule add https://github.com/ppoffice/hexo-theme-icarus.git themes/icarus

#Everytime after git clone
yarn install
git submodule update --init --recursive
```

### Writing articles

* Adding blockquotes, images, youtube: https://hexo.io/docs/tag-plugins.html#Block-Quote

### Removing a submodule

> https://stackoverflow.com/a/1260982

* **Main documentation:** https://hexo.io/docs/
* **Configuration:** https://hexo.io/docs/configuration.html

### Profiles

* Github: https://github.com/sahil87
* Stackoverflow: http://stackoverflow.com/story/sahilahuja
* Twitter: https://twitter.com/_sahilahuja
* Linkedin: https://in.linkedin.com/in/ahujasahil
* Medium: https://medium.com/@sahilahuja
* Facebook: https://www.facebook.com/ahujasahil
* Flickr: http://flickr.com/sahilahuja
* Quora: https://quora.com/profile/Sahil-Ahuja-17
* Email: 'mailto:sahilahuja@gmail.com'
