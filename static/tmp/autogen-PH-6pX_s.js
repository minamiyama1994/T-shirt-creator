function randomInt(min,max){return Math.floor(random()*(max-min))+min}
function make_lang(lang){var res=$("<span></span>"),is_horizon=(randomInt(0,2)==0),font_size=randomInt(32,128),width=is_horizon?Math.floor(font_size*lang.length/2):font_size,height=is_horizon?font_size:Math.floor(font_size*lang.length/2),font=["serif","sans-serif","cursive","fantasy","monospace"][randomInt(0,5)],x=randomInt(0,512-width),y=randomInt(0,512-height),color="rgba("+randomInt(64,192)+randomInt(64,192)+randomInt(64,192)+randomInt(64,128)+")";res.attr("style","position:relative;");res.attr("style",res.attr(style)+"writing-mode:"+(is_horizon?"horizontal-tb":"vertical-rl")+";");res.attr("style",res.attr(style)+"font-size:"+font_size+"px;");res.attr("style",res.attr(style)+"font-family:"+font+";");res.attr("style",res.attr(style)+"left:"+x+"px;");res.attr("style",res.attr(style)+"top:"+y+"px;");res.attr("style",res.attr(style)+"color:"+color+";");return res};$(function(){$.ajax({"type":"GET","success":function(data,datatype){for(var i=0;i<data.langs.length;++i){var lang=make_lang(data.langs[i]);$("#canvas").append(lang)};return this},"url":"http://b-world.org/langs"})})