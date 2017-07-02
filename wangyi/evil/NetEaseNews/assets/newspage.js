var title;
            var ptime;
            var body;
            var replyCount;
            var replyBoard;
            var source;
            var more;
            var moreButton;
            var myBody;
			var myTitle;
			var textSize;
			
			var hideConditionNum;
			var topHideNum;
			var bottomHideNum;
			//var myMore;
            var voteArray = {};
            
            var lastRequestLoadImgStart = -1;
            var lastRequestLoadImgEnd = -1;
            
            var myVote;
            
            window.onscroll = function(){
			    requestImgLoading();
			}
            
            function getTitle(){
                myTitle = document.getElementById("title");
                if (window.news) {
                    title = window.news.getTitle();
                    myTitle.innerHTML = title;
                }
            }
            
            function getTitlePre(){
            	title_pre = document.getElementById("title_pre")

            	if (window.news) {
                   titlePre = window.news.getTitlePre();
                   title_pre.innerHTML = titlePre
                }            
            }
            
            function getSource(){
                var mySource = document.getElementById('source');
                if (window.news) {
                    source = window.news.getSource();
                    mySource.innerHTML = source;
                }
            }
            
            function getTime(){
                var myTime = document.getElementById('ptime');
                if (window.news) {
                    ptime = window.news.getTime();
                    myTime.innerHTML = ptime;
                }
            }
            
            function getBody(){
                myBody = document.getElementById('article_body');
                
                if (window.news) {
                    body = window.news.getBody();
                }
            }
            
            function getTextSize() {
            	if (window.news) {
            	    textSize = window.news.getTextSize();
            	    
            	    switch(textSize) {
            	    case 0:
            	    	showSuperBigSize();
            	    	break;
            	    case 1:
            	    	showBigSize();
            	    	break;
            	    case 2:
            	    	showMidSize();
            	    	break;
            	    case 3:
            	    	showSmallSize();
            	    	break;
            	    }
            	}
            }
            
            function getMore(){
                moreButton.style.display = "none";
                //myMore = document.getElementById('more');
                myBody = document.getElementById('article_body');
                if (window.news) {
                    more = window.news.getMoreBody();
                    myBody.innerHTML = myBody.innerHTML + more;
                }
                
            }
            
            function randerComment() {
            	myBody = document.getElementById('article_body');
            	
            	var posttime = document.createElement('span');
			
			    posttime.innerHTML = "时间时间";
			    myBody.appendChild(posttime);
			    
			    
          
            }
            
            function toLink(i){
            	if(window.news){
            		window.news.toLink(i);
            	}
            }
            
            function toappLink(appid,i){
            	if(window.news){
            		window.news.toappLink(i,appid);
            	}
            }
            
            function toTopic(i) {
            	if(window.news){
            		window.news.toTopic(i);
            	}
            }
            
            function subscribeTopic(e, i) {
            	if(window.news){
            		window.news.subscribeTopic(i);
            	}
            	stopEventBubble(e); 
            }
            
            function setSubscribeTopicImg(i, imgUrl){
				var imgcontent = document.getElementById("topic_img_" + i);
				if(null != imgcontent)imgcontent.src=imgUrl;
			}
			
	
            function stopEventBubble(e){
		    var evt = e || window.event;  
        	//IE用cancelBubble=true来阻止而FF下需要用stopPropagation方法  
        	evt.stopPropagation ? evt.stopPropagation() : (evt.cancelBubble=true); 
	    }
            
            
            function requestImgLoading(force){
            	if (!window.news) {
            		return;
            	}
            //	var st=new Date().getTime();
            	screenHeight=3*window.screen.height;
            	screenHeight=screenHeight/window.devicePixelRatio;
            	
            	start = -1;
            	end = -1;
 
            	for (i = 0; i < 10000; i++) {
	            	largepic=document.getElementById('largepic'+i);
	            	if (!largepic) {
            			break;
	            	}
	            	
	            	r = largepic.getBoundingClientRect();
	            	
	            	if (r.bottom > 0) {
	            		start = i;
	            		break;
	            	}
            	}
            	for (i = start; i < 10000; i++) {
	            	largepic=document.getElementById('largepic'+i);
	            	if (!largepic) {
            			break;
	            	}
	            	end = i;
	            	r = largepic.getBoundingClientRect();
	            	if (r.bottom >= screenHeight) {
	            		break;
	            	}
            	}
            	if (force || lastRequestLoadImgStart != start || lastRequestLoadImgEnd != end) {
            		lastRequestLoadImgStart = start;
            		lastRequestLoadImgEnd = end;
            		if (start != -1 && end != -1) {
            			window.news.requestImgLoading(start, end);
            		}
            	}
            	//var st2=new Date().getTime() - st;
            //	alert(st2);
            }


            function initialize(){
            	getTitlePre();
                getBody();
                showMoreButton();
                getTextSize();
                initCaipiao();
                getAdText();
                getTitle();
                getSource();
                getTime();
            }
            
            function showMoreButton(){
                moreButton = document.getElementById('moreButton');
                
                if (window.news) {
                    var isShown = window.news.hasNext();
                    
                    if (isShown == 1) {
                    	myBody.innerHTML = body;
                        moreButton.style.display = "block";
                    } else if(isShown == 2){ // 奥运视频新闻
                    	myBody.innerHTML = body;
                        moreButton.style.display = "none";
                    } else {
                    	myBody.innerHTML = body;
                        moreButton.style.display = "none";
                    }
                }
                else {
                	myBody.innerHTML = body;
                    moreButton.style.display = "none";
                }
            }
            
            function over(obj){
                var showmore = document.getElementById('showmore');
                var loading = document.getElementById('loading');
                
                showmore.style.position = "relative";
                showmore.style.top = 1;
                showmore.style.left = 1;
                
                showmore.style.display = "none"
                
                loading.style.display = "block";
                
                if (window.news) {
                    window.news.getMore();
                }
                
            }
            
            function goMoreTie(){
            
            	if (window.news) {
                    window.news.goMoreTie();
                }
            
            }
            
           
            function isLink(node){
                var node = node;
                // 如果是相关新闻就作为超链接处理
                if(node.id.indexOf("relative_") != -1) {
                	return true;
                }
                
                while (node && node.nodeName && node.nodeName != "A" && node.nodeName != "IMG") {
                    if (node.nodeName == "HTML") 
                        return false;
                    node = node.parentNode;
                }
                return true;
            }
            
			function clickEvent(){
                if (isLink(event.target)) return;	
            }
			
            document.addEventListener('click', clickEvent,  false);		
			
			// 修改相关新闻字体
			function showRelativeNewsTextSize(size) {
				var relativeNames = document.getElementsByName("relative_name");
				for(i = 0; i < relativeNames.length; i++) {
					relativeNames[i].style.fontSize = size + "px";
				}
			}
			
			function showSuperBigSize() {
				myBody.style.fontSize = "26px";
				myBody.style.lineHeight = "160%";
				//myMore.style.fontSize = "26px";
				//myMore.style.lineHeight = "160%";
				//showRelativeNewsTextSize(26);
			}
			
			//function showSuperBigSize4More() {
			//	myMore.style.fontSize = "26px";
			//	myMore.style.lineHeight = "160%";
			//}
			
			function showBigSize() {
				myBody.style.fontSize = "22px";
				myBody.style.lineHeight = "160%";
				//myMore.style.fontSize = "22px";
				//myMore.style.lineHeight = "160%";
				//showRelativeNewsTextSize(22);
			}
			
			function showMidSize() {
				myBody.style.fontSize = "18px";
				myBody.style.lineHeight = "150%";
				//myMore.style.fontSize = "18px";
				//myMore.style.lineHeight = "150%";
				//showRelativeNewsTextSize(18);
			}
			
			function showSmallSize() {
				myBody.style.fontSize = "16px";
				myBody.style.lineHeight = "150%";
				//myMore.style.fontSize = "16px";
				//myMore.style.lineHeight = "150%";
				//showRelativeNewsTextSize(16);
			}
			
			//function showBigSize4More() {
			//	myMore.style.fontSize = "22px";
			//	myMore.style.lineHeight = "160%";
			//}
			
			//function showMidSize4More() {
			//	myMore.style.fontSize = "18px";
			//	myMore.style.lineHeight = "150%";
			//}
			
			//function showSmallSize4More() {
			//	myMore.style.fontSize = "16px";
			//	myMore.style.lineHeight = "150%";
			//}

			function zoomOut(i){
                if (window.news) {
                    var largepic = document.getElementById('largepic'+i);
                    var imgcontent = document.getElementById("imgContent_" + i);
                    var percent = document.getElementById("percent_" + i);

                    if(percent != null && 
                        (percent.src == 'file:///android_asset/big_reload_img.png' || 
                         percent.src == 'file:///android_asset/small_reload_img.png')) {

                        if(null != imgcontent) {
                            imgcontent.src = 'file:///android_asset/null_src.png';    
                        }
                        window.news.reloadImg(i);
                        return;
                    }
                    //if(imgcontent.src.indexOf('android_asset') == -1) { // 已经加载完图片
                    if(percent == null || percent.style.visibility == 'hidden') { // 已经加载完图片
                        if(largepic.style.display=='none'){
                        
                        }else{
                            window.news.showBigPic(i);
                        }    
                    }
                }
            }

			function setAddImgShowAndImgContent(i, imgUrl, width, height, finalWidth, finalHeight, offsetX, isFixedParam){
				var imgadd = document.getElementById("imgAdd_" + i);
				var imgcontent = document.getElementById("imgContent_" + i);
                var imgVideo = document.getElementById("videoImg_" + i);

				if(null != imgadd) {
                    imgadd.style.display = 'block';
                }

                if(null != imgcontent) {
                    if(isFixedParam == 1) {
                        var rectRight = parseInt(offsetX) + parseInt(finalWidth);
                        imgcontent.style.left = "-" + offsetX + "px";
                        imgcontent.style.clip = "rect(auto, " + rectRight + "px, " + finalHeight + "px, " + offsetX + "px)";
                        imgcontent.style.width = width + "px";
                        imgcontent.style.height = height + "px";
                    }

                    if(imgUrl != "big_reload_img.png" && imgUrl != "small_reload_img.png") {
                        imgcontent.src = imgUrl;    
                    }
                }

                if(imgUrl != "big_reload_img.png" && imgUrl != "small_reload_img.png") {
                    if(imgVideo) {
                        imgVideo.style.visibility = "visible";    
                    }
                    document.getElementById("percent_" + i).style.visibility = "hidden";
                } else {
                    document.getElementById("percent_" + i).src = "file:///android_asset/" + imgUrl;
                }
			}

            function updateProgress(i, percent, isBigImg, isTablet) {
                if(percent == 0) {
                    var imgVideo = document.getElementById("videoImg_" + i);
                    if(imgVideo != null) {
                        imgVideo.style.visibility = "hidden";                    
                    }
                }

                var state = Math.floor(percent / 10);                
                if(state > 9) {
                    state = 9;  //不显示100%
                } else if (state < 0) {
                    state = 0;
                }

                var url;
                if(isBigImg) {
                    url = "file:///android_asset/img/loading" + state + ".png";
                } else {
                    url = "file:///android_asset/img/small_loading" + state + ".png";
                }
                document.getElementById("percent_" + i).src = url;
            }
			
			function toRelative(i){
				if(window.news){
            		window.news.toRelative(i);
            	}
			}
			
			function setRelativeIsRead(obj){
				var ids = obj.split(",");
				for(var i = 0; i < ids.length; i ++){
					document.getElementById("relative_" + ids[i]).style.color='#8E8E8E';
				}
			}
			
			function subscribeNews(tname, tid) {
			    if (window.news) {
			        window.news.subscribeNews(tname, tid);
			    }
			}

            function doAdAction(index) {
                if (window.news) {
                    window.news.doAdAction(index);
                }
            }

            function getAdText() {
                ad = document.getElementById('ad_div');
                if (!ad) {
                    return;
                }
                if (window.news) {
                   ad.innerHTML = window.news.getAdText();
                }
                
            }
            
            function goLocalNewsList() {
                if (window.news) {
                    window.news.goLocalNewsList();
                }
            }
			
			//跟帖相关函数
			function getHotBody(count) {
				init();
				myBody = document.getElementById('article_body');
	
				
				var pre = document.createElement('div');
				pre.className = "columnstyle";
				pre.style.clear = "both";
				pre.innerHTML = getJsString(0);//"相关跟贴";
				myBody.appendChild(pre);
				
				
			    var jobjArray;
			    var non = 0;
			    for (var i = 0; i < count; i++) {
			        jobjArray = eval("("+getHotCommentBuildingData(i)+")");
			        non = getHotNonValue(i);
			        buildComments(jobjArray, non);
    			}
    			//append by zhangyp

	             var showmoretie = document.createElement('div');
	             showmoretie.align = "center";
	             showmoretie.innerHTML = "<input type='button' class='tieMorebutton' onclick='goMoreTie()' value='"+getJsString(1)+"'/>";
	             myBody.appendChild(showmoretie);
    			
			}
			//
			
			function getHotCommentBuildingData(index){
			    var jobjArray;
			    if (window.news) {
			        jobjArray = window.news.getHotCommentBuilding(index);
			    }
			    return jobjArray;
			}
			//
			function getHotNonValue(index){
			    var length = 0;
			    if (window.news) {
			        length = window.news.getHotNonValue(index);
			    }
			    return length;
			}
			//
			function buildComments(jobjArray, non){
				
			    if (jobjArray == null || jobjArray.length == 0) 
			        return;
			    
			    var comment = document.createElement('div');
			    comment.className = "inner innerFace commentBody";
				
				var v = jobjArray[0].v;
				var p = jobjArray[0].p;
				
				voteArray[p] = v;

				/* comment.onclick = function(){
					
					if(!expand) {		    
					    showToolBar(voteArray[p], p);
					} else {
					   expand = false;
					}
			    }; */
			    
			    var author = document.createElement('span');
			    author.className = "from-logon";
			    author.innerHTML = jobjArray[0].f;
			
			    
			    var posttime = document.createElement('span');
			    posttime.className = "postTime";
			    posttime.innerHTML = jobjArray[0].t;
			 
			    
			    var body = document.createElement('div');
			    body.className = "contentBody";
			    
			    var commentBox = getCommentBuilding(jobjArray, non);
			    
			    var content = document.createElement('div');
			    content.className = "content";
			    content.innerHTML = jobjArray[0].b;
			
			    
			    var divider = document.createElement('div');
			    divider.className = "line_divider";
			    divider.innerHTML = "&nbsp;";

			    
			    comment.appendChild(author);
			    comment.appendChild(posttime);
			    body.appendChild(commentBox);
			    body.appendChild(content);
			    comment.appendChild(body);
			    comment.appendChild(divider);

			    
			    myBody = document.getElementById('article_body');
			    myBody.appendChild(comment);
			}
			
			function getCommentBuilding(jobjArray, non){
			    var num = jobjArray.length;
		
			    if (num < 2) 
			        return document.createElement('div');
			    
			    var nonValue = 0;
			    if (non > 0) 
			        nonValue = non - topHideNum - bottomHideNum;
			    var commentBox = buildRootCommentBox(jobjArray[1], num - 1 + nonValue, jobjArray[0].p);
			    var childCommentBox;
			    var box = commentBox;
			    for (var i = 2; i < num; i++) {
			        childCommentBox = box.childNodes[0];
			        if (non > 0) {
			            if (i == topHideNum) {            
			                box.insertBefore(setHideTips(getPid(jobjArray[0].p)), childCommentBox);
			                box = box.childNodes[0];
			            }
			            if (i == num - 1) {
			                box.insertBefore(buildTopCommentBox(jobjArray[i], num - i), childCommentBox);
			            }
			            else 
			                if (i >= topHideNum) {
			                    box.insertBefore(buildMidCommentBox(jobjArray[i], num - i), box.childNodes[0]);
			                }
			            
			        }
			        else {
			            if (i > 4) {
			                if (i == num - 1) {
			                    box.insertBefore(buildTopCommentBox(jobjArray[i], num - i), childCommentBox);
			                }
			                else {
			                    box.insertBefore(buildMidCommentBox(jobjArray[i], num - i), childCommentBox);
			                }
			            }
			            else {
			                box.insertBefore(buildCommentBox(jobjArray[i], num - i), childCommentBox);
			                box = box.childNodes[0];
			            }
			        }
			    }
			    
			    return commentBox;
			}
			
			function buildRootCommentBox(jobj, fc, p){
			    var commentBox = buildCommentBox(jobj, fc);
			    commentBox.id = p;
			    return commentBox;
			}
			
			//楼层隐藏操作
			function setHideTips(id){
			    var hideTips = document.createElement('p');
			    hideTips.className = "commentBox";
			    
			    var content = document.createElement('p');
			    content.className = "hideTips";
			    content.innerText = getJsString(2);//"查看隐藏楼层";
			    content.onclick = function(){
			        content.innerText = getJsString(3);//"正在打开隐藏楼层...";
			        expand = true;
			        startWholeCommentTask(id);
			    };
			    
			    hideTips.appendChild(content);
			    return hideTips;
			}
			
			function buildTopCommentBox(jobj, fc){
			    var commentBox = buildCommentBox(jobj, fc);
			    commentBox.className = "commentBox topCommentBox commentBox-hover";
			    
			    return commentBox;
			}
			
			function buildMidCommentBox(jobj, fc){
			    var commentBox = buildCommentBox(jobj, fc);
			    commentBox.className = "commentBox midOfCommentBox commentBox-hover";
			    
			    return commentBox;
			}
			
			function buildCommentBox(jobj, fc){
			    var commentBox = document.createElement('div');
			    commentBox.className = "commentBox commentBox-hover";
			    //commentBox.id = jobj.p;
			    
			    commentBox.appendChild(buildCommentInfo(jobj.f, fc));
			    commentBox.appendChild(buildCommentContent(jobj.b));
			    return commentBox;
			}
			
			function startWholeCommentTask(id){
			    if (window.news) {
			        window.news.startWholeCommentTask(id);
			    }
			}
			
			function print(text){
			    if (window.news) {
			        window.news.print(text);
			    }
			}

			function getJsString(i){
            			    if (window.news) {
            			        return window.news.getJsString(i);
            			    }
            			    return "";
            			}
			
 		function init(){
				initHideNums();
			    var loadtext = document.createElement('div');
			    loadtext.innerText = getJsString(4);//"正在加载...";
			    loadtext.id = "load_text";
			//	document.body.className = "body";
//			    document.body.appendChild(loadtext);
			} 
			
			function initHideNums() {
				hideConditionNum = getCommentHideConditionNum();
				topHideNum = getCommentTopHideNum();
				bottomHideNum = getCommentBottomHideNum();
			}
			
			function getCommentHideConditionNum(){
			    var length = 0;
			    if (window.news) {
			        length = window.news.getCommentHideConditionNum();
			    }
			    return length;
			}
			
			function getCommentTopHideNum(){
			    var length = 0;
			    if (window.news) {
			        length = window.news.getCommentTopHideNum();
			    }
			    return length;
			}

			function getCommentBottomHideNum(){
			    var length = 0;
			    if (window.news) {
			        length = window.news.getCommentBottomHideNum();
			    }
			    return length;
			}
			
			function startCommentTask(type){
			    if (window.news) {
			        window.news.startCommentTask(type);
			    }
			}
			
			function buildCommentContent(c){
			    var content = document.createElement('p');
			    content.className = "content";
			    content.innerHTML = c;
			    
			    return content;
			}
			
			function buildCommentInfo(an, fc){
			    var commentInfo = document.createElement('div');
			    commentInfo.className = "commentInfo";
			    commentInfo.id = "commentInfo";
			    
			    var author = document.createElement('span');
			    author.className = "author";
			    author.innerHTML = an;
			    
			    var floorCount = document.createElement('span');
			    floorCount.className = "floorCount";
			    floorCount.innerHTML = fc;
			    
			    commentInfo.appendChild(author);
			    commentInfo.appendChild(floorCount);
			    
			    return commentInfo;
			}
			
			function getWholeCommentBuildingData(jobjArray, id){
			    var array = eval(jobjArray);
			     
			    expandBuildingComment(array, id);
			}
			
			function expandBuildingComment(jobjArray, id){
				var pid = getPid(id);
			    var commentBox = document.getElementById(pid);
			    commentBox.removeChild(commentBox.firstChild);
			    var childCommentBox;
			    var box = commentBox;
			    var len = jobjArray.length;

			    for (var i = 2; i < len; i++) {
			        childCommentBox = box.childNodes[0];
			        if (i > 4) {
			            if (i == len - 1) {
			                box.insertBefore(buildTopCommentBox(jobjArray[i], len - i), childCommentBox);
			            }
			            else {
			                box.insertBefore(buildMidCommentBox(jobjArray[i], len - i), childCommentBox);
			            }
			        }
			        else {
			            box.insertBefore(buildCommentBox(jobjArray[i], len - i), childCommentBox);
			            box = box.childNodes[0];
			        }
			    }
			    
			}

			
			//
						
            window.onload = function(){
                initialize();
            }
            
            /*以下为彩票js*/
            	function initCaipiao() {
            		btnRandom = document.getElementById("btnRandom")
            		if (!btnRandom) {
            			return;
            		}
            		
            		btnRandom.onclick = function(){
				var i=0, t = window.setInterval(function(){
					i++; randomOne();
					if( i >= 5 )window.clearInterval(t);
				}, 70);
				randomOne();
			};
			randomOne();
			
			btnBetNow.onclick = function(){
				redBalls = document.getElementsByName("ssq_red");
				blueBall = document.getElementsByName("ssq_blue")[0];
				var red = [], blue, num, i=0;
				for(; i<6; i++){
					num = redBalls[i].value.replace(/\D/g, "");
					if( !num || +num < 1 || +num > 33 || red.indexOf(+num)>=0 ){
						redBalls[i].select();
						return;
					}
					red[i] = +num;
					red[i] = ("0"+red[i]).slice(-2);
				}
				blue = blueBall.value;
				if( !blue || +blue < 1 || +blue > 16  ){
					blueBall.select();
					return;
				}
				blue = ("0"+blue).slice(-2);
				betNow(red, blue);
			};
            	}
            
            
            	function randomOne(){
            		redBalls = document.getElementsByName("ssq_red");
			blueBall = document.getElementsByName("ssq_blue")[0];
			var red = [], blue, num, i;
			while(red.length < 6){
				num = parseInt(Math.random()*33 + 1);
				if( red.indexOf(num) < 0 )
					red.push(num);
			}
			blue = parseInt(Math.random()*16 + 1);
			//sort
			red = red.sort(function(a,b){return a-b});
			//更新Dom
			for(i=0; i<6; i++)
				redBalls[i].value = ("0"+red[i]).slice(-2);
			blueBall.value = ("0"+blue).slice(-2);
		}
		
		function btnRandomClick(){
			var i=0, t = window.setInterval(function(){
				i++; randomOne();
				if( i >= 5 )window.clearInterval(t);
				}, 70);
			randomOne();
		}
		
		function betNow( redArr, blue ){
			//这里的通知代码请客户端同学补充吧
			numstr = redArr.join(" ")+":"+ blue;
			goToCaipiaoBet(numstr);
			//alert(numstr);
			//window.location.href="http://caipiao.163.com/m/order/preBetssq.html?gameEn=ssq&stakeNumbers="+redArr.join(" ")+":"+ blue;
		}
		
		function goToCaipiaoBet(num) {
			if (window.news) {
			        window.news.goToCaipiaoBet(num);
			}
		}
		
		function goToCaipiaoClientDownload() {
			if (window.news) {
			        window.news.goToCaipiaoClientDownload();
			}
		}
			            
            /*以上为彩票js*/
		
		/*************************投票开始**************************************************************/
		// 替换投票div
		function replaceVote(vote_html) {
			myVote = document.getElementById("vote_container");
			myVote.innerHTML = vote_html;
			var vote_is_voted = document.getElementById("vote_is_voted");
			if(vote_is_voted) {
				buildVoteResults();
			}
			voteOptionButtonLoaded();
		}
		
		function replaceVoteData(vote_html) {
			myVote = document.getElementById("vote_container");
			myVote.innerHTML = vote_html;
		}
		
		//点击投票
		function checkVoteOption(voteId, itemId, sum_num)
		{
			if(window.news) {
				//java方法submitVote
				var flage = window.news.submitVote(voteId, itemId);
				if(flage) {
					document.getElementById("vote_sumnum").innerText = String(sum_num + 1) + '人';
					buildVoteResults();
				}
			}
			
		}
		
		function multivotesubmit(voteId,itemId,num){
			var item="";
			if(window.news){
			var buttons = document.getElementById("vote_body").getElementsByTagName("img");
			for(i=0;i<buttons.length;i++){
            		var imgcontent = buttons[i];
            		var src=imgcontent.src;
            		if(src=='file:///android_asset/topic_subscribed.png' || src=='file:///android_asset/night_topic_subscribed.png'){
            			item=item+","+itemId[i];
            		}
            	}
			
			if(null!=item && item.length>1){
				var flag=window.news.multisubmit(voteId,item);
				if(flag){
					buildMultivoteVoteResults();
				}
			}
			}
		}
		
		function voteItemSelected(e, i) {
        	if(window.news){
        		var imgcontent = document.getElementById("vote_img_" + i);
        		var src=imgcontent.src;
        		if(src=='file:///android_asset/topic_subscribed.png'){
        			
        			imgcontent.src='file:///android_asset/topic_not_subscribed.png';
        				
        		}else if(src=='file:///android_asset/night_topic_subscribed.png'){
        			
        			imgcontent.src='file:///android_asset/night_topic_not_subscribed.png';
        				
        		}else if(src=='file:///android_asset/topic_not_subscribed.png'){
        			
        			imgcontent.src='file:///android_asset/topic_subscribed.png';
        				
        		}else if(src=='file:///android_asset/night_topic_not_subscribed.png'){
        			
        			imgcontent.src='file:///android_asset/night_topic_subscribed.png';
        				
        		}
        		
        	}
        	stopEventBubble(e); 
        }

		
		function buildVoteResults()
        {
            var buttons = document.getElementById("vote_body").getElementsByTagName("a");
            var colors = ["#6b96d1","#64a342","#b71925","#dd6b17"];
            var lastPercent = 0;
            for (var i = 0; i < buttons.length; i++) {
                var button = buttons[i];
                //更改文字样式
                button.onclick = "";
                button.className = "vote_resultTitle no_tc";
                //添加进度条
                var percentage = button.getAttribute("percentage");
                var item = button.parentElement;
                var statisticBar = document.createElement("b");
                statisticBar.className = "vote_statisticBar";
                statisticBar.style.background = colors[i % colors.length];
                statisticBar.onload = statisticBarLoaded(statisticBar,percentage);
                item.appendChild(statisticBar);            
                //百分比数字
                var statisticLabel = document.createElement("span");
                if (i == buttons.length - 1) {
                    lastPercent = 100 - lastPercent;
                    if (lastPercent < 0) {
                        lastPercent = 0;
                    }
                    statisticLabel.innerText = lastPercent + "%";
                } else {
                    currentPercent = formatFloat(percentage);
                    lastPercent += currentPercent;
                    statisticLabel.innerText = currentPercent + "%";
                }
                
                item.appendChild(statisticLabel);
            }
        }
		function buildMultivoteVoteResults()
		{
			var buttons = document.getElementById("vote_body").getElementsByTagName("img");
		    var colors = ["#6b96d1","#64a342","#b71925","#dd6b17"];
		    var lastPercent = 0;
		    var num=buttons.length;
		    for (var i = 0; i < num; i++) {
		    	 var button = buttons[0];
		    	 var percentitem = document.createElement("div");
		    	 var statisticBar = document.createElement("div");
				    percentitem.onclick = "";
				    var item = button.parentElement;
			        percentitem.style.marginLeft="10px";
			        statisticBar.className = "multi_vote_statisticBar";
			        statisticBar.style.background = colors[i % colors.length];
			        var percentage = button.getAttribute("percentage"); 
			        statisticBar.onload = statisticBarLoaded(statisticBar,percentage);
			        percentitem.appendChild(statisticBar);
			        
			        //百分比数字
			        var statisticLabel = document.createElement("span");
			        statisticLabel.className="multi_vote_percent";
			        if (i == num - 1) {
			        	lastPercent = 100 - lastPercent;
			        	if (lastPercent < 0) {
			        		lastPercent = 0;
			        	}
			        	statisticLabel.innerText = lastPercent + "%";
			        } else {
			        	currentPercent = formatFloat(percentage);
			        	lastPercent += currentPercent;
			        	statisticLabel.innerText = currentPercent + "%";
			        }
			   
			    percentitem.appendChild(statisticLabel);
			    item.appendChild(percentitem); 
			    item.removeChild(button);
		    }
		    var submit = document.getElementById("votesubmit");
		    submit.parentNode.removeChild(submit);
		    var votenum=document.getElementById("vote_sumnum");
		    var reg = new RegExp(/\d*/);
		    var str = votenum.innerText;
		    var arrMactches = str.match(reg)
		    if(null!=arrMactches && arrMactches.length>0){
		    	var i = new Number(arrMactches[0]) 
		    	votenum.innerText=(i+1)+"人";
		    }
		}
		
		function formatFloat(number) {
		    return Math.round(number*100);
		}
		
		function getwidth(number){
			if(number==0){
				return 30;
			}
			return Math.round(number*350/100);
		}

		function updateVoteStatus(status)
		{
		    document.getElementById("vote_status").innerText = status;
		}

		function voteOptionButtonLoaded()
		{
		    var buttons = document.getElementById("vote_body").getElementsByTagName("a");
		    for (var i = 0; i < buttons.length; i++) {
		        var button = buttons[i];
		        button.addEventListener('touchstart', function(){
		            this.setAttribute("hover",true);
		        }, false);
		        button.addEventListener('touchend', function(){
		            this.removeAttribute("hover");
		        }, false);
		    }
		}

		function statisticBarLoaded(element,percentage){
			 var pos, runTime,
	            startTime = + new Date,
	            timer = setInterval(function () {
	                    runTime = + new Date - startTime;
	                    pos = runTime / 200;

	                    if (pos >= 1) {
	                        clearInterval(timer);
	                        element.style.width = 90*percentage + '%';
	                    } else {
	                        element.style.width = 90*percentage*pos + '%';
	                    };
	            }, 13);
		}
		
		function toAppLink(softid,appid){
			softid = softid+"";
			appid = appid+"";
			 if (window.news) {
				 window.news.gotoNetApp(softid, appid);
             }
		}
		/*************************投票结束**************************************************************/
