window.urlParams = function(paramName) {
  var reg = new RegExp('[?&]' + paramName + '=([^&]*)[&]?', 'i')
  var paramVal = window.location.search.match(reg)
  return paramVal == null ? '' : decodeURIComponent(paramVal[1])
}

window.uuid = function() {
  var s = []
  var hexDigits = '0123456789abcdef'
  for (var i = 0; i < 36; i++) {
    s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1)
  }
  s[14] = '4' // bits 12-15 of the time_hi_and_version field to 0010
  s[19] = hexDigits.substr((s[19] & 0x3) | 0x8, 1) // bits 6-7 of the clock_seq_hi_and_reserved to 01
  s[8] = s[13] = s[18] = s[23] = '-'
  var uuid = s.join('')
  return uuid
}


window.getUserInfo = function() {
  userInfo = localStorage.getItem('pro__Login_Userinfo')
  if(userInfo){
    userInfo = JSON.parse(userInfo).value
    console.log(userInfo)
    return userInfo
  }
}

window.getUserRole = function(){
  userRole = localStorage.getItem('pro__Login_UserRole')
  if(userRole){
    userRole = JSON.parse(userRole).value
    console.log(userRole)
    return userRole
  }
}

window.getUserToken = function() {
  var token = JSON.parse(localStorage.getItem("pro__Access-Token"))
  return token==null?null:token.value
}

window.getWorkInfo = function(workId, cb) {
  $.ajax({
    url: '/api/teaching/teachingWork/studentWorkInfo',
    data: { workId: workId },
    success: function (res) {
      if (res.code == 0) {
        cb(res.result)
      }
    },
    error: function (e) {
    }
  })
}

//获取Scratch素材库  1背景 2声音 3造型 4角色
window.getScratchAssets = function(assetType, cb){
  let data;
  $.ajax({
    url: '/api/teaching/teachingScratchAssets/getScratchAssets?assetType='+assetType,
    beforeSend: function (request) {
      request.setRequestHeader('X-Access-Token', getUserToken())
    },
    async: cb!=undefined,
    success: function (res) {
      if(cb){
        cb(res)
      }else{
        data = res
      }
    },
  });
  return data
}

window.getQiniuToken = function() {
  var qn_token;
  $.ajax({
    url: '/api/common/qiniu/getToken?t=' + new Date().getTime(),
    beforeSend: function(request) {
      request.setRequestHeader('X-Access-Token', getUserToken())
    },
    async: false,
    success: function(res) {
      console.log(res)
      if (res.code == 200) {
        qn_token = res.result
      } else {
        //alert(res.message)
      }
    },
    error: function(e) {
      if (e.responseJSON.status == 500) {
        //alert(e.responseJSON.message);
        // location.href = '/'
      }
      console.log(e)
    }
  });
  return qn_token;
}


  //上传文件
  function uploadFile(fileName, fileTag, filePath, fileLocation) {
    var id = null;
    $.ajax({
      url: '/api/system/sysFile/add',
      type: 'POST',
      dataType: 'json',
      contentType: 'application/json',
      async: false,
      beforeSend: function (request) {
        request.setRequestHeader('X-Access-Token', getUserToken())
      },
      data: JSON.stringify({
        fileType: 2,
        fileName: fileName,
        filePath: filePath,
        fileLocation: fileLocation,
        fileTag: fileTag
      }),
      success: function (res) {
        if (res.success) {
          id = res.result.id
        }
      },
      error: function () {
      },
      complete: function () {
      }
    })
    return id;
  }

  function getUnitInfo(unitId, cb){
    $.ajax({
      url: '/api/teaching/teachingCourseUnit/getUnitWorkInfo',
      data: {
        unitId: unitId
      },
      beforeSend: function(request) {
        request.setRequestHeader('X-Access-Token', getUserToken())
      },
      success: function(res) {
        console.log(res)
        if (res.success) {
          cb(res.result)
        } else {
          alert("老师还没有上传作业文件")
        }
      },
      error: function(e) {
        if (e.responseJSON.status == 500) {}
      }
    })
  }

  
  function upload2Qiniu(file, key, fileName, observer) {
    var config = {
      useCdnDomain: true,
      region: qiniu.region[JSON.parse(localStorage.getItem("CONFIG")).qn_area],
      disableStatisticsReport: true
    }
    var putExtra = {
      fname: fileName, //文件原名
      params: {},
      mimeType: null
    }
    var observable = qiniu.upload(file, key, qn_token, putExtra, config)
    var subscription = observable.subscribe(observer)
  }

  function update2Local(file,filename,bizPath, cb){
    let uploadApi = JSON.parse(localStorage.getItem("CONFIG")).domianURL+"/sys/common/upload"

    var formData = new FormData();
    formData.append("file",file, filename);
    formData.append("bizPath",bizPath);

    $.ajax({
      url: uploadApi,
      type: 'POST',
      cache: false,
      data: formData,
      processData: false,
      contentType: false,
      beforeSend: function(request) {
        request.setRequestHeader('X-Access-Token', getUserToken())
      },
      success: function (result) {
        if(cb){
          cb(result)
        }
      },
      error: function (err) {
        console.log(err);
        alert("文件上传失败")
      }
    })

  }

function createCode(id, src) {
  $('#' + id).html('')
  var qrcode = new QRCode(document.getElementById(id), {
    width: 250,
    height: 250
  })
  qrcode.makeCode(src)
}

function dataURLtoBlob(dataurl) {
  var arr = dataurl.split(','), mime = arr[0].match(/:(.*?);/)[1],
      bstr = atob(arr[1]), n = bstr.length, u8arr = new Uint8Array(n);
  while (n--) {
      u8arr[n] = bstr.charCodeAt(n);
  }
  return new Blob([u8arr], { type: mime });
}

function getFileAccessHttpUrl(avatar,subStr) {
  if(!subStr) subStr = 'http'
  if(avatar && avatar.startsWith(subStr)){
    return avatar;
  }else{
    if(avatar &&　avatar.length>0 && avatar.indexOf('[')==-1){
      if(JSON.parse(localStorage.getItem("CONFIG")).defaultUploadType == "qiniu"){
        return JSON.parse(localStorage.getItem("CONFIG")).qn_base + avatar;
      }else{
        return JSON.parse(localStorage.getItem("CONFIG")).staticDomainURL + avatar;
      }
    }
  }
}

//请求全屏
window.launchIntoFullscreen = function(element) {
  if (element.requestFullscreen) {
    element.requestFullscreen();
  } else if (element.mozRequestFullScreen) {
    element.mozRequestFullScreen();
  } else if (element.webkitRequestFullscreen) {
    element.webkitRequestFullscreen();
  } else if (element.msRequestFullscreen) {
    element.msRequestFullscreen();
  }
}

//退出全屏
window.exitFullscreen = function() {
  if (window.document.exitFullscreen) {
    window.document.exitFullscreen();
  } else if (document.mozCancelFullScreen) {
    window.document.mozCancelFullScreen();
  } else if (document.webkitExitFullscreen) {
    window.document.webkitExitFullscreen();
  }
}

//是否全屏
window.isFullscreen = function(){
  return document.fullscreenElement    ||
         document.msFullscreenElement  ||
         document.mozFullScreenElement ||
         document.webkitFullscreenElement || false;
}

console.log("Teaching Open v2.7");

window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());
gtag('config', 'UA-155190299-2');

var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?5701500c2c4326d51b2652ee8426452e";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();