<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recharge.aspx.vb" Inherits="WeChat_Recharge" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
    <title>账户在线充值</title>
   <link href= "CssStyle/Recharge.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="tab-card">
      	<div id="lift-card">
      		<asp:RadioButton ID="rbClinicAcc" runat="server" 
              Checked="true" GroupName="AccType" Text="门诊账户" />
      	</div>
		<div id="right-card">
			<asp:RadioButton ID="rbHospitalAcc" runat="server"  
              Checked="false" GroupName="AccType" Text="住院账户" />
		</div>
	</div>
	<div class="blue-block">
		<div class="circle-rectangle">
			<table cellpadding="0" class="table-size" runat="server" id="tblSummary">
              <tr id="Tr1" runat="server">
                  <th id="_SumRHC0" runat="server"  >范围</th>
                  <th id="_SumRHC1" runat="server"  >账户余额</th>
                  <th id="_SumRHC2" runat="server"  >可用余额</th>
              </tr>
              <tr id="Tr2" runat="server" >
                 <td>
                     <asp:Label ID="_SumR0C0" runat="Server"  Text ="账户"  />
                 </td>
                 <td>
                     <asp:Label ID="_SumR0C1" runat="Server" CssClass="number"/>
                 </td>
                 <td>
                     <asp:Label ID="_SumR0C2" runat="Server"  CssClass="number" />
                 </td>
              </tr>
              <tr id="Tr3"  runat="server">
                 <td>
                     <asp:Label ID="_SumR1C0" runat="Server"  Text ="线上"  />
                 </td>
                 <td>
                     <asp:Label ID="_SumR1C1" runat="Server"  CssClass="number" />
                 </td>
                 <td>
                     <asp:Label ID="_SumR1C2" runat="Server"  CssClass="number" />
                 </td>
              </tr>
              <tr id="Tr4"  runat="server" >
                 <td>
                     <asp:Label ID="_SumR2C0" runat="Server"  Text ="线下" />
                 </td>
                 <td>
                     <asp:Label ID="_SumR2C1" runat="Server"  CssClass="number" />
                 </td>
                 <td>
                     <asp:Label ID="_SumR2C2" runat="Server"  CssClass="number" />
                 </td>
              </tr>
          </table>
		</div>
	</div>
    <div class="flex">
        <asp:TextBox ID="tbChargeAmount" runat="server"  Width="50%" CssClass="TextBox "/>
        <asp:Button ID="bStartCharge" runat="server" Text="确认充值" Width="50%"  CssClass="Button" />
    </div>
    <div class="prompt-text">
    【注意】：欢迎随时充值！保持账户有足够余额，可以方便在线申请办理业务。
    从账户退款时会受微信退款政策限制，需要满足政策规定的条件才可能退款成功。以下是微信退款的主要规定：
1、交易时间超过一年的订单无法提交退款!
2、微信支付退款支持单笔交易分多次退款。申请退款总金额不能超过订单金额。 
3、每个支付订单的部分退款次数不能超过50次。
  </div>
  </form>
<script type="text/javascript">
window.onload = function ()
{

	//tab选项卡切换功能
	var guding = document.getElementById ('lift-card');
	var gudings = document.getElementById ('right-card');
	guding.onclick =  function(){
		this.style.borderBottom = '5px solid #ff8e01';
		this.style.color = '#30ada0';
		gudings.style.borderBottom ='0px';
		gudings.style.color = '#cecece';
	}
	gudings.onclick =  function(){
		this.style.borderBottom = '5px solid #ff8e01 ';
		this.style.color = '#30ada0 ';
		guding.style.borderBottom ='0px';
		guding.style.color = '#cecece';
	}
}
</script>
</body>
</html>
