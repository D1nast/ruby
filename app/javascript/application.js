// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
console.log("application.jsは読み込めています");

//画面トップにスクロールするボタン
const scroll = document.getElementById("scroll-to-top-btn")
scroll.addEventListener("click", function () {
  window.scroll(0, 0);
});

// 要素の取得
const tabItem = document.querySelectorAll(".tab-item");
const tabContent = document.querySelectorAll(".tab-content");
// tabItemに対してクリックイベントを追加
// クリックした時にtabToggle関数を発火
for (let i = 0; i < tabItem.length; i++) {
  tabItem[i].addEventListener("click", tabToggle);
}
function tabToggle() {
  // tabItemとtabContentの.activeを削除する
  for (let i = 0; i < tabItem.length; i++) {
    tabItem[i].classList.remove("active");
  }
  for (let i = 0; i < tabContent.length; i++) {
    tabContent[i].classList.remove("active");
  }
  // クリックしたtabItemに.activeを追加
  this.classList.add("active");
  // tabItemを配列にする
  // [<li class="tab-item active">About</li>, <li class="tab-item">Works</li>, <li class="tab-item">Contact</li>]
  const aryTabs = Array.prototype.slice.call(tabItem);
  // 配列に格納したキーワードと最初一致したインデックスを格納
  // <li class="tab-item active">About</li>の場合は「0」が返ってくる
  const index = aryTabs.indexOf(this);
  // インデックスに対応したtabContentに.activeを追加
  tabContent[index].classList.add("active");
}