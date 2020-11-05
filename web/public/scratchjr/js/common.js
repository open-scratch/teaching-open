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

window.getQiniuToken = function() {
  var qn_token;
  $.ajax({
    url: '/api/common/qiniu/getToken',
    beforeSend: function(request) {
      request.setRequestHeader('X-Access-Token', $.cookie('ACCESS_TOKEN'))
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