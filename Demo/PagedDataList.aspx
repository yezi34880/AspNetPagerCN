<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PagedDataList.aspx.cs"  MetaDescription="��ʾ����ʾ���ʹ��AspNetPager��ҳ�ؼ���DataList�ؼ����з�ҳ��" Inherits="PagedDataList_Default"  MasterPageFile="AspNetPager.master" Title="DataList��ҳʾ��"%>

<asp:Content runat="server" ContentPlaceHolderID="main">
        <asp:DataList ID="DataList1" runat="server"  RepeatDirection="Horizontal" RepeatColumns="2" Width="100%">
        <ItemStyle Width="50%"/>
<ItemTemplate>
������ţ�<%#DataBinder.Eval(Container.DataItem,"orderid")%>&nbsp;&nbsp;&nbsp;&nbsp;
�������ڣ�<font color="red"><%#DataBinder.Eval(Container.DataItem,"orderdate","{0:d}")%></font><br>
��˾���ƣ�<%#DataBinder.Eval(Container.DataItem,"companyname")%><br>
��Ա������<%#DataBinder.Eval(Container.DataItem,"employeename")%><br>
<hr>
</ItemTemplate>
        </asp:DataList>
    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        width="100%"></webdiyer:aspnetpager>
</asp:Content>