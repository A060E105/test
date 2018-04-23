<base target="_blink">
# Sublime Text 3 教學  

<font size="5">
先到Sublime Text 3 **[官網下載程式](https://www.sublimetext.com/3)** __*注意*__ 有 __*安裝版*__ 與 __*攜帶版*__ ，選擇你目前的作業系統。

裝好之後，通常第一步就是先安裝超級好用的 __`Package Control`__ 套件，未來安裝更多 Sublime Text 的好用套件就都靠它了，其安裝步驟如下：   <br>
1. 開啟 Sublime Text 3 主程式後，直接按下 <font color="blue">__`` Ctrl + ` ``__ </font>組合鍵開啟主控台命令列:  
```
import urllib.request,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

2. 直接複製貼上 上面提供的指令到主控台命令列中，並直接按下 __`Enter`__ 執行，即可動安裝完畢。
<font color="red">__請注意__</font>：這段安裝程式碼，僅適用於 __*Sublime Text 3*__ 版本！  

3. 安裝好之後，你可以再按一次 <font color="blue">__`` Ctrl + ` ``__ </font>組合鍵以關閉主控台視窗。

4. 然後你就可以在 [Preferences] –> [Package Control] 啟用這個 Sublime Text 套件管理員。

5. 未來有許多好用套件都會透過這個套件管理員協助安裝，最常用的就是 <font color="blue">__Install Package__</font> 命令了。

6. 快速叫用 Install Package 命令的快速鍵是：<font color="blue">__`Ctrl+Shift+P`__</font> 然後輸入 <font color="blue">__install__</font> 之後按下 Enter 鍵。

7. 在 [Help] -> [License] 貼上下面3143版的註冊碼(License key):

```
—– BEGIN LICENSE —–
TwitterInc
200 User License
EA7E-890007
1D77F72E 390CDD93 4DCBA022 FAF60790
61AA12C0 A37081C5 D0316412 4584D136
94D7F7D4 95BC8C1C 527DA828 560BB037
D1EDDD8C AE7B379F 50C9D69D B35179EF
2FE898C4 8E4277A8 555CE714 E1FB0E43
D5D52613 C3D12E98 BC49967F 7652EED2
9D2D2E61 67610860 6D338B72 5CF95C69
E36B85CC 84991F19 7575D828 470A92AB
—— END LICENSE ——
```

------

### Sublime Text 套件名稱：[ConvertToUTF8](file:///C:/Users/user/appdata/local/temp/16.html "ConvertToUTF8教學")

如果你透過 Sublime Text 3 開啟一個 Big5 編碼的文件或網頁，立刻會看到亂碼的情況，你只要試圖安裝 <font color="blue">__ConvertToUTF8__</font> 套件，就可以輕鬆解決這個問題，如下圖示裝好之後 Sublime Text 會自動辨識檔案的文字編碼，並顯示正確的結果。

在 [Preferences] -> [Package Settings] -> [ConvertToUTF8] -> [Settings-Default] 裡修改判斷字集的優先順序。  
將 __`["Chinese Traditional (BIG5)", "BIG5"],`__ 這行移動到最上面。

------

### Sublime Text 套件名稱：ChineseLocalizations  

選單中文介面，有日語、簡中、繁中三種語言。

### Sublime Text 套件名稱：SyncedSidebarBg
sublime text默认侧边栏是白色的，但主题使用黑色的时候就感觉很难看，于是就为大家推荐一款插件SyncedSidebarBg，此插件的功能就是把侧边栏颜色与主题颜色同步，这样大家使用黑色主题时，侧边栏就是黑色的了。

### Sublime Text 套件名稱：Side​Bar​Enhancements
加強側邊列(檔案與資料夾)功能的套件。

### Sublime Text 套件名稱：Bracket​Highlighter
把各種括號符號、標記特別高亮度顯示出來。


</font>