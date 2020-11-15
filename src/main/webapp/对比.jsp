<%--
  Created by IntelliJ IDEA.
  User: 13602
  Date: 2020/11/6
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=5; IE=8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Code</title></head>
<style type="text/css">
    body,html{padding: 0;margin: 0;width:100%;height:100%;background-color:#000;
        color :#999;} #a1,#free,#loading,#error{padding: 0;margin: 0;width:100%;height:100%;background-color:#000;
                          color:#999 ;} a{color:#000}
</style>
<body>
<div id="a1"></div>
<script src="https://js.jialingmm.net/js/DPlayer.min.js"></script>
<script src="https://js.jialingmm.net/js/hls.min.js"></script>
<link rel="stylesheet" href="https://js.jialingmm.net/js/DPlayer.min.css">
<script src='http://cache.m.iqiyi.com/jp/tmts/304284400/8ff19ab4cf4da964c81a8980ab2be506/?t=1604665184000&sc=a90f362353b608d54c64dea66d8d4415&src=76f90cbd92f94a2e925d83e8ccd22cb7'></script>
<script type="text/javascript">


    ///////////////////////////////////////
    var code=tvInfoJs["code"];
    if(code=='A00111')
    {
        //  parent.location.href="https://www.nxflv.com/?url=8ff19ab4cf4da964c81a8980ab2be506,304284400&type=qiyi";
    }
    var cip=tvInfoJs["data"]["vidl"];
    //console.log(cip.length);
    for(var i=0,l=cip.length;i<l;i++){
        for(var key in cip[i]){
            if(cip[i].vd==14||cip[i].vd==17||cip[i].vd==21||cip[i].vd==1||cip[i].vd==96)
            {

            }else{
                console.log(cip[i].vd);
                if(cip[i].vd==4)
                {
                    var m3u=cip[i].m3u;

                }else{
                    var m3=cip[i].m3u;
                }

            }

        }
    }
    console.log(m3);
    var video=m3u;
    if(video == "undefined" || video == null || video == "")
    {
        video=m3;
    }

    var isWap = '0';
    if (isWap == 1) {
        document.getElementById('a1').innerHTML = '<video id="videoId" poster="http://wx2.sinaimg.cn/large/88a6d2afly1ftvv6vnj33g20jq0dwaar.gif" src="'+video+'" width="100%" height="100%" controls="controls"></video>';
    }else{
        var dpVideo = {
            quality: [
                {
                    name: '原画',
                    url: video,
                    type: 'mp4'
                }
            ],
            defaultQuality: 0,
            pic: "https://wxt.sinaimg.cn/large/88a6d2afly1ftvv6vnj33g20jq0dwaar.gif"
        };
        var dp = new DPlayer({
            element: document.getElementById('a1'),
            autoplay: true,
            theme: "#e2e6ee",
            loop: false,
            screenshot: false,
            hotkey: true,
            preload: "auto",
            video: dpVideo
        });
    }

</script>
<div style="display:none;"><script src="https://s11.cnzz.com/z_stat.php?id=1261531716&web_id=1261531716" language="JavaScript"></script></div>
</body>
</html>