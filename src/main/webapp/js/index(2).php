var MOBILE_REGX=/^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$/;var SERVER_NAME="http://login.lvmama.com";var isOrNotJumpToUrl=false;var loginJumpUrl="";function loginURL(jumpUrl){isOrNotJumpToUrl=true;loginJumpUrl=jumpUrl;showRadidLoginDiv();}
function mobileRegisterOnBlur(fieldId,successId,errorId){$("#"+successId).html('');$("#"+errorId).html('');$("#loinTextErrorTip").empty();$("#sso_mobileAndEmail").val('');$("#sso_password").val('');var mobile=$("#"+fieldId).val();$("#"+fieldId).data("valid","false");if(MOBILE_REGX.test($("#"+fieldId).val())){$.ajaxSettings.async=false;$.getJSON(SERVER_NAME
+"/nsso/ajax/checkUniqueField.do?jsoncallback=?",{mobile:$("#"+fieldId).val()},function(response){if(response.success==false){$("#"+errorId).html("<font color='red'>该手机已是驴妈妈会员,请在右侧登录</font>");$("#sso_mobileAndEmail").val(mobile);$("#"+fieldId).data("valid","false");return false;}else{$("#"+successId).html("<img src=http://login.lvmama.com/nsso/images/input_ok.gif>");$("#"+fieldId).data("valid","true");return true;}});$.ajaxSettings.async=true;}else{$("#"+errorId).html('<font color=\'red\'>请输入正确的手机号</font>');return false;}
return true;}
function rapidRegister(){if($("#mobileLoginText").data("valid")=="true"){$.getJSON(SERVER_NAME
+"/nsso/ajax/silentRegisterLoginByMobile.do?jsoncallback=?",{mobile:$("#mobileLoginText").val()},function(response){if(response.success==false){}else{$(window.parent.document).find(".bgLogin,.LoginAndReg, #loginDIV").hide();try{$.getJSON(SERVER_NAME+"/nsso/ajax/getUserNo.do?jsoncallback=?",function(req){if(req.success){cmCreateRegistrationTag(req.result,"null","null","null","null","null","null-_-null-_-null-_-null-_-null");}
if(isOrNotJumpToUrl){location.href=loginJumpUrl;}else{loginFormSubmit();}});}catch(exception){if(isOrNotJumpToUrl){location.href=loginJumpUrl;}else{loginFormSubmit();}}}});}else{if($("#mobileLoinTextErrorTip").html()==null||$("#mobileLoinTextErrorTip").html()==''){$("#mobileLoinTextErrorTip").html('<font color=\'red\'>请输入正确的手机号</font>');}}}
function login(){$("#mobileLoginText").val('');$("#mobileLoinTextErrorTip").empty();$("#mobileLoinTextSuccessTip").empty();var mobileOrEMail=$('#sso_mobileAndEmail').val();if(mobileOrEMail==''){$("#loinTextErrorTip").html("<font color='red'>请输入邮箱/手机号/用户名/会员卡</font>");$('#sso_mobileAndEmail').focus();return false;};var password=$('#sso_password').val();if(password==''){$("#loinTextErrorTip").html("<font color='red'>请输入密码</font>");$('#sso_password').focus();return false;};var verifycode=$('#xhsso_verifycode1').val();if(verifycode==''){$("#loinTextErrorTip").html("<font color='red'>请输入验证码</font>");$('#xhsso_verifycode1').focus();return false;};$.getJSON("http://login.lvmama.com/nsso/ajax/login.do?jsoncallback=?",{mobileOrEMail:mobileOrEMail,password:password,verifycode:verifycode},function(data){if(data.success){$(window.parent.document).find(".bgLogin,.LoginAndReg, #loginDIV").hide();try{$.getJSON(SERVER_NAME+"/nsso/ajax/getUserNo.do?jsoncallback=?",function(req){if(req.success){cmCreateRegistrationTag(req.result,"null","null","null","null","null","null-_-null-_-null-_-null-_-null");}
if(isOrNotJumpToUrl){location.href=loginJumpUrl;}else{loginFormSubmit();}});}catch(exception){if(isOrNotJumpToUrl){location.href=loginJumpUrl;}else{loginFormSubmit();}}}else{$("#loinTextErrorTip").html("<font color='red'>"+data.errorText+"</font>");}});}
function tipsWindow(obj,screenBg){$(".dialog-close").click();pandora.dialog({title:"登录遇到问题？",width:"500px",content:$("#tipsWindow_n")});}
function closeMsg(){$(".dialog-close").click();showLogin();}
function completeLogin(){$.post("/check/login.do",null,function(dt){var result=eval("("+dt+")");if(result){if(isOrNotJumpToUrl){location.href=loginJumpUrl;}else{loginFormSubmit();}}else
{pandora.alert("您还没有登录成功");}});}
$("#sso_password").keyup(function(e){if(e.keyCode==13){if($("#sso_mobileAndEmail").val()!=""&&$("#sso_password").val()!=""){login();}}});function refreshCheckCode(s){var elt=document.getElementById(s);elt.src=elt.src+"?_="+(new Date).getTime();}
function showRadidLoginDiv(){pandora.dialog({title:"快速预订 / 登录",width:"720px",content:$("#rapidLoginDialog")});}
function cooperationRegisterLogin(){$.getJSON("http://login.lvmama.com/nsso/ajax/registerLoginByCooperationCache.do?jsoncallback=?",{},function(json){if(json.success){if(isOrNotJumpToUrl){location.href=loginJumpUrl;}else{loginFormSubmit();}}else{showRadidLoginDiv();}});}
function showLogin(callback){window.loginFormSubmit=callback;var cooperationCacheAccount;var cooperationType;var arrStr=document.cookie.split("; ");for(var i=0;i<arrStr.length;i++){var temp=arrStr[i].split("=");if(temp[0]=="cooperationCacheAccount"){cooperationCacheAccount=unescape(temp[1]);}
if(temp[0]=="orderFromChannel"){cooperationType=unescape(temp[1]);}
if(cooperationCacheAccount!=null&&cooperationCacheAccount!=""&&cooperationType!=null&&cooperationType!=""){break;}}
if(cooperationCacheAccount!=null&&cooperationCacheAccount!=""&&cooperationType!=null&&cooperationType=="qqcb"){cooperationRegisterLogin();}else{showRadidLoginDiv();}}
var html_yg="<div id=\"rapidLoginDialog\" class=\"pop_loginner\" style=\"display:none;\">   "
+"  <div class=\"contLogin\" style=\"padding:0px 10px\">"
+"      <div class=\"contLeft\">     "
+"          <div class=\"titleUser\">非会员快速预订</div>   "
+"          <p class=\"quick-area\">"
+"              <span class=\"inputName\">手机号：</span><span class=\"inputValue\"><input  "
+"                  name=\"mobileLoginText\" type=\"text\" id=\"mobileLoginText\"             "
+"                  onblur=\"mobileRegisterOnBlur('mobileLoginText','mobileLoinTextSuccessTip','mobileLoinTextErrorTip')\" /><span   "
+"                  id=\"mobileLoinTextSuccessTip\"></span>                             "
+"              </span><span id=\"mobileLoinTextErrorTip\"></span>                  "
+"          </p>"
+"          <p>             "
+"              <span class=\"inputName\">&nbsp;</span><span class=\"inputValue\"><a      "
+"                  class=\"quickBuy\" onclick=\"rapidRegister()\"                       "
+"                  href=\"javascript:void(0)\"><img                                      "
+"                      src=\"http://pic.lvmama.com/img/order/quickBuy.gif\" alt=\"快速预订\"   "
+"                      style=\"cursor:pointer;\" />        "
+"              </a>                            "
+"              </span>               "
+"          </p>               "
+"          <p>              "
+"              <span class=\"inputValue\"><em class=\"contTsInfo\">我们会将您注册为驴妈妈会员，手机号为您的用户名，密码将通过免费短信发送到您手机。</em>   "
+"              </span>    "
+"          </p>       "
+"      </div>      "
+"      <div class=\"contRight\">     "
+"          <div class=\"titleUser\">会员登录后预订</div>  "
+"          <p class=\"mb-10\">                      "
+"              <span class=\"inputName\">账户：</span><span class=\"inputValue\"><input   "
+"                  type=\"text\" name=\"mobileOrEMail\" id=\"sso_mobileAndEmail\" value=\"\" />   "
+"              </span>                                                                   "
+"          </p>               "
+"          <p class=\"mb-10\">     "
+"              <span class=\"inputName\">密码：</span><span class=\"inputValue\"><input  "
+"                  name=\"password\" id=\"sso_password\" type=\"password\" />          "
+"              </span>                                                        "
+"          </p>                     "
+"          <p>                   "
+"              <span class=\"inputName\">验证码：</span><span class=\"inputValue\"><input  "
+"                  style=\"width:80px;margin-right:5px;\" type=\"text\" name=\"verifycode\"   "
+"                  id=\"xhsso_verifycode1\"><img id=\"image\"                                "
+"                  src=\"http://login.lvmama.com/nsso/account/checkcode.htm\" /> <a    "
+"                  href=\"#\" class=\"link_blue\"                                    "
+"                  onClick=\"refreshCheckCode('image');return false;\">换一张</a>     "
+"              </span>         "
+"          </p>          "
+"          <p id=\"loinTextErrorTip\"></p>   "
+"          <p>                           "
+"              <span class=\"inputName\">&nbsp;</span><span class=\"inputValue\"><a  "
+"                  class=\"quickBuy\" href=\"javascript:void(0)\" onclick=\"login()\"><img "
+"                      src=\"http://pic.lvmama.com/img/order/LoginAndBuy.gif\"          "
+"                      alt=\"登录，继续订购\" onclick=\"login()\" style=\"cursor:pointer;\" /> "
+"              </a><a class=\"findPass\"                                             "
+"                  href=\"http://login.lvmama.com/nsso/findpass/index.do\"       "
+"                  target=\"_blank\">忘记密码？</a>                   "
+"              </span>      "
+"          </p>         "
+"               "
+"          <div class=\"weiboLogin\"> "
+"              <div class=\"weiboH1\">   "
+"                  还不是驴妈妈会员？<a class=\"freeUser\"   "
+"                      href=\"http://login.lvmama.com/nsso/register/registering.do\"   "
+"                      target=\"_blank\">免费注册</a>      "
+"              </div>                      "
+"                         "
+"              <div class=\"weiboBtn\"> "
+"                  <p>                   "
+"                      <label class=\"login_lbl\">使用合作网站帐号登录</label> <a  "
+"                          class=\"weiboBtnA login_conQQ\"                     "
+"                          href=\"http://login.lvmama.com/nsso/cooperation/tencentQQUnionLogin.do?isRefresh=false\""
+"                          target=\"_unionlogin\"                                                                 "
+"                          onclick=\"tipsWindow('tipsWindow','bgColor');\">QQ</a> <a     "
+"                          class=\"weiboBtnA login_conBD\"                         "
+"                          href=\"http://login.lvmama.com/nsso/cooperation/baiduTuanUnionLogin.do?isRefresh=false\"  "
+"                          target=\"_unionlogin\"         "
+"                          onclick=\"tipsWindow('tipsWindow','bgColor');\"> 百度</a> "
+"                  </p>           "
+"                  <a class=\"weiboBtnA login_conSN\"     "
+"                      href=\"http://login.lvmama.com/nsso/cooperation/sinaUnionLogin.do?isRefresh=false\" "
+"                      target=\"_unionlogin\" onclick=\"tipsWindow('tipsWindow','bgColor');\">新浪微博</a>   "
+"                          "
+"                  <a class=\"weiboBtnA login_conALP\"    "
+"                      href=\"http://login.lvmama.com/nsso/cooperation/alipayUnionLogin.do?isRefresh=false\"  "
+"                      target=\"_unionlogin\" onclick=\"tipsWindow('tipsWindow','bgColor');\">支付宝</a>     "
+"                  <a class=\"weiboBtnA login_conKX\"      "
+"                      href=\"http://www.kaixin001.com/login/connect.php?appkey=85704812783077bafc036569af59c655&amp;re=/nsso/cooperation/kaixinUnionLogin.do&amp;t=25\"  "
+"                      target=\"_blank\" style=\"padding-left:22px;\">开心网</a> <a   "
+"                      class=\"weiboBtnA login_conSD\"                            "
+"                      href=\"http://login.lvmama.com/nsso/cooperation/sndaUnionLogin.do?isRefresh=false\"   "
+"                      target=\"_unionlogin\" onclick=\"tipsWindow('tipsWindow','bgColor');\">盛大</a>     "
+"              </div>     "
+"          </div>    "
+"      </div>    "
+"  </div>     "
+"</div>     "
+"<!--inner-->   "
+"<style>"
+"/*弹出提示层*/"
+"#tipsWindow_n {display: none;}"
+"#tipsWindow_n img {vertical-align: middle;margin-top: -3px;}"
+"#tipsWindow_n h3 {font-size: 14px;font-weight: bold;line-height: 30px;border-bottom: 1px solid #D8DFEA;}"
+"#tipsWindow_n strong {font-weight: bold;display: block;}"
+"#tipsWindow_n p {color: #666;line-height: 20px;padding: 0;ertical-align: middle;}"
+"#tipsWindow_n .tbtn {text-align: center;padding: 10px 0 10px;}"
+"#tipsWindow_n span {position: absolute;right: 20px;top: 20px;cursor: pointer;ertical-align: middle;}"
+"#tipsWindow_n input {cursor: pointer;margin: 0 15px;}"
+"#mobileLoinTextErrorTip font {margin-left: 0;}"
+"</style>      "
+"<div id=\"tipsWindow_n\">   "
+"  <p>                   "
+"      <img src=\"http://pic.lvmama.com/img/icons/warning.gif\" />&nbsp;请在联合登录前不要关闭此窗口。完成登录后根据您好的情况点击下面的按钮：  "
+"  </p>       "
+"  <strong>请在新开网页上完成登录后再选择。</strong>  "
+"  <div class=\"tbtn\">                       "
+"      <input name=\"completePayBtn\" type=\"button\" value=\"已完成登录\"  "
+"          id=\"completePayBtn\" onclick='completeLogin()' /><input type=\"button\"    "
+"          value=\"登录遇到问题\"                                                         "
+"          onclick=\"javascript:window.open('http://www.lvmama.com/public/reg_and_login')\" />   "
+"  </div>   "
+"  <a href=\"javascript:void(0);\" onclick=\"closeMsg();\">返回重新选择登录方式</a>    "
+"</div>     ";$(function(){$("body").append(html_yg);});