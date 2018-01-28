
# <font face="微軟正黑體">ATK_NixieTubeClock(網路校時真空管時鐘)</font>

<font face="微軟正黑體">這一切都是命運石之門的選擇（すべてはシュタインズ・ゲートの選択である）；El Psy Congroo，去年偶然情況下被動畫命運時之門中的道具"世界線變動率探測儀"電到而催生的專案，沒有辦法偵測世界線的變動，只能顯示當下時間。</font>

![image](https://github.com/AtkSeeGow/ATK_NixieTubeClock/raw/dev/Image/20171227_234819.jpg)

![image](https://github.com/AtkSeeGow/ATK_NixieTubeClock/raw/dev/Image/20171227_235435.jpg)

## <font face="微軟正黑體">元件介紹</font>

<font face="微軟正黑體">IN-14（數字真空管）：在填充低壓氖氣的真空玻璃管中，安裝許多不同形狀的陰極和一個網狀的共通陽極，當我們施加足夠的電壓在兩個電極之間時，由陰極飛出的電子就會撞擊電極周圍的氖氣而讓氣體發光。</font>

![image](https://github.com/AtkSeeGow/ATK_NixieTubeClock/raw/dev/Image/20171227_235438.png)

<font face="微軟正黑體">NodeMCU（ESP8266）：進行網路校時與真空管數字顯示控制晶片。</font>

![image](https://github.com/AtkSeeGow/ATK_NixieTubeClock/raw/dev/Image/20180127_015917.jpg)

<font face="微軟正黑體">TLP521（光耦合器）：搭配HEF4028進行決定發光燈管。</font>

![image](https://github.com/AtkSeeGow/ATK_NixieTubeClock/raw/dev/Image/20171227_235440.png)

<font face="微軟正黑體">[K155ID1（真空數字管驅動）](http://tubehobby.com/datasheets/k155id1.pdf)：由NodeMCU控制，負責控制真空管顯示的數字。</font>

<font face="微軟正黑體">[HEF4028（十進制譯碼器）](https://assets.nexperia.com/documents/data-sheet/HEF4028B.pdf)：由NodeMCU控制，負責控制發光的真空管。</font>

<font face="微軟正黑體">升壓模組：協助將電壓由5V升至170V。</font>

![image](https://github.com/AtkSeeGow/ATK_NixieTubeClock/raw/dev/Image/20180127_015036.jpg)

## <font face="微軟正黑體">程式簡介</font>

<font face="微軟正黑體">每一小時進行網路校時，每七毫秒更換發光的真空管並顯示對應的數字。</font>

<img src="https://github.com/AtkSeeGow/ATK_NixieTubeClock/raw/dev/Image/20180127_015940.gif" width="100%" >