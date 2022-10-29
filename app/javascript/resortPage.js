console.log("読み込み成功しています");
//データベースのスキー場の数に応じて作成したい
//各都道府県のスキー場サイトのhtml作成
//flex-boxの要素作成
const introductionResort = document.getElementById("area");
const generateGerendePage = document.createElement("div");
const generateGerendePageH1 = document.createElement("h1");
const generateGerendeFlex = document.createElement("div");
const generateArticleWrapper = document.createElement("div");
const generateWrapperTop = document.createElement("div");
const generateWrapperBottom = document.createElement("div");
//html記述
generateGerendePage.className = "gerendePage";
generateGerendeFlex.className = "gerendeFlex";
generateArticleWrapper.className = "articleWrapper";
generateWrapperTop.className = "wrapperTop";
generateWrapperBottom.className = "wrapperBottom";
generateArticleWrapper.appendChild(generateWrapperTop);
generateArticleWrapper.appendChild(generateWrapperBottom);
generateGerendeFlex.appendChild(generateArticleWrapper);
generateGerendePage.appendChild(generateGerendeFlex);
introductionResort.appendChild(generateGerendePage);