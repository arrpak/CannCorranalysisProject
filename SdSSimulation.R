<!DOCTYPE html>
<!-- saved from url=(0014)about:internet -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title></title>

<style type="text/css">
body, td {
   font-family: sans-serif;
   background-color: white;
   font-size: 12px;
   margin: 8px;
}

tt, code, pre {
   font-family: 'DejaVu Sans Mono', 'Droid Sans Mono', 'Lucida Console', Consolas, Monaco, monospace;
}

h1 { 
   font-size:2.2em; 
}

h2 { 
   font-size:1.8em; 
}

h3 { 
   font-size:1.4em; 
}

h4 { 
   font-size:1.0em; 
}

h5 { 
   font-size:0.9em; 
}

h6 { 
   font-size:0.8em; 
}

a:visited {
   color: rgb(50%, 0%, 50%);
}

pre {	
   margin-top: 0;
   max-width: 95%;
   border: 1px solid #ccc;
   white-space: pre-wrap;
}

pre code {
   display: block; padding: 0.5em;
}

code.r, code.cpp {
   background-color: #F8F8F8;
}

table, td, th {
  border: none;
}

blockquote {
   color:#666666;
   margin:0;
   padding-left: 1em;
   border-left: 0.5em #EEE solid;
}

hr {
   height: 0px;
   border-bottom: none;
   border-top-width: thin;
   border-top-style: dotted;
   border-top-color: #999999;
}

@media print {
   * { 
      background: transparent !important; 
      color: black !important; 
      filter:none !important; 
      -ms-filter: none !important; 
   }

   body { 
      font-size:12pt; 
      max-width:100%; 
   }
       
   a, a:visited { 
      text-decoration: underline; 
   }

   hr { 
      visibility: hidden;
      page-break-before: always;
   }

   pre, blockquote { 
      padding-right: 1em; 
      page-break-inside: avoid; 
   }

   tr, img { 
      page-break-inside: avoid; 
   }

   img { 
      max-width: 100% !important; 
   }

   @page :left { 
      margin: 15mm 20mm 15mm 10mm; 
   }
     
   @page :right { 
      margin: 15mm 10mm 15mm 20mm; 
   }

   p, h2, h3 { 
      orphans: 3; widows: 3; 
   }

   h2, h3 { 
      page-break-after: avoid; 
   }
}

</style>

<!-- Styles for R syntax highlighter -->
<style type="text/css">
   pre .operator,
   pre .paren {
     color: rgb(104, 118, 135)
   }

   pre .literal {
     color: rgb(88, 72, 246)
   }

   pre .number {
     color: rgb(0, 0, 205);
   }

   pre .comment {
     color: rgb(76, 136, 107);
   }

   pre .keyword {
     color: rgb(0, 0, 255);
   }

   pre .identifier {
     color: rgb(0, 0, 0);
   }

   pre .string {
     color: rgb(3, 106, 7);
   }
</style>

<!-- R syntax highlighter -->
<script type="text/javascript">
var hljs=new function(){function m(p){return p.replace(/&/gm,"&amp;").replace(/</gm,"&lt;")}function f(r,q,p){return RegExp(q,"m"+(r.cI?"i":"")+(p?"g":""))}function b(r){for(var p=0;p<r.childNodes.length;p++){var q=r.childNodes[p];if(q.nodeName=="CODE"){return q}if(!(q.nodeType==3&&q.nodeValue.match(/\s+/))){break}}}function h(t,s){var p="";for(var r=0;r<t.childNodes.length;r++){if(t.childNodes[r].nodeType==3){var q=t.childNodes[r].nodeValue;if(s){q=q.replace(/\n/g,"")}p+=q}else{if(t.childNodes[r].nodeName=="BR"){p+="\n"}else{p+=h(t.childNodes[r])}}}if(/MSIE [678]/.test(navigator.userAgent)){p=p.replace(/\r/g,"\n")}return p}function a(s){var r=s.className.split(/\s+/);r=r.concat(s.parentNode.className.split(/\s+/));for(var q=0;q<r.length;q++){var p=r[q].replace(/^language-/,"");if(e[p]){return p}}}function c(q){var p=[];(function(s,t){for(var r=0;r<s.childNodes.length;r++){if(s.childNodes[r].nodeType==3){t+=s.childNodes[r].nodeValue.length}else{if(s.childNodes[r].nodeName=="BR"){t+=1}else{if(s.childNodes[r].nodeType==1){p.push({event:"start",offset:t,node:s.childNodes[r]});t=arguments.callee(s.childNodes[r],t);p.push({event:"stop",offset:t,node:s.childNodes[r]})}}}}return t})(q,0);return p}function k(y,w,x){var q=0;var z="";var s=[];function u(){if(y.length&&w.length){if(y[0].offset!=w[0].offset){return(y[0].offset<w[0].offset)?y:w}else{return w[0].event=="start"?y:w}}else{return y.length?y:w}}function t(D){var A="<"+D.nodeName.toLowerCase();for(var B=0;B<D.attributes.length;B++){var C=D.attributes[B];A+=" "+C.nodeName.toLowerCase();if(C.value!==undefined&&C.value!==false&&C.value!==null){A+='="'+m(C.value)+'"'}}return A+">"}while(y.length||w.length){var v=u().splice(0,1)[0];z+=m(x.substr(q,v.offset-q));q=v.offset;if(v.event=="start"){z+=t(v.node);s.push(v.node)}else{if(v.event=="stop"){var p,r=s.length;do{r--;p=s[r];z+=("</"+p.nodeName.toLowerCase()+">")}while(p!=v.node);s.splice(r,1);while(r<s.length){z+=t(s[r]);r++}}}}return z+m(x.substr(q))}function j(){function q(x,y,v){if(x.compiled){return}var u;var s=[];if(x.k){x.lR=f(y,x.l||hljs.IR,true);for(var w in x.k){if(!x.k.hasOwnProperty(w)){continue}if(x.k[w] instanceof Object){u=x.k[w]}else{u=x.k;w="keyword"}for(var r in u){if(!u.hasOwnProperty(r)){continue}x.k[r]=[w,u[r]];s.push(r)}}}if(!v){if(x.bWK){x.b="\\b("+s.join("|")+")\\s"}x.bR=f(y,x.b?x.b:"\\B|\\b");if(!x.e&&!x.eW){x.e="\\B|\\b"}if(x.e){x.eR=f(y,x.e)}}if(x.i){x.iR=f(y,x.i)}if(x.r===undefined){x.r=1}if(!x.c){x.c=[]}x.compiled=true;for(var t=0;t<x.c.length;t++){if(x.c[t]=="self"){x.c[t]=x}q(x.c[t],y,false)}if(x.starts){q(x.starts,y,false)}}for(var p in e){if(!e.hasOwnProperty(p)){continue}q(e[p].dM,e[p],true)}}function d(B,C){if(!j.called){j();j.called=true}function q(r,M){for(var L=0;L<M.c.length;L++){if((M.c[L].bR.exec(r)||[null])[0]==r){return M.c[L]}}}function v(L,r){if(D[L].e&&D[L].eR.test(r)){return 1}if(D[L].eW){var M=v(L-1,r);return M?M+1:0}return 0}function w(r,L){return L.i&&L.iR.test(r)}function K(N,O){var M=[];for(var L=0;L<N.c.length;L++){M.push(N.c[L].b)}var r=D.length-1;do{if(D[r].e){M.push(D[r].e)}r--}while(D[r+1].eW);if(N.i){M.push(N.i)}return f(O,M.join("|"),true)}function p(M,L){var N=D[D.length-1];if(!N.t){N.t=K(N,E)}N.t.lastIndex=L;var r=N.t.exec(M);return r?[M.substr(L,r.index-L),r[0],false]:[M.substr(L),"",true]}function z(N,r){var L=E.cI?r[0].toLowerCase():r[0];var M=N.k[L];if(M&&M instanceof Array){return M}return false}function F(L,P){L=m(L);if(!P.k){return L}var r="";var O=0;P.lR.lastIndex=0;var M=P.lR.exec(L);while(M){r+=L.substr(O,M.index-O);var N=z(P,M);if(N){x+=N[1];r+='<span class="'+N[0]+'">'+M[0]+"</span>"}else{r+=M[0]}O=P.lR.lastIndex;M=P.lR.exec(L)}return r+L.substr(O,L.length-O)}function J(L,M){if(M.sL&&e[M.sL]){var r=d(M.sL,L);x+=r.keyword_count;return r.value}else{return F(L,M)}}function I(M,r){var L=M.cN?'<span class="'+M.cN+'">':"";if(M.rB){y+=L;M.buffer=""}else{if(M.eB){y+=m(r)+L;M.buffer=""}else{y+=L;M.buffer=r}}D.push(M);A+=M.r}function G(N,M,Q){var R=D[D.length-1];if(Q){y+=J(R.buffer+N,R);return false}var P=q(M,R);if(P){y+=J(R.buffer+N,R);I(P,M);return P.rB}var L=v(D.length-1,M);if(L){var O=R.cN?"</span>":"";if(R.rE){y+=J(R.buffer+N,R)+O}else{if(R.eE){y+=J(R.buffer+N,R)+O+m(M)}else{y+=J(R.buffer+N+M,R)+O}}while(L>1){O=D[D.length-2].cN?"</span>":"";y+=O;L--;D.length--}var r=D[D.length-1];D.length--;D[D.length-1].buffer="";if(r.starts){I(r.starts,"")}return R.rE}if(w(M,R)){throw"Illegal"}}var E=e[B];var D=[E.dM];var A=0;var x=0;var y="";try{var s,u=0;E.dM.buffer="";do{s=p(C,u);var t=G(s[0],s[1],s[2]);u+=s[0].length;if(!t){u+=s[1].length}}while(!s[2]);if(D.length>1){throw"Illegal"}return{r:A,keyword_count:x,value:y}}catch(H){if(H=="Illegal"){return{r:0,keyword_count:0,value:m(C)}}else{throw H}}}function g(t){var p={keyword_count:0,r:0,value:m(t)};var r=p;for(var q in e){if(!e.hasOwnProperty(q)){continue}var s=d(q,t);s.language=q;if(s.keyword_count+s.r>r.keyword_count+r.r){r=s}if(s.keyword_count+s.r>p.keyword_count+p.r){r=p;p=s}}if(r.language){p.second_best=r}return p}function i(r,q,p){if(q){r=r.replace(/^((<[^>]+>|\t)+)/gm,function(t,w,v,u){return w.replace(/\t/g,q)})}if(p){r=r.replace(/\n/g,"<br>")}return r}function n(t,w,r){var x=h(t,r);var v=a(t);var y,s;if(v){y=d(v,x)}else{return}var q=c(t);if(q.length){s=document.createElement("pre");s.innerHTML=y.value;y.value=k(q,c(s),x)}y.value=i(y.value,w,r);var u=t.className;if(!u.match("(\\s|^)(language-)?"+v+"(\\s|$)")){u=u?(u+" "+v):v}if(/MSIE [678]/.test(navigator.userAgent)&&t.tagName=="CODE"&&t.parentNode.tagName=="PRE"){s=t.parentNode;var p=document.createElement("div");p.innerHTML="<pre><code>"+y.value+"</code></pre>";t=p.firstChild.firstChild;p.firstChild.cN=s.cN;s.parentNode.replaceChild(p.firstChild,s)}else{t.innerHTML=y.value}t.className=u;t.result={language:v,kw:y.keyword_count,re:y.r};if(y.second_best){t.second_best={language:y.second_best.language,kw:y.second_best.keyword_count,re:y.second_best.r}}}function o(){if(o.called){return}o.called=true;var r=document.getElementsByTagName("pre");for(var p=0;p<r.length;p++){var q=b(r[p]);if(q){n(q,hljs.tabReplace)}}}function l(){if(window.addEventListener){window.addEventListener("DOMContentLoaded",o,false);window.addEventListener("load",o,false)}else{if(window.attachEvent){window.attachEvent("onload",o)}else{window.onload=o}}}var e={};this.LANGUAGES=e;this.highlight=d;this.highlightAuto=g;this.fixMarkup=i;this.highlightBlock=n;this.initHighlighting=o;this.initHighlightingOnLoad=l;this.IR="[a-zA-Z][a-zA-Z0-9_]*";this.UIR="[a-zA-Z_][a-zA-Z0-9_]*";this.NR="\\b\\d+(\\.\\d+)?";this.CNR="\\b(0[xX][a-fA-F0-9]+|(\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)";this.BNR="\\b(0b[01]+)";this.RSR="!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|\\.|-|-=|/|/=|:|;|<|<<|<<=|<=|=|==|===|>|>=|>>|>>=|>>>|>>>=|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||~";this.ER="(?![\\s\\S])";this.BE={b:"\\\\.",r:0};this.ASM={cN:"string",b:"'",e:"'",i:"\\n",c:[this.BE],r:0};this.QSM={cN:"string",b:'"',e:'"',i:"\\n",c:[this.BE],r:0};this.CLCM={cN:"comment",b:"//",e:"$"};this.CBLCLM={cN:"comment",b:"/\\*",e:"\\*/"};this.HCM={cN:"comment",b:"#",e:"$"};this.NM={cN:"number",b:this.NR,r:0};this.CNM={cN:"number",b:this.CNR,r:0};this.BNM={cN:"number",b:this.BNR,r:0};this.inherit=function(r,s){var p={};for(var q in r){p[q]=r[q]}if(s){for(var q in s){p[q]=s[q]}}return p}}();hljs.LANGUAGES.cpp=function(){var a={keyword:{"false":1,"int":1,"float":1,"while":1,"private":1,"char":1,"catch":1,"export":1,virtual:1,operator:2,sizeof:2,dynamic_cast:2,typedef:2,const_cast:2,"const":1,struct:1,"for":1,static_cast:2,union:1,namespace:1,unsigned:1,"long":1,"throw":1,"volatile":2,"static":1,"protected":1,bool:1,template:1,mutable:1,"if":1,"public":1,friend:2,"do":1,"return":1,"goto":1,auto:1,"void":2,"enum":1,"else":1,"break":1,"new":1,extern:1,using:1,"true":1,"class":1,asm:1,"case":1,typeid:1,"short":1,reinterpret_cast:2,"default":1,"double":1,register:1,explicit:1,signed:1,typename:1,"try":1,"this":1,"switch":1,"continue":1,wchar_t:1,inline:1,"delete":1,alignof:1,char16_t:1,char32_t:1,constexpr:1,decltype:1,noexcept:1,nullptr:1,static_assert:1,thread_local:1,restrict:1,_Bool:1,complex:1},built_in:{std:1,string:1,cin:1,cout:1,cerr:1,clog:1,stringstream:1,istringstream:1,ostringstream:1,auto_ptr:1,deque:1,list:1,queue:1,stack:1,vector:1,map:1,set:1,bitset:1,multiset:1,multimap:1,unordered_set:1,unordered_map:1,unordered_multiset:1,unordered_multimap:1,array:1,shared_ptr:1}};return{dM:{k:a,i:"</",c:[hljs.CLCM,hljs.CBLCLM,hljs.QSM,{cN:"string",b:"'\\\\?.",e:"'",i:"."},{cN:"number",b:"\\b(\\d+(\\.\\d*)?|\\.\\d+)(u|U|l|L|ul|UL|f|F)"},hljs.CNM,{cN:"preprocessor",b:"#",e:"$"},{cN:"stl_container",b:"\\b(deque|list|queue|stack|vector|map|set|bitset|multiset|multimap|unordered_map|unordered_set|unordered_multiset|unordered_multimap|array)\\s*<",e:">",k:a,r:10,c:["self"]}]}}}();hljs.LANGUAGES.r={dM:{c:[hljs.HCM,{cN:"number",b:"\\b0[xX][0-9a-fA-F]+[Li]?\\b",e:hljs.IMMEDIATE_RE,r:0},{cN:"number",b:"\\b\\d+(?:[eE][+\\-]?\\d*)?L\\b",e:hljs.IMMEDIATE_RE,r:0},{cN:"number",b:"\\b\\d+\\.(?!\\d)(?:i\\b)?",e:hljs.IMMEDIATE_RE,r:1},{cN:"number",b:"\\b\\d+(?:\\.\\d*)?(?:[eE][+\\-]?\\d*)?i?\\b",e:hljs.IMMEDIATE_RE,r:0},{cN:"number",b:"\\.\\d+(?:[eE][+\\-]?\\d*)?i?\\b",e:hljs.IMMEDIATE_RE,r:1},{cN:"keyword",b:"(?:tryCatch|library|setGeneric|setGroupGeneric)\\b",e:hljs.IMMEDIATE_RE,r:10},{cN:"keyword",b:"\\.\\.\\.",e:hljs.IMMEDIATE_RE,r:10},{cN:"keyword",b:"\\.\\.\\d+(?![\\w.])",e:hljs.IMMEDIATE_RE,r:10},{cN:"keyword",b:"\\b(?:function)",e:hljs.IMMEDIATE_RE,r:2},{cN:"keyword",b:"(?:if|in|break|next|repeat|else|for|return|switch|while|try|stop|warning|require|attach|detach|source|setMethod|setClass)\\b",e:hljs.IMMEDIATE_RE,r:1},{cN:"literal",b:"(?:NA|NA_integer_|NA_real_|NA_character_|NA_complex_)\\b",e:hljs.IMMEDIATE_RE,r:10},{cN:"literal",b:"(?:NULL|TRUE|FALSE|T|F|Inf|NaN)\\b",e:hljs.IMMEDIATE_RE,r:1},{cN:"identifier",b:"[a-zA-Z.][a-zA-Z0-9._]*\\b",e:hljs.IMMEDIATE_RE,r:0},{cN:"operator",b:"<\\-(?!\\s*\\d)",e:hljs.IMMEDIATE_RE,r:2},{cN:"operator",b:"\\->|<\\-",e:hljs.IMMEDIATE_RE,r:1},{cN:"operator",b:"%%|~",e:hljs.IMMEDIATE_RE},{cN:"operator",b:">=|<=|==|!=|\\|\\||&&|=|\\+|\\-|\\*|/|\\^|>|<|!|&|\\||\\$|:",e:hljs.IMMEDIATE_RE,r:0},{cN:"operator",b:"%",e:"%",i:"\\n",r:1},{cN:"identifier",b:"`",e:"`",r:0},{cN:"string",b:'"',e:'"',c:[hljs.BE],r:0},{cN:"string",b:"'",e:"'",c:[hljs.BE],r:0},{cN:"paren",b:"[[({\\])}]",e:hljs.IMMEDIATE_RE,r:0}]}};
hljs.initHighlightingOnLoad();
</script>




</head>

<body>
<pre><code class="r">library(&quot;xts&quot;)
</code></pre>

<pre><code>## Loading required package: zoo
</code></pre>

<pre><code>## Attaching package: &#39;zoo&#39;
</code></pre>

<pre><code>## The following object(s) are masked from &#39;package:base&#39;:
## 
## as.Date, as.Date.numeric
</code></pre>

<pre><code class="r">experimentPNL &lt;- function(n = 1000) {
    r = rnorm(n)
    csum = cumsum(r)
    r * csum
}
l = 1:10000
results = apply(as.matrix(l), 1, FUN = function(x) {
    last(experimentPNL(x))
})
plot(density.default(results))
</code></pre>

<p><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfgAAAH4CAMAAACR9g9NAAAAn1BMVEX9/v0AAAAAADkAAGUAOTkAOWUAOY8AZo8AZrU5AAA5ADk5AGU5OWU5OY85ZrU5j485j9plAABlADllAGVlOQBlOY9lZgBlZjllj49ltbVltdpltf2POQCPOTmPOWWPZgCPj2WPtY+P29qP2/21ZgC1Zjm1tWW124+1/rW1/tq1/v2+vr7ajzna24/a/rXa/v39tWX924/9/rX9/tr9/v0DWX6bAAAANXRSTlP/////////////////////////////////////////////////////////////////////AHy10AoAAAAJcEhZcwAACxIAAAsSAdLdfvwAABAhSURBVHic7Z0Ne+LGFUYjb+PibDe1d5O2KWzSxDRJtzTmQ///t1UzkrBBEgh0Zeude86TLDagl7lzGGkkJPNVDi756q0bAG8D4p2CeKcg3imIdwrinYJ4pyDeKYh3CuKdgninIN4piHcK4p2CeKcg3imIdwrinYJ4pyDeKYh3CuKdgninIN4piHeKnvjtw+3TqUfffcnz5fzMYpu77ObxxLKr5qP923fUgs3d/bVZI5Ka+MgyOye+7RmlsvjI9mE2oH11yv7FwjthamiJ3y2y7IdocJVloW93i3e/Zlno2GIMh9ui2/9TPCn786L4ZZ3dty4Wfs9un9bFv8XI3i3icrdP9bKz4mnzIvDdl+KJUWBYrHzBEHbz97BY1YL6hVtSqkf2zZgUUuKjsKCsGFGB+/qeWdHl5SP7bg/uluUKu7FYKf6PapGmssLtY1wrrLNy5B+Kj0vVLdh2ptSP9FlHvT5S4sMgLCTcPm3uiq4MXV1YuC9GVHVP/mJFu7mbRReti+1XxeHpL5WVj5Smtg9/umtZSRcvOQuZVVT9ws2U+pG8bsekkBIfB2Do3HU5Am8e49gsuzurV/Vlt+8WxZCedSxWiQ8LtYmvlK2zekt9tKp/jI+VUfULt719ykeqJSaGvPiqu+MGNXqox/Pq5udqOt0hPi5xSvwqqzfOJ8TXL9xMqR/J603OpJASf7jODjyLDxTdfdDtVX83F4vPWBVa9zO4VdYQv7n7c9tQLcU/R1VxzZT9CzHih3I8S3sxpaqHb9XtxRgvnhwnVtHs0WLRRzloy6fXE8Ny2fhOCroO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" alt="plot of chunk unnamed-chunk-1"/> </p>

<pre><code class="r">summary(results)
</code></pre>

<pre><code>##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -534.0   -20.4     0.2     0.9    22.3   536.0
</code></pre>

<pre><code class="r">sd(results)
</code></pre>

<pre><code>## [1] 68.71
</code></pre>

<!-- Automatically generated by RStudio [12861c30b10411e1afa60800200c9a66] -->

</body>

</html>

