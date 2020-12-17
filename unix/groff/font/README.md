# README

## groff 支持中文字体

从网上下载中文字体，如`华文宋体.ttf`，使用`fontforge`生成`STSong.pfa`和`STSong.afm`两个文件，再运行以下命令生成`STSong`：
```
afmtodit STSong.afm textmap STSong
```

将这些文件复制到 groff 的字体目录，如：
```
cp ./STSong.pfa ./STSong.afm ./STSong /usr/local/Cellar/groff/1.22.4_1/share/groff/1.22.4/font/devps/
```

最后编辑`/usr/local/Cellar/groff/1.22.4_1/share/groff/1.22.4/font/devps/download`文件，加入以下内容：
```
STSong	STSong.pfa
```

