function handleKeyDown(e) {
  console.log(e.keyCode + "-" + e.key)
  if (e.target !== document && e.target !== document.body) return;
  vm.postIOData("keyboard", {
    keyCode: e.keyCode,
    key: e.key,
    isDown: true,
  });
  if (
    e.keyCode === 32 || // 32=space
    (e.keyCode >= 37 && e.keyCode <= 40)
  ) {
    // 37, 38, 39, 40 are arrows
    e.preventDefault();
  }
}
function handleKeyUp(e) {
  vm.postIOData("keyboard", {
    keyCode: e.keyCode,
    key: e.key,
    isDown: false,
  });
  if (e.target !== document && e.target !== document.body) {
    e.preventDefault();
  }
}

// keyboard event
document.addEventListener("keydown", handleKeyDown);
document.addEventListener("keyup", handleKeyUp);


// virtual keyboard event
function regKeyEvent(selector, key, keyCode) {
    console.log("注册按键事件:" + key)
    $(selector)
      .on("touchstart", function(event) {
          console.log(key)
        vm.postIOData("keyboard", {
          keyCode: keyCode,
          key: key,
          isDown: true,
        });
        event.preventDefault();
      });
      $(selector)
      .on("touchend", function() {
        vm.postIOData("keyboard", {
          keyCode: keyCode,
          key: key,
          isDown: false,
        });
      });
  }

  for(var i = 97; i <= 122; i++){
    var code = String.fromCharCode(i)
    if(i == 118){
      $(".letter").append('<p class="key rotate_left button_left" id="" style=\'background: url("image/arrow.png") no-repeat left top;\'></p>')
    }
    $(".letter").append('<div class="key button_'+code+'" style="border: skyblue 3px solid;border-radius: 2rem;text-align: center;margin: 1rem .5rem;"><span style="font-weight: 800;color: skyblue;font-size: 1.5rem;">'+code.toUpperCase()+'</span></div>')
  }
  $(".letter").append('<p class="key rotate_right button_right" id="" style=\'background: url("image/arrow.png") no-repeat left top;\'></p>')
  
  regKeyEvent(".button_space", " ", 32)
  regKeyEvent(".button_down", "ArrowDown", 40)
  regKeyEvent(".button_up", "ArrowUp", 38)
  regKeyEvent(".button_left", "ArrowLeft", 37)
  regKeyEvent(".button_right", "ArrowRight", 39)
//   regKeyEvent(".button_w", "w", 87)
//   regKeyEvent(".button_a", "a", 65)
//   regKeyEvent(".button_s", "s", 83)
//   regKeyEvent(".button_d", "d", 68)

  
  //数字0-9  ascii码 48 - 57    keyCode 48 - 57  
  //字母a - z  ascii码 97 - 122   keyCode 65 - 90
  
  for(var i = 48; i <= 57; i++){
    var num = String.fromCharCode(i)
    regKeyEvent(".button_"+num, num, i)
  }

  for(var i = 97; i <= 122; i++){
    var code = String.fromCharCode(i)
    regKeyEvent(".button_"+code, code, i)
  }

  document.getElementById('keyboardA').addEventListener('touchend', function() {
    console.log('切换到键盘A')
    $('.control_B,.control_C,.control_D,.control_E').hide(function() {
      $('.control_A').css('display', 'flex')
    })
  })

  document.getElementById('keyboardB').addEventListener('touchend', function() {
    console.log('切换到键盘B')
    $('.control_A,.control_C,.control_D,.control_E').hide(function() {
      $('.control_B').css('display', 'flex')
    })
  })

  document.getElementById('keyboardC').addEventListener('touchend', function() {
    console.log('切换到键盘C')
    $('.control_A,.control_B,.control_D,.control_E').hide(function() {
      $('.control_C').css('display', 'flex')
    })
  })

  document.getElementById('keyboardD').addEventListener('touchend', function() {
    console.log('切花到琴键')
    $('.control_A,.control_B,.control_C,.control_E').hide(function() {
      $('.control_D').css('display', 'flex')
    })
  })
  document.getElementById('keyboardE').addEventListener('touchend', function() {
    console.log('切花到字母')
    $('.control_A,.control_B,.control_C,.control_D').hide(function() {
      $('.control_E').css('display', 'flex')
    })
  })