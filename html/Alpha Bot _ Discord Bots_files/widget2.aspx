

var widget623317 = {};
                        
widget623317.scriptUrl = "http://api.content-ad.net/Scripts/widget2.aspx?id=4f85efc7-95e0-41e8-8c38-c3a06342ca88&d=ZGlzY29yZGJvdHMub3Jn&wid=623317&cb=1555400356983";
widget623317.b64={key:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",decode:function(input){var output="";var chr1,chr2,chr3;var enc1,enc2,enc3,enc4;var i=0;input=input.replace(/[^A-Za-z0-9\+\/\=]/g,"");while(i<input.length){enc1=this.key.indexOf(input.charAt(i++));enc2=this.key.indexOf(input.charAt(i++));enc3=this.key.indexOf(input.charAt(i++));enc4=this.key.indexOf(input.charAt(i++));chr1=(enc1<<2)|(enc2>>4);chr2=((enc2&15)<<4)|(enc3>>2);chr3=((enc3&3)<<6)|enc4;output=output+String.fromCharCode(chr1);if(enc3!=64){output=output+String.fromCharCode(chr2)}if(enc4!=64){output=output+String.fromCharCode(chr3)}}return output}};
widget623317.readCookie = function (name) {
    var nameWithEqual = name + "=";
    var params = document.cookie.split(';');
    for(var i = 0; i < params.length; i++) {
        var nameValuePair = params[i];
        while (nameValuePair.charAt(0) == ' ') nameValuePair = nameValuePair.substring(1, nameValuePair.length);
        if (nameValuePair.indexOf(nameWithEqual) == 0) return nameValuePair.substring(nameWithEqual.length, nameValuePair.length);
    }
    return null;
};

widget623317.updateSourceCookie = function (name, value) {
    var d = new Date();
    d.setTime(d.getTime() + (30*60*1000));
    document.cookie = name + "=" + value + ";path=/;expires=" + d.toUTCString();
};

widget623317.params = (function () {
    var result = {}, queryString = widget623317.scriptUrl.substring(widget623317.scriptUrl.indexOf("?")+1), re = /([^&=]+)=([^&]*)/g, m;
    while (m = re.exec(queryString)) {
        result[decodeURIComponent(m[1])] = decodeURIComponent(m[2]);
    }

    var scriptUrlFromDomain = widget623317.scriptUrl.substr(widget623317.scriptUrl.indexOf("://") + 3);
    var server = scriptUrlFromDomain.substr(0, scriptUrlFromDomain.indexOf("/"));
    var url = result["url"] ? decodeURIComponent(result["url"]) : decodeURIComponent(window.location);
    
    result["lazyLoad"] = (result["lazyLoad"] == true ? true : false);
    result["server"] = (result["test"] == true ? "test." + server : server);
    if (result["server"].indexOf(widget623317.b64.decode("YXBpLmNvbnRlbnQuYWQ=")) > -1) {
        result["server"] = widget623317.b64.decode("YXBpLmNvbnRlbnQtYWQubmV0");
    }
    result["title"] = (result["title"] ? result["title"] : encodeURI(escape(document.title)));
    result["url"] = encodeURIComponent(url);
    result["ik"] = encodeURI("2019041600_cdbb18d9f3abd3736a24050d75745bf5");
    result["ikb"] = encodeURI("cdbb18d9f3abd3736a24050d75745bf5");
    result["duid"] = encodeURI("e3beb51aa3f9cb820b432461457b7c92fe647b8503df0c57ed62265ff0c633d6");
    result["ls"] = encodeURI("ip-172-18-61-87");
    if (result["clientId"] !== undefined) {
        result["clientId"] = encodeURI(result["clientId"]);
    }
    if (result["clientId2"] !== undefined) {
        result["clientId2"] = encodeURI(result["clientId2"]);
    }
    
    result["dstlload"] = true;

    if (result["pre"] != undefined) {
        result["pre"] = encodeURIComponent(result["pre"]);
    }

    if (result["clientId"] === undefined && result["clientId2"] === undefined) {
        var pageParams = {}, pageQueryString = url.substring(url.indexOf("?")+1), pm;
	    while (pm = re.exec(pageQueryString)) {
	        pageParams[decodeURIComponent(pm[1])] = decodeURIComponent(pm[2]);
	    }
	    
	    
	    var source = widget623317.readCookie("source");
	    var campaign = widget623317.readCookie("campaign");
        if (pageParams["utm_source"] !== undefined && pageParams["utm_source"] !== "") {
            if (pageParams["utm_source"] !== source) {
                widget623317.updateSourceCookie("source", pageParams["utm_source"]);
            }
            result["clientId"] = encodeURI(pageParams["utm_source"]);
        } else if (source !== null && source !== "") {
            result["clientId"] = encodeURI(source);
        }

        if (pageParams["utm_campaign"] !== undefined && pageParams["utm_campaign"] !== "") {
            if (pageParams["utm_campaign"] !== campaign) {
                widget623317.updateSourceCookie("campaign", pageParams["utm_campaign"]);
            }
            result["clientId2"] = encodeURI(pageParams["utm_campaign"]);
        } else if (campaign !== null && campaign !== "") {
            result["clientId2"] = encodeURI(campaign);
        }
    }
    return result;
} ());

widget623317.paramList = [];
for (var key in widget623317.params) {
    widget623317.paramList.push(key + '=' + widget623317.params[key]);
}

widget623317.widgetUrl = (location.protocol === 'https:' ? 'https:' : 'http:') + "//" + widget623317.params.server + "/GetWidget.aspx?" + widget623317.paramList.join('&');
widget623317.isLoaded = false;

widget623317.init = function (widgetId, widgetUrl, lazyLoad, loadMultiple) {
    if (typeof (window["contentAd" + widgetId]) == 'undefined') {
        if (!widget623317.isLoaded) {
            widget623317.isLoaded = true;
            if (lazyLoad) {
                (function () {
                    function asyncLoad() {
                        var s = document.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = widgetUrl;
                        var x = document.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }
                    if (window.attachEvent)
                        window.attachEvent('onload', asyncLoad);
                    else
                        window.addEventListener('load', asyncLoad, false);
                })();
            } else {
                (function () {
                    var s = document.createElement('script');
                    s.type = 'text/javascript';
                    s.async = true;
                    s.src = widgetUrl;
                    var x = document.getElementsByTagName('script')[0];
                    x.parentNode.insertBefore(s, x);
                })();
            }
        }
        setTimeout(function () { widget623317.init(widgetId, widgetUrl, lazyLoad, loadMultiple) }, 50);
    } else {
        var content = window["contentAd" + widgetId]();
        var container = document.getElementById(widget623317.b64.decode("Y29udGVudGFk") + widgetId);
        var newDiv = document.createElement("div");
        newDiv.innerHTML = content;
        if (container === undefined || container === null) {
            var scripts = document.getElementsByTagName("script");
		    for (var i = 0; i < scripts.length; i++) {
			    if (scripts[i].innerHTML !== undefined && scripts[i].innerHTML.toLowerCase().indexOf("4f85efc7-95e0-41e8-8c38-c3a06342ca88") !== -1) {
			        scripts[i].parentNode.insertBefore(newDiv, scripts[i]);
			    }
	        }
        } else {            
            container.parentNode.insertBefore(newDiv, container);
        }
        
        if (typeof (window["initJQuery" + widgetId]) != 'undefined') {
            window["initJQuery" + widgetId]();
        }
        if (loadMultiple) {
            window["contentAd" + widgetId] = undefined;
        }
        
        if (typeof (window["widget" + widgetId]) != 'undefined' && typeof (window["widget" + widgetId].customPlacement) != 'undefined') {
            if (typeof (window["widget" + widgetId].renderCustomStyleAndHtml) != 'undefined') {
	            widget623317.customContent = window["widget" + widgetId].renderCustomStyleAndHtml();
	            widget623317.customContainer = document.createElement("div");
	            widget623317.customContainer.innerHTML = widget623317.customContent;
	            
	            if (window["widget" + widgetId].customPlacement() === 'top') {
	                newDiv.parentNode.insertBefore(widget623317.customContainer, newDiv);
	            } else {
	                newDiv.parentNode.insertBefore(widget623317.customContainer, newDiv.nextSibling);
	            }
            }
            
            if (typeof (window["widget" + widgetId].renderCustomScript) != 'undefined') {
                widget623317.customScript = window["widget" + widgetId].renderCustomScript();
                widget623317.customScriptTag = document.createElement("script");
                widget623317.customScriptTag.innerHTML = widget623317.customScript;
                
                widget623317.documentWrite = document.write;
                widget623317.customScriptOutput = document.createElement("div");
                widget623317.customScriptOutput.innerHTML = '';
				document.write = function(line) {
				    widget623317.customScriptOutput.innerHTML += line;
				}
				
                if (window["widget" + widgetId].customPlacement() === 'top') {
                    newDiv.parentNode.insertBefore(widget623317.customScriptTag, newDiv);
                    newDiv.parentNode.insertBefore(widget623317.customScriptOutput, newDiv);
                } else {
                    if (typeof (window["widget" + widgetId].renderCustomStyleAndHtml) != 'undefined') {
                        newDiv.parentNode.insertBefore(widget623317.customScriptTag, newDiv.nextSibling.nextSibling);
                        newDiv.parentNode.insertBefore(widget623317.customScriptOutput, newDiv.nextSibling.nextSibling);
                    } else {
                        newDiv.parentNode.insertBefore(widget623317.customScriptTag, newDiv.nextSibling);
                        newDiv.parentNode.insertBefore(widget623317.customScriptOutput, newDiv.nextSibling);
                    }                
                }
                
                document.write = widget623317.documentWrite;
            }
        }
    }
};

widget623317.updatePopCookie = function () {
    if (document.cookie.indexOf("popdays") == -1) {
        var d = new Date();
        if (widget623317.params.exitPopExpireDays === undefined) {
            widget623317.params.exitPopExpireDays = 0;
            d.setTime(d.getTime() + (30*60*1000));
        } else {
            d.setTime(d.getTime() + (widget623317.params.exitPopExpireDays*24*60*60*1000));
        }
        document.cookie = "popdays=" + widget623317.params.exitPopExpireDays + ";path=/;expires=" + d.toUTCString();

        widget623317.init(widget623317.params.wid, widget623317.widgetUrl, widget623317.params.lazyLoad, widget623317.params.loadMultiple);
    } else {
        if (widget623317.params.exitPopExpireDays > 0 && widget623317.readCookie("popdays") != widget623317.params.exitPopExpireDays) {
            var d = new Date();
            d.setTime(d.getTime() + (widget623317.params.exitPopExpireDays*24*60*60*1000));
            document.cookie = "popdays=" + widget623317.params.exitPopExpireDays + ";path=/;expires=" + d.toUTCString();
        } else if (widget623317.params.exitPopExpireDays <= 0) {
            document.cookie = "popdays=-1;path=/;expires=Thu, 01 Jan 1970 00:00:01 GMT";
            widget623317.init(widget623317.params.wid, widget623317.widgetUrl, widget623317.params.lazyLoad, widget623317.params.loadMultiple);
        } else if (widget623317.params.exitPopExpireDays === undefined && widget623317.readCookie("popdays") > 0) {
            var d = new Date();
            d.setTime(d.getTime() + (30*60*1000));
            document.cookie = "popdays=0;path=/;expires=" + d.toUTCString();
        }
    }
};

widget623317.scrollChange = function () {
    var totalHeight, currentScroll, visibleHeight;
      
    if (document.documentElement.scrollTop) {
        currentScroll = document.documentElement.scrollTop;
    } else { 
        currentScroll = document.body.scrollTop;
    }
      
    totalHeight = document.body.offsetHeight;
    visibleHeight = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
    var tempScroll = currentScroll + visibleHeight;
    var atEndOfPage = totalHeight <= tempScroll + (totalHeight * 0.10);
    var isScrollingUp = tempScroll < widget623317.lowestScroll;
    var hasScrolledDown = widget623317.lowestScroll > 100;
    
    if (widget623317.lowestScroll === undefined || tempScroll > widget623317.lowestScroll) {
        widget623317.lowestScroll = tempScroll;
    }

    if ((atEndOfPage || (hasScrolledDown && isScrollingUp)) && !widget623317.isLoaded) {
        widget623317.updatePopCookie();
    }
};

widget623317.mouseCoordinates = function (e) {
    var tempX = 0, tempY = 0;

    if (!e) var e = window.event;
    tempX = e.clientX;
    tempY = e.clientY;
        
    if (tempX < 0) tempX = 0;
    if (tempY < 0) tempY = 0;
    
    if (widget623317.lowestY === undefined || tempY > widget623317.lowestY) {
        widget623317.lowestY = tempY;
    }
    
    if (tempY <= 20 && tempY < widget623317.lowestY && widget623317.lowestY > 100 && !widget623317.isLoaded) {
        widget623317.updatePopCookie();
    }
};

widget623317.exitPopMobile = false;
if (widget623317.params.exitPopMobile === 'true' || widget623317.params.exitPopMobile === '1') {
    widget623317.exitPopMobile = true;
    var touchEnabled = ('ontouchstart' in window) || (window.DocumentTouch && document instanceof DocumentTouch);
    var isMobile = false;
    if (navigator.userAgent !== undefined) {
        var userAgent = navigator.userAgent.toLowerCase();
        var iPhoneIndex = userAgent.indexOf("iphone");
        var iPadIndex = userAgent.indexOf("ipad");
        var isIPhone = (iPhoneIndex !== -1 && iPadIndex === -1) || (iPhoneIndex !== -1 && iPhoneIndex < iPadIndex);
        var isAndroid = userAgent.indexOf("android") !== -1 && userAgent.indexOf("mobile") !== -1;
        var isOtherMobile = userAgent.match(/^.*?(ipod|blackberry|mini|windows\\sce|palm|phone|mobile|smartphone|iemobile).*?$/) != null;
        isMobile = isIPhone || isAndroid || isOtherMobile;
    }
    
    if (touchEnabled && isMobile) {
        setInterval(widget623317.scrollChange, 50);
    }
}

widget623317.exitPop = false;
if (widget623317.params.exitPop === 'true' || widget623317.params.exitPop === '1') {
    widget623317.exitPop = true;
    if (widget623317.params.exitPopExpireDays === undefined && widget623317.readCookie("popdays") == 0) {
        var d = new Date();
        d.setTime(d.getTime() + (30*60*1000));
        document.cookie = "popdays=0;path=/;expires=" + d.toUTCString();
    }
    var isInternetExplorer = document.all ? true : false;
    if (!isInternetExplorer) document.captureEvents(Event.MOUSEMOVE);
    try {
        document.addEventListener('mousemove', widget623317.mouseCoordinates, false);
    } catch (e) {
        document.attachEvent('onmousemove', widget623317.mouseCoordinates);
    } finally {
        try {
            if (document.onmousemove) {
                var oldOnMouseMove = document.onmousemove;
                document.onmousemove = function(e) {
                    oldOnMouseMove(e);
                    widget623317.mouseCoordinates(e);
                };
            } else {
                document.onmousemove = function(e) {
                   widget623317.mouseCoordinates(e);
                };
            }
        } catch(e) {
        
        }
    }
} 

if (!widget623317.exitPop && !widget623317.exitPopMobile) {
    widget623317.init(widget623317.params.wid, widget623317.widgetUrl, widget623317.params.lazyLoad, widget623317.params.loadMultiple);
}